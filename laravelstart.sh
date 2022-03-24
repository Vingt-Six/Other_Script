function appblade {
    cat <<- EOF
    <!DOCTYPE html>
    <html lang="fr">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link rel="stylesheet" href="{{ asset('css/app.css') }}">
        </head>
        <body>

            @yield('content')

            <script src="{{ asset('js/app.js') }}"></script>
        </body>
    </html>
EOF
} 

function welcomextend {
    cat <<- EOF
    @extends('layouts/app')
    @section('content')
        @include('partials/home')
    @endsection
EOF
}

echo "Tu veux vraiment créer le projet ?"
read ouinon
if [ "$ouinon" = "oui" ]; then
    echo "nom du model"
    read nameModel
    composer require laravel/ui
    php artisan ui bootstrap
    npm i
    npm run dev
    npm run dev
    php artisan make:model $nameModel -cmr
    mkdir resources/views/layouts
    mkdir resources/views/partials
    mkdir resources/views/pages
    touch resources/views/layouts/app.blade.php
    appblade > resources/views/layouts/app.blade.php
    rm resources/views/welcome.blade.php
    touch resources/views/welcome.blade.php
    touch resources/views/partials/home.blade.php
    welcomextend > resources/views/welcome.blade.php
    php artisan serve
elif [ "$ouinon" = "non" ]; then
    echo "Dommage"
else
    echo "Dommage"
fi