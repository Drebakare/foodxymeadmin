<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [

      'email', 'password', "role_id",

    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function role(){
        return $this ->hasOne(Role::class);
    }

    public function vendor(){
        return $this-> hasOne(Vendor::class);
    }

    public function ordersummaries(){
        return $this->hasMany(Ordersummary::class);
    }

    public function customer(){
        return $this-> hasOne(Customer::class);
    }

    public static function checkUser($email){
        $check_status = User::where('email',$email)->first();
        if ($check_status){
            return true;
        }
        else{
            return false;
        }
    }

    public static function getAllVendors(){
        $vendors = User::where('role_id', 2)->get();
        return $vendors;
    }
}
