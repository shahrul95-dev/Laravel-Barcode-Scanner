<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About System

This system is a membership verification that verify by using a barcode. Only barcode that generated by this system are allow to scan. Otherwise, the scanner will be not response. Please make sure that your server are running with Laravel version 8.x before installation. Follow this steps on how to install :

- Install Laravel by referring to official Laravel documentation at (https://laravel.com/docs/8.x/).
- Upload this file to your local server.
- Run command prompt and change directory to the Membership folder.
- Run <code>php artisan serve</code>.
- Modify your database details at .env file.
- Create database called membership
- Run <code>php artisan migrate</code>
- (Optional). To generate a dummy data, run <code>php artisan db:seed</code>

*If the database is unsuccessful to install. You can just manually import the .SQL file given into your MySQL database server.


## Website Manual Guide

<object data="http://www.qlicknpay.com/mrf_guide.pdf" type="application/pdf" width="700px" height="700px">
    <embed src="http://www.qlicknpay.com/mrf_guide.pdf">
        <p>This browser does not support PDFs. Please download the PDF to view it: <a href="http://www.qlicknpay.com/mrf_guide.pdf">Download PDF</a>.</p>
    </embed>
</object>



