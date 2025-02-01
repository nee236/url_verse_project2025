# url_verse_project2025
Instructions on how to set up the project for testing on localhost

1.install xampp(xampp-windows-x64-8.1.25-0-VS16-installer) on your computer
2.after installing xammp start your Apache and Mysql
3.Go to xampp/htdocs folder and in drive(C:\xampp\htdocs) path write cmd than cmd terminal will open
4.install composer(v2.8.5) if you not installed
5.on cmd C:\xampp\htdocs>composer create-project laravel/laravel url_verse  (create laravel 10 project)
6.copy and replace (app, config, database, resources, routes) folder from url_verse_project2025
7.import the databse file in mysql
8.Go to xampp/htdocs folder and in drive(C:\xampp\htdocs\url_verse) path write cmd than cmd terminal will open
9.On cmd - C:\xampp\htdocs\url_verse>php artisan serve
