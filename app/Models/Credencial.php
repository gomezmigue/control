<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Credencial extends Model
{
    use HasFactory;
    protected $table = 'tdcredencial';
   // protected $dates = ['nombre','calle'];
    protected $primary_key = 'idtdcredencial';






}
