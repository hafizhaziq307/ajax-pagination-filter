<?php

use App\Http\Controllers\DaerahController;
use Illuminate\Support\Facades\Route;

Route::controller(DaerahController::class)->prefix('daerah')->group(function () {
    Route::get('/', 'index')->name('daerah.index');

    // ajax
    Route::get('/getDaerah', 'getDaerah')->name('daerah.getDaerah');
});
