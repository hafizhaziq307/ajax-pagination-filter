<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Daerah extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = "daerah";
    protected $primaryKey = "id";
    protected $guarded = [];
}
