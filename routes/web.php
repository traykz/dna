<?php

use Illuminate\Support\Facades\Route;

use App\Models\AdnMutation;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
     return 'welcome';
});


Route::post('mutation', [\App\Http\Controllers\MobileController::class, 'getMutation']);
Route::get('stats',[\App\Http\Controllers\MobileController::class, 'getStats']);

