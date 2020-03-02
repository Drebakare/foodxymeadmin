<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }
    public function index()
    {
        $orders = DB::table('ordersummaries')->join('users','users.id','=','ordersummaries.user_id')
            ->join('customers','customers.user_id','=','users.id')
            ->join('vendors','vendors.idvendors','=','ordersummaries.vendor_id')
            ->join('transactions','transactions.order_summaries_id','=','ordersummaries.idordersummaries')
            ->where('ordersummaries.status',1)
            ->select('ordersummaries.*','customers.name','customers.phone_number','vendors.store_name','transactions.reference')
            ->orderBy('ordersummaries.idordersummaries','desc')
            ->get();

        return view('Admin.Pages.order',compact('orders'));

    }

    public function orderDetails($id)
    {
        $orderDetails = DB::table('orderdetails')->join('ordersummaries','orderdetails.order_summaries_id','=','ordersummaries.idordersummaries')
            ->join('stockdetails','stockdetails.idstockdetails','=','orderdetails.stock_details_id')
            ->where('orderdetails.order_summaries_id',$id)
            ->get();
       return view('Admin.Pages.orderdetails',compact('orderDetails'));



    }
}
