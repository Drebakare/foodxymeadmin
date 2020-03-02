<?php

namespace App\Http\Controllers\Admin;
use App\Bikeman;
use App\Customer;
use App\Http\Controllers\Controller;
use App\Orderdetail;
use App\Ordersummary;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function Dashboard(){
        $customers = Customer::getAllCustomers();
        $vendors = User::getAllVendors();
        $bikemen = Bikeman::getAllBikemen();

        $orders = DB::table('ordersummaries')->join('users','users.id','=','ordersummaries.user_id')
            ->join('customers','customers.user_id','=','users.id')
            ->join('vendors','vendors.idvendors','=','ordersummaries.vendor_id')
            ->where('ordersummaries.status',1)
            ->select('ordersummaries.*','customers.name','customers.phone_number','vendors.store_name')
            ->orderBy('ordersummaries.idordersummaries','desc')
            ->limit(5)
            ->get();

        $data = array(
            'customers'=>$customers,
            'vendors'=>$vendors,
            'bikemen'=>$bikemen,
            'orders'=>$orders,
        );
        return view('Admin.Pages.dashboard',$data);
    }

    public function loginForm(){
        return view('Admin.Pages.login');
    }

    public function Logout(){
        Auth::logout();
        return redirect(route('admin.login'))->with('success', 'We will be happy to have you back');
    }
    public function Login(Request $request){
        $this->validate($request, [
            "email" => 'bail|required',
            "password" => 'bail|required'
        ]);
        $check_user = User::checkUser($request->email);
        if ($check_user){
            $status = Auth::attempt(["email" => $request->email, "password" => $request->password]);
            if ($status){
                return redirect(route('admin.dashboard'));
            }
            else{
                return redirect()->back()->with('failure', "email or password not correct");
            }
        }
        else{
            return redirect()->back()->with('failure', "email does not exist, kindly register");
        }
    }
}
