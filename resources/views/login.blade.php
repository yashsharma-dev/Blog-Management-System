<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        

        .form-box {
            max-width: 300px;
            background: #f1f7fe;
            overflow: hidden;
            border-radius: 16px;
            color: #010101;

        }

        .form {
            position: relative;
            display: flex;
            flex-direction: column;
            padding: 32px 24px 24px;
            gap: 16px;
            text-align: center;
        }

       
        .title {
            font-weight: bold;
            font-size: 1.6rem;
        }

        .subtitle {
            font-size: 1rem;
            color: #666;
        }

       
        .form-container {
            overflow: hidden;
            border-radius: 8px;
            background-color: #fff;
            margin: 1rem 0 .5rem;
            width: 100%;
        }

        .input {
            background: none;
            border: 0;
            outline: 0;
            height: 40px;
            width: 100%;
            border-bottom: 1px solid #eee;
            font-size: .9rem;
            padding: 8px 15px;
        }

        .form-section {
            padding: 16px;
            font-size: .85rem;
            background-color: #e0ecfb;
            box-shadow: rgb(0 0 0 / 8%) 0 -1px;
        }

        .form-section a {
            font-weight: bold;
            color: #0066ff;
            transition: color .3s ease;
        }

        .form-section a:hover {
            color: #005ce6;
            text-decoration: underline;
        }

    
        .form button {
            background-color: #0066ff;
            color: #fff;
            border: 0;
            border-radius: 24px;
            padding: 10px 16px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background-color .3s ease;
        }

        .form button:hover {
            background-color: #005ce6;
        }
    </style>
</head>

<body>
    <center>

        <div class="form-box">
            <form class="form" action="{{route('do_login')}}" method="POST" >
                @csrf
                @method('POST')

                 <span class="alert alert-danger" style="padding: 0px">{{ $msg }}</span><Br><Br>

                <span class="title">Login</span>
                <span class="subtitle">Login your account</span>
                <div class="form-container">
                    <input type="email" class="input" placeholder="Email" name="email">
                    <input type="password" class="input" placeholder="Password" name="password">
                </div>
                <button>Login</button>
            </form>
            <div class="form-section">
                <p>Create new account <a href="">Sign up</a> </p>
            </div>
        </div>
    </center>
    </body>

</html>
