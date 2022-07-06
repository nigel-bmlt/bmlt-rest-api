<?php

namespace App\Providers;

use App\Models\NaComdefUser;
use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\ServiceProvider;
use Laravel\Fortify\Fortify;

class FortifyServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // turn off all the default fortify routes
        Fortify::ignoreRoutes();
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        RateLimiter::for('login', function (Request $request) {
            $login_string = (string) $request->login_string;

            return Limit::perMinute(5)->by($login_string.$request->ip());
        });

        Fortify::authenticateUsing(function (Request $request) {
            $user = NaComdefUser::where('login_string', $request->login_string)->first();
            // check password from request against the password_string from bmlt
            if ($user &&
                password_verify($request->password, $user->password_string)) {
                return $user;
            }
        });
    }
}
