<?php

namespace App\Http\Controllers\web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Customer;

class HomeController extends Controller
{
    public function index()
    {

        $category=DB::table('categories')->get();
        $city=DB::table('cities')->get();

        $data=array(
            'categories'=>$category,
            'cities'=>$city,
        );

        return view('web.index')->with($data);
    }

    public function category($name)
    {
        $check=DB::table('categories')->where('name',$name)->first();

        if(!$check){
            return redirect('/');
        }

        $category=DB::table('categories')->get();
        $regions=DB::table('regions')->get();

        $vendors=DB::table('vendors')
        ->select('vendors.*','regions.*','categories.name')
        ->join('regions','regions.idregions','=','vendors.region_id')
        ->join('categories','categories.idcategories','=','vendors.category_id')
        ->where('vendors.status',2)
        ->where('categories.name',$name)
        ->orderBy('vendors.rating','desc')
        ->get();

        $data = array(
            'vendors'=>$vendors,
            'category_name'=>$name,
            'categories'=>$category,
            'regions'=>$regions,

        );
        return view('web.listing')->with($data);
    }

    public function vendorSearch(Request $request){

        $validate = $request->validate([
            'search'=>'required'
        ]);

        $input = $request->search;
        $category=DB::table('categories')->get();
        $regions=DB::table('regions')->get();

        $vendors=DB::table('vendors')->join('regions','regions.idregions','=','vendors.region_id')
        ->join('categories','categories.idcategories','=','vendors.category_id')
        ->where('vendors.store_name','like','%'.$input.'%')
        ->where('vendors.status',2)
        ->orderBy('vendors.rating','desc')
        ->get();

        $data = array(
            'vendors'=>$vendors,
            'categories'=>$category,
            'category_name'=>'Vendors',
            'regions'=>$regions,
        );

        return view('web.listing')->with($data);

    }

    public function regionFilter($region_id)
    {

        $category=DB::table('categories')->get();
        $regions=DB::table('regions')->get();

        $vendors=DB::table('vendors')->join('regions','regions.idregions','=','vendors.region_id')
        ->join('categories','categories.idcategories','=','vendors.category_id')
        ->where('vendors.region_id',$region_id)
        ->where('vendors.status',2)
        ->orderBy('vendors.rating','desc')
        ->get();

        $data = array(
            'vendors'=>$vendors,
            'categories'=>$category,
            'category_name'=>'Vendors',
            'regions'=>$regions,
        );

        return view('web.listing')->with($data);

    }


    public function vendorDetails($name,$id,$vendor)
    {

        $like=false;
        $user_id=false;

        if(Auth::check()){

            $user_id=Auth::user()->id;

        }

        $category=DB::table('categories')->get();
        $regions=DB::table('regions')->get();

        $cartAmount=$this->cartAmount();
        $vendor=DB::table('vendors')
        ->join('regions','regions.idregions','=','vendors.region_id')
        ->join('categories','categories.idcategories','=','vendors.category_id')
        ->join('users','users.id','=','vendors.user_id')
        ->where('vendors.store_name',$vendor)
        ->where('vendors.idvendors',$id)
        ->first();

        $vendorGallery=DB::table('vendorgallery')->where('vendor_id',$id)->get();
        $reviewCount=count(DB::table('vendorsreviews')->where('vendor_id',$id)->get());

        $vendorReview=DB::table('vendorsreviews')->join('customers','customers.idcustomers','=','vendorsreviews.customer_id')->where('vendorsreviews.vendor_id',$id)
        ->orderBy('rating','desc')
        ->limit(3)->get();

        $existCheck=DB::table('vendorslikes')->where('user_id',$user_id)->where('vendor_review_id',$id)->first();
        if($existCheck){
            $like=true;
        }

        $stock_category=DB::table('stockcategories')->where('vendor_id',$id)->get();
        $close = true;
        $now= time()+3600; $time=(int)date('H',$now);
        if($time>=$vendor->open_at and $time<=$vendor->close_at+12){
            $close= false;
        }

        $data = array(
            'vendor'=>$vendor,
            'category_name'=>$name,
            'stockcategories'=>$stock_category,
            'id'=>$id,
            'reviews'=>$vendorReview,
            'like'=>$like,
            'galleries'=>$vendorGallery,
            'reviewCount'=>$reviewCount,
            'close'=>$close,
            'categories'=>$category,
            'regions'=>$regions
        );

        return view('web.detail')->with($data);

    }

    public function login(){

        return view('web.userLogin');
    }

    public function loginPost(Request $request)
    {

        $loginData= $request->validate([

            'email'=>'email|required',
            'password'=>'required'
        ]);

        if(!auth()->attempt($loginData)){
            return redirect('login')->with('error','Invalid Credentials');
        }
        else{

            if(session()->get('CheckoutButNotUnthenticated')){

                return redirect('checkout');
            }

            $role_id=Auth::user()->role_id;
            if($role_id==1){
                return redirect('/');
            }
            elseif($role_id==2){
                return redirect('vendor-account');
            }

        }

    }

    public function register()
    {

        return view('web.userRegister');
    }

