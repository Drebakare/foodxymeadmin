@extends('Admin.admin_app')
@section('content')
    <div class="row page-titles">
        <div class="col-md-6 col-sm-6 align-self-center">
            <h3>Admin Action</h3>
        </div>
        <div class="col-md-6 col-sm-6 text-right font-12"> <a href="{{route('admin.dashboard')}}">Admin</a>  &gt; Reviews</div>
        <div class="">
            <button class="right-side-toggle waves-effect waves-light bg-primary btn btn-circle btn-sm pull-right ml-10"><i class="ti-settings text-white"></i></button>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex pa-10 no-block row">

                        <div class="col-lg-7 col-md-7 col-sm-7 col p-0">  <div class="text-center">
                                <h4 class="text-muted mb-10 font-14">Total Customers</h4>
                                <h2 class="counter"><span class="counter-count font-50 text-themecolor">{{count($customers)}}</span></h2>
                            </div></div>

                        <div class="col-lg-5 col-md-5 col-sm-5  col p-0">
                            <div class="align-self-center">  <div class="text-center">
                                    <input data-plugin="knob" data-width="93%" data-height="93%" data-linecap=round data-fgColor="#ffc8c9" data-displayInput=false  value="40" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex pa-10 no-block row">

                        <div class="col-lg-7 col-md-7 col-sm-7 col p-0">
                            <div class="text-center">
                                <h4 class="text-muted mb-10 font-14">Total Vendors</h4>
                                <h2 class="counter"><span class="counter-count font-50 text-themecolor">{{count($vendors)}}</span></h2>
                            </div>
                        </div>

                        <div class="col-lg-5 col-md-5 col-sm-5 col p-0">
                            <div class="text-center">
                                <input data-plugin="knob" data-width="93%" data-height="93%" data-linecap=round data-fgColor="#cfcfff" data-displayInput=false  value="40" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" /></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex pa-10 no-block row">

                        <div class="col-lg-7 col-md-7 col-sm-7 col p-0">
                            <div class="text-center">
                                <h4 class="text-muted mb-10 font-14">Total Orders</h4>
                                <h2 class="counter"><span class="counter-count font-50 text-themecolor">{{count($orders)}}</span></h2>
                            </div>
                        </div>

                        <div class="col-lg-5 col-md-5 col-sm-5 col p-0">
                            <div class="text-center"><input data-plugin="knob" data-width="93%" data-height="93%" data-linecap=round data-fgColor="#ffd9bd" data-displayInput=false  value="40" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" /></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">

            <div class="card">
                <div class="card-body">
                    <div class="d-flex pa-10 no-block row">
                        <div class="col-lg-7 col-md-7 col-sm-7 col p-0">
                            <div class="text-center">
                                <h4 class="text-muted mb-10 font-14">Total Bikemen</h4>
                                <h2 class="counter"><span class="counter-count font-50 text-themecolor">{{count($bikemen)}}</span></h2>
                            </div>
                        </div>

                        <div class="col-lg-5 col-md-5 col-sm-5 col p-0">
                            <div class="text-center"><input data-plugin="knob" data-width="93%" data-height="93%" data-linecap=round data-fgColor="#c6f0b1" data-displayInput=false  value="40" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" /></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive">
                                <table id="example23" class="display nowrap table table-hover">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Phone Number</th>
{{--                                        <th>Vendor Amount</th>--}}
                                        <th>Total</th>
                                        <th>Store Name</th>
                                        <th>Status</th>
                                        <th>Date</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($orders as $order)
                                            <tr>
                                                <td>{{$order->name}}</td>
                                                <td><a href="mailto:test@example.com">{{$order->phone_number}}</a></td>
    {{--                                            <td>₦ {{$order->vendor_fee}}</td>--}}
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
                                                <td>{{date('h:i A d-M-Y', strtotime($order->created_at))}}</td>
                                                <td><a href="#" class="pencil-icon"><i class="fa fa-pencil" aria-hidden="true"></i></a> <a href="#" class="delete-icon"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
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
        </div>
    </div>
@endsection