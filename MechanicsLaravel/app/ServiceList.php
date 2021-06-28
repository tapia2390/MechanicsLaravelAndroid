<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceList extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'servicelist';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    /*
    protected $fillable = [
    'cost',
    'previewImageService',
    'statusService_id',
    'mechanic_id',
    'service_id',
    'servicescheduling_id',
    ]; */

    //this field is empty there is nothing to protect
    protected $guarded = [];
}