<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    public function cart(){
        return $this->hasMany(\App\Models\Cart::class);
    }
    public function user(){
        return $this->belongsTo(\App\Models\User::class,'user_id');
    }
}