    public function registerPost(Request $request)
    {
        $validatedData= $request->validate([

            'address'=>'required',
            'phone_number'=>'required',
            'name'=>'required',
            'email'=>'email|required|unique:users',
            'password'=>'required|confirmed',
        ]);


        $AuthenticationData=array(
            'role_id'=>1,
            'email'=>$request->email,
            'password'=>$request->password
        );

        $AuthenticationData['password']=bcrypt($request->password);

        $user=User::create($AuthenticationData);

        $userData=array(

            'name'=>$request->name,
            'address'=>$request->address,
            'phone_number'=>$request->phone_number,
            'user_id'=>$user->id,
        );

        DB::table('customers')->insert($userData);

        $task=$userData['name'].' just created a user account with FoodXyme';
        $this->audit($task,$user->id);

        return redirect('login')->with('message','Registration Successful!! Kindly login!');



    }

    public function logout()
    {
        Auth::logout();
        session()->flush();
        return redirect('/');
    }

    public function vendorRegister()
    {
        $data=array(
            'regions'=>DB::table('regions')->get(),
            'categories'=>DB::table('categories')->get(),
        );
        return view('web.vendorRegister')->with($data);
    }

    public function vendorRegisterPost(Request $request)
    {

        $validatedData= $request->validate([

            'email'=>'email|required|unique:users',
            'password'=>'required|confirmed',

            'manager_name'=>'required',
            'store_name'=>'required',
            'address'=>'required',
            'phone_number'=>'required',
            'description'=>'required',
            'category_id'=>'required',
            'region_id'=>'required',
            'open_at'=>'required',
            'close_at'=>'required',
        ]);

        $AuthenticationData=array(
            'role_id'=>2,
            'email'=>$request->email,
            'password'=>$request->password
        );

        $AuthenticationData['password']=bcrypt($request->password);

        $user=User::create($AuthenticationData);

        $vendorData=array(
            'manager_name'=>$request->manager_name,
            'store_name'=>$request->store_name,
            'address'=>$request->address,
            'phone_number'=>$request->phone_number,
            'status'=>1, #Pending
            'description'=>$request->description,
            'user_id'=>$user->id,
            'category_id'=>$request->category_id,
            'region_id'=>$request->region_id,
            'open_at'=>$request->open_at,
            'close_at'=>$request->close_at,
        );


        $vendor=DB::table('vendors')->insert($vendorData);
    }


    public function vendorRating(Request $request)
    {
        $vendor_id=$request->vendor_id;
        $ratedIndex=$request->ratedIndex;
        $ratedIndex++;
        $customer_id=$this->user()->idcustomers;

        $data=array(
            'vendor_id'=>$vendor_id,
            'customer_id'=>$customer_id,
            'rating'=>$ratedIndex,
        );


        $customer=DB::table('vendorsreviews')->where('customer_id',$customer_id)->where('vendor_id',$vendor_id)->first();

        if($customer){
            DB::table('vendorsreviews')->where('customer_id',$customer_id)->update(['rating'=>$ratedIndex]);
            $uID=$customer->idvendorsreviews;
        }
        else{

            $rating=DB::table('vendorsreviews')->insertGetId($data);
            $uID=$rating;
        }

        $vendorReviews=DB::table('vendorsreviews')->where('vendor_id',$vendor_id)->get();
        $count=count($vendorReviews);
        $total=0;
        foreach($vendorReviews as $review){
            $total=$total+$review->rating;
        }
        $vendorRating=$total/$count;

        DB::table('vendors')->where('idvendors',$vendor_id)->update(['rating'=>$vendorRating]);

        exit(json_encode(array('id'=>$uID)));


    }

    public function vendorReview(Request $request)
    {
        $validate=$request->validate([
            'review'=>'required'
        ]);

        $vendor_id=$request->vendor_id;
        $customer_id=$this->user()->idcustomers;
        $review=$request->review;

        $data=array(
            'status'=>false,
            'message'=>'Rating is required!!',
            'test'=>$vendor_id,
        );


        $customer=DB::table('vendorsreviews')->where('customer_id',$customer_id)->where('vendor_id',$vendor_id)->first();

        if($customer){

            DB::table('vendorsreviews')->where('customer_id',$customer_id)->update(['review'=>$review]);

            $data=array(
                'status'=>true,
                'message'=>'success!!!'
            );

        }

        exit(json_encode($data));
    }

    public function likeReview(Request $request)
    {
        $id= $request->id;
        $type=$request->type;
        $status=false;

        $user_id=Auth::user()->id;
        $review=DB::table('vendorsreviews')->where('idvendorsreviews',$id)->first();



        $exist=DB::table('vendorslikes')->where('user_id',$user_id)->where('vendor_review_id',$id)->first();

        $like=$review->likes;


        if(!$exist){

            $data=array(
                'vendor_review_id'=>$id,
                'user_id'=>$user_id,
            );
            DB::table('vendorslikes')->insert($data);
            $like=$review->likes+1;


        }

        else{

            if($type==0){
                DB::table('vendorslikes')->where('vendor_review_id',$id)->where('user_id',$user_id)->delete();
                $like=$review->likes-1;
                $status=true;
            }
        }




        DB::table('vendorsreviews')->where('idvendorsreviews',$id)->update(['likes'=>$like]);

        $result= '<i class="icofont-thumbs-up"></i>'.$like;

        $data = array(
            'result'=>$result,
            'status'=>$status,

        );

        exit(json_encode($data));


    }
}
