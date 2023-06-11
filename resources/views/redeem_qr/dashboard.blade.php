<!-- First you need to extend the CB layout -->
@extends('crudbooster::admin_template')
@section('content')
<style>

    h1, h2, h3{
        margin: auto;
        max-width: 700px;
    }

    h1{
        font-size: 25px;
    }

    h3{
        font-size: 20px;
    }

    .h-tag{
        margin-bottom: 30px;
        letter-spacing: 1px;
        line-height: 25px;
    }

    .dashboard-section {
        margin: auto;
        background-color: #ffffff;
        box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
        max-width: 1200px;
        text-align: center;
        color: rgb(84, 31, 114);
        border-radius: 10px;
    }


    .dashboard-content{
        padding: 50px 50px;
        position: relative;
    }

    #a-start{
        padding: 15px 30px;
        background: #6c5ce7;
        color: white;
        border-radius: 5px;
    }

    #a-start:hover{
        opacity: 0.7;
    }

    .dashboard-btn{
        margin-top: 60px;
    }

    .welcome-img-section{
        height: 300px;
        max-width: 400px;
        margin: auto;
    }

    #welcome-img {
        height: 300px;
        max-width: 400px;
        position: relative;
        right: 10px;
        filter: drop-shadow(0 0 0.75rem #6c5ce7);    
    }

</style>
<!-- Your custom  HTML goes here -->

<div class="dashboard-section">
    <div class="dashboard-content">
        <img id="welcome-img" src="{{ asset('img/welcome-img.png') }}" alt="">
        <h1 class="h-tag">EGC Dashboard</h1>
        <h3 class="h-tag">"Welcome to your user dashboard! This website enables you to easily test, create, and send email messages along with QR codes, all in one place. Enjoy the convenience and efficiency!"</h3>
        <div class="dashboard-btn">
            <a id="a-start" href="{{ CRUDBooster::adminPath('qr_creations') }}">Start uploading your qr content</a>
        </div>
    </div>
</div>

@endsection