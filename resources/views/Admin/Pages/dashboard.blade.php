@extends('Admin.admin_app')
@section('content')
    <div class="row page-titles">
        <div class="col-md-6 col-sm-6 align-self-center">
            <h3>Reviews</h3>
        </div>
        <div class="col-md-6 col-sm-6 text-right font-12"> <a href="index.html">Admin</a>  &gt; Reviews</div>
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
                                <h4 class="text-muted mb-10 font-14">Total Reviews</h4>
                                <h2 class="counter"><span class="counter-count font-50 text-themecolor">1000</span></h2>
                            </div></div>

                        <div class="col-lg-5 col-md-5 col-sm-5  col p-0">
                            <div class="align-self-center">  <div class="text-center">
                                    <input data-plugin="knob" data-width="93%" data-height="93%" data-linecap=round data-fgColor="#ffc8c9" data-displayInput=false  value="40" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" />

                                </div> </div></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex pa-10 no-block row">

                        <div class="col-lg-7 col-md-7 col-sm-7 col p-0"><div class="text-center">
                                <h4 class="text-muted mb-10 font-14"> Ratings <span class="fa fa-star checked font-11"></span>
                                    <span class="fa fa-star checked font-11"></span>
                                    <span class="fa fa-star checked font-11"></span>
                                    <span class="fa fa-star font-11"></span>
                                    <span class="fa fa-star font-11"></span></h4>
                                <h2 class="counter"><span class="counter-count font-50 text-themecolor">1344</span></h2>

                            </div></div>

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
                                <h4 class="text-muted mb-10 font-14">Shipped Orders</h4>
                                <h2 class="counter"><span class="counter-count font-50 text-themecolor">324</span></h2>
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
                                <h4 class="text-muted mb-10 font-14">Answers & Questions</h4>
                                <h2 class="counter"><span class="counter-count font-50 text-themecolor">1234</span></h2>
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
                    <h4 class="text-center-m">Latest Reviews</h4>
                </div>

                <div class="row m-0 text-center-m">
                    <div class="col-md-1 col-sm-2 text-center"><img src="../assets/images/users/review1.jpg" alt="" title="" class="radius image-boder img-fluid"></div>
                    <div class="col-md-11 col-sm-10">
                        <h2 class="font-15 m-0">Daryl Michaels <span class="font-13 text-themecolor">Product: Mobile Phone</span></h2>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star font-13"></span>
                        <span class="fa fa-star font-13"></span> <span class="red">1 Min ago </span>

                        <p class="mt-5">
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.Cras sit amet nibh libero, in gravida nulla. Nulla vel metu.</p>
                    </div>
                </div>

                <div class="col-md-12">
                    <hr>
                </div>

                <div class="row m-0 text-center-m">
                    <div class="col-md-1 col-sm-2 text-center"><img src="../assets/images/users/review2.jpg" alt="" title="" class="radius image-boder img-fluid"></div>
                    <div class="col-md-11 col-sm-10">
                        <h2 class="font-15 m-0">Nina Williams <span class="font-13 text-themecolor">Product: Mobile Phone</span></h2>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star font-13"></span>
                        <span class="fa fa-star font-13"></span> <span class="red">1 Min ago </span>

                        <p class="mt-5">
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.Cras sit amet nibh libero, in gravida nulla. Nulla vel metu.</p>
                    </div>
                </div>

                <div class="col-md-12">
                    <hr>
                </div>

                <div class="row m-0 text-center-m">
                    <div class="col-md-1 col-sm-2 text-center"><img src="../assets/images/users/review3.jpg" alt="" title="" class="radius image-boder img-fluid"></div>
                    <div class="col-md-11 col-sm-10">
                        <h2 class="font-15 m-0">Brian Dunkst <span class="font-13 text-themecolor">Product: Mobile Phone</span></h2>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star checked font-13"></span>
                        <span class="fa fa-star font-13"></span>
                        <span class="fa fa-star font-13"></span> <span class="red">1 Min ago </span>

                        <p class="mt-5">
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.Cras sit amet nibh libero, in gravida nulla. Nulla vel metu.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection