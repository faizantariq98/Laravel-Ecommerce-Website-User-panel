<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('main.home');
// });
Route::get('/about', function () {
    return view('main.about');
});


// Route::get('/checkout', function () {
//     return view('main.checkout');
// });
Route::get('/contact',[App\Http\Controllers\ContactusController::class, 'create']);

Route::post('/contactstore',[App\Http\Controllers\ContactusController::class, 'store']);


Route::get('/faq', function () {
    return view('main.faq');
});
Route::get('/privacy', function () {
    return view('main.privacy');
});
Route::get('/bakery', function () {
    return view('main.kitchen.bakery');
});
Route::get('/beverage', function () {
    return view('main.kitchen.beverage');
});
Route::get('/dryfruits', function () {
    return view('main.kitchen.dryfruits');
});

Route::get('/jam', function () {
    return view('main.kitchen.jam');
});
Route::get('/oil', function () {
    return view('main.kitchen.oil');
});
Route::get('/pasta', function () {
    return view('main.kitchen.pasta');
});

Route::get('/pickle', function () {
    return view('main.kitchen.pickle');
});
Route::get('/rice', function () {
    return view('main.kitchen.rice');
});
Route::get('/sauces', function () {
    return view('main.kitchen.sauces');
});
Route::get('/snacks', function () {
    return view('main.kitchen.snacks');
});
Route::get('/sweets', function () {
    return view('main.kitchen.sweets');
});
Route::get('/cleaner', function () {
    return view('main.household.cleaner');
});
Route::get('/detergent', function () {
    return view('main.household.detergents');
});
Route::get('/repellent', function () {
    return view('main.household.repellent');
});
Route::get('/about', function () {
    return view('main.about');
});



Auth::routes();
// Route::get('/register', function () {
//     return view('/home');
// })->name('register');
// Route::get('/login', function () {
//     return view('main.home');
// })->name('login');

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('main.home');
Route::get('/bakery',[App\Http\Controllers\BakerysController::class, 'index'])->name('main.kitchen.bakery');
Route::get('/coffee',[App\Http\Controllers\CoffeeController::class, 'index'])->name('main.kitchen.coffee');
Route::get('/dry',[App\Http\Controllers\DryController::class, 'index'])->name('main.kitchen.dryfruits');
Route::get('/sweets',[App\Http\Controllers\SweetController::class, 'index'])->name('main.kitchen.sweets');
Route::get('/masalas',[App\Http\Controllers\MasalaController::class, 'index'])->name('main.kitchen.masala');
Route::get('/jams',[App\Http\Controllers\JamController::class, 'index'])->name('main.kitchen.jam');
Route::get('/pickles',[App\Http\Controllers\PickleController::class, 'index'])->name('main.kitchen.pickle');
Route::get('/pastas',[App\Http\Controllers\PastaController::class, 'index'])->name('main.kitchen.pasta');
Route::get('/rice',[App\Http\Controllers\RiceController::class, 'index'])->name('main.kitchen.rice');
Route::get('/sauces',[App\Http\Controllers\SauceController::class, 'index'])->name('main.kitchen.sauces');
Route::get('/snack',[App\Http\Controllers\SnackController::class, 'index'])->name('main.kitchen.snacks');
Route::get('/oil',[App\Http\Controllers\OilController::class, 'index'])->name('main.kitchen.oil');
Route::get('/detergent',[App\Http\Controllers\DetergentController::class, 'index'])->name('main.household.detergents');
Route::get('/cleaner',[App\Http\Controllers\CleanerController::class, 'index'])->name('main.household.cleaner');
Route::get('/repellent',[App\Http\Controllers\ReppelentController::class, 'index'])->name('main.household.repellent');
Route::get('/floors',[App\Http\Controllers\FloorController::class, 'index'])->name('main.household.floors');
Route::get('/dishwashs',[App\Http\Controllers\DishController::class, 'index'])->name('main.household.dishwash');
Route::get('/cleaning',[App\Http\Controllers\CleaningController::class, 'index'])->name('main.household.cleaning');
Route::get('bakery/{baker}',[App\Http\Controllers\BakerysController::class, 'show']);
Route::get('coffee/{coffe}',[App\Http\Controllers\CoffeeController::class, 'show']);
Route::get('dry/{dry}',[App\Http\Controllers\DryController::class, 'show']);
Route::get('sweets/{sweet}',[App\Http\Controllers\SweetController::class, 'show']);
Route::get('masalas/{masala}',[App\Http\Controllers\MasalaController::class, 'show']);
Route::get('jams/{jam}',[App\Http\Controllers\JamController::class, 'show']);
Route::get('pickles/{pickle}',[App\Http\Controllers\PickleController::class, 'show']);
Route::get('pastas/{pasta}',[App\Http\Controllers\PastaController::class, 'show']);
Route::get('rice/{rice}',[App\Http\Controllers\RiceController::class, 'show']);
Route::get('sauces/{sauce}',[App\Http\Controllers\SauceController::class, 'show']);
Route::get('snack/{snack}',[App\Http\Controllers\SnackController::class, 'show']);
Route::get('oil/{oil}',[App\Http\Controllers\OilController::class, 'show']);
Route::get('detergent/{deter}',[App\Http\Controllers\DetergentController::class, 'show']);
Route::get('cleaner/{clean}',[App\Http\Controllers\CleanerController::class, 'show']);
Route::get('floors/{floor}',[App\Http\Controllers\FloorController::class, 'show']);
Route::get('repellent/{repel}',[App\Http\Controllers\ReppelentController::class, 'show']);
Route::get('dishwashs/{dishwash}',[App\Http\Controllers\DishController::class, 'show']);
Route::get('cleaning/{clean}',[App\Http\Controllers\CleaningController::class, 'show']);

