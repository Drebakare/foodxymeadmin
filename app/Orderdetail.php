<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orderdetail extends Model
{
    protected $fillable = [
      "order_summaries_id", "stock_details_id", "qty"
    ];

    public function ordersummary(){
        return $this->hasOne(Ordersummary::class);
    }

    public static function getAllOrders(){
        $orders = Orderdetail::orderBy('idorderdetails', "desc")->get();
        if (count($orders) >5){
            $orders = $orders->take(5);
        }
        return $orders;
    }
}
