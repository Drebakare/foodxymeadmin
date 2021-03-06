<div class="tab-pane fade" id="withdrawal" role="tabpanel" aria-labelledby="withdrawal-tab">
    <h4 class="font-weight-bold mt-0 mb-4">Withdrawal</h4>
    <div class="row">
        <div class="col-md-12">
            <table class="table">
                <thead>
                    <tr>
                        <th>S/N</th>
                        <th>Amount</th>
                        <th>Date</th>
                        <th>Reference</th>
                        <tbody><?php $x = 1;?>
                            @foreach($withdrawals as $withdraw)
                                <tr>
                                    <td>{{$x}}</td>

                                    <td> &#8358 {{$withdraw->amount}}</td>

                                    <td>{{$withdraw->created_at}}</td>

                                    <td>{{$withdraw->reference}}</td>

                                </tr><?php $x++;?>

                            @endforeach

                        </tbody>
                    </tr>
                </thead>
            </table>
            <div class="text-center">
                <a href="#" class="btn btn-warning" data-toggle="modal" data-target="#withdraw">Withdraw</a>
            </div>
        </div>

    </div>
</div>