Route::post('/Cart/add',
    [App\Http\Controllers\ShopController::class, 'add']);

    Route::get('/checkout',
    [App\Http\Controllers\ShopController::class, 'Cart']);

    Route::post('/cart/delete/{id}',
    [App\Http\Controllers\ShopController::class, 'delete']);

    Route::post('/cart/reduce/{id}',
    [App\Http\Controllers\ShopController::class, 'reduce']);

    Route::post('/cart/increase/{id}',
    [App\Http\Controllers\ShopController::class, 'increase']);
    

    // Route::post('/finalcheckout',
    // [App\Http\Controllers\OrderController::class, 'store']);

    Route::group(['middleware' => 'auth'], function(){
    Route::post('/finalcheckout',
        [App\Http\Controllers\OrderController::class, 'store']);

    Route::get('/payment',[App\Http\Controllers\ShopController::class, 'payment']);

    

    Route::get('/profile', function () {
        return view('main.user.profile');
    });

    Route::post('updateprofile',[App\Http\Controllers\MyaccountController::class, 'updateprofile']);

    Route::post('addwishlist/{id}',[App\Http\Controllers\MyaccountController::class, 'addwishlist']);

    Route::get('/userorder',[App\Http\Controllers\MyaccountController::class, 'order']);
    Route::get('/wishlist',[App\Http\Controllers\MyaccountController::class, 'getwishlist']);

    Route::post('/rating',[App\Http\Controllers\MyaccountController::class, 'saverating']);
    });

    Route::post('/userdata',[App\Http\Controllers\ShopController::class, 'userdata']);
    Route::get('/email/verify', function () {
        return view('auth.verify-email');
    })->middleware('auth')->name('verification.notice');

    use Illuminate\Foundation\Auth\EmailVerificationRequest;
    use Illuminate\Http\Request;

    Route::get('/email/verify/{id}/{hash}',[App\Http\Controllers\MyaccountController::class, 'Everfication'])->middleware(['signed'])->name('verification.verify');
    Route::get('getProducts', [App\Http\Controllers\MyaccountController::class, 'getProducts']);

    Route::get('product/{baker}',[App\Http\Controllers\BakerysController::class, 'show']);

    Route::post('/product/list',[App\Http\Controllers\ProductController::class, 'index']);