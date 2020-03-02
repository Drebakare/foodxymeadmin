@extends('Admin.admin_app')
@section('content')
    <div class="row page-titles">
        <div class="col-md-6 align-self-center">
            <h3>Order List</h3>
        </div>
        <div class="col-md-6 text-right font-12"> <a href="index.html">Admin</a>  &gt; Order List</div>
        <div class="">
            <button class="right-side-toggle waves-effect waves-light bg-primary btn btn-circle btn-sm pull-right ml-10"><i class="ti-settings text-white"></i></button>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table id="example23" class="display nowrap table table-hover table-striped basic-t">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Phone Number</th>
                                <th>Vendor Amount</th>
                                <th>Total</th>
                                <th>Store Name</th>
                                <th>Status</th>
                                <th>Reference</th>
                                <th>Date</th>
                                <th>Action</th>

                            </tr>
                            </thead>
                            <tbody>
                                @foreach($orders as $order)
                                    <tr>
                                        <td>{{$order->name}}</td>
                                        <td><a href="mailto:test@example.com">{{$order->phone_number}}</a></td>
                                        <td>₦ {{$order->vendor_fee}}</td>
                                        <td>₦ {{$order->total_amount}}</td>
                                        <td><a href="mailto:test@example.com">{{$order->store_name}}</a></td>
                                        <td>
                                            @if($order->status==1)
                                                <p>With Vendor</p>
                                            @elseif($order->status==2)
                                                <p>With Bikemen</p>
                                            @elseif($order->status==3)
                                                <p>Received</p>
                                            @endif
                                        </td>
                                        <td>{{$order->reference}}</td>
                                        <td>{{date('h:i A d-M-Y', strtotime($order->created_at))}}</td>
                                        <td><a href="{{URL::TO('admin/order-details')}}/{{$order->idordersummaries}}" class="pencil-icon"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <!-- ============================================================== -->
                        <!-- End PAge Content -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Right sidebar -->
                        <!-- ============================================================== -->
                        <!-- .right-sidebar -->
                        <div class="right-sidebar">
                            <div class="slimscrollright">
                                <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                                <div class="r-panel-body">
                                    <ul id="themecolors" class="mt-20">
                                        <li><b>With Light sidebar</b></li>
                                        <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                                        <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                                        <li><a href="javascript:void(0)" data-theme="red" class="red-theme">3</a></li>
                                        <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>
                                        <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                                        <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme">6</a></li>
                                        <li class="d-block mt-30"><b>With Dark sidebar</b></li>
                                        <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme working">7</a></li>
                                        <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                                        <li><a href="javascript:void(0)" data-theme="red-dark" class="red-dark-theme">9</a></li>
                                        <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
                                        <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                                        <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme ">12</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Right sidebar -->
                    <!-- ============================================================== -->

                    <!-- ============================================================== -->
                    <!-- End Container fluid  -->
                    <!-- ============================================================== -->
                </div>
            </div>
        </div>
    </div>
@endsection