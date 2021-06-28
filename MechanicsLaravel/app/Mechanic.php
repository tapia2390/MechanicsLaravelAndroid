<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mechanic extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    /* protected $fillable = [
    'email',
    'password',
    'name',
    'surname',
    'identity',
    'phone',
    'profilePicture',
    'gender',
    'latitude',
    'longitude',
    'city_id',
    ]; */

    //this field is empty there is nothing to protect
    protected $guarded = [];
}