<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ordersummary extends Model
{
    protected $fillable = [
      "user_id", "vendor_id", "bikeman_id", "from_region_id", "to_region_id", "status", "vendor_fee", "total_amount", "service_charge"
    ];

    public function orderdetails(){
        return $this->hasOne(Orderdetail::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

}
