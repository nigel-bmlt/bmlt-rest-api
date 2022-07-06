<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NaComdefServiceBody extends Model
{
    protected $table = 'na_comdef_service_bodies';
    protected $primaryKey = 'id_bigint';
    protected $keyType = 'integer';
    public $incrementing = true;
}