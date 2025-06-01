<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Futuristic Blog</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&family=Roboto&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #0f0c29, #302b63, #24243e);
            color: white;
            min-height: 100vh;
            overflow-x: hidden;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 40px;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            position: sticky;
            top: 0;
            z-index: 999;
            animation: slideDown 1s ease-in-out;
        }

        @keyframes slideDown {
            from {
                transform: translateY(-100%);
            }

            to {
                transform: translateY(0);
            }
        }

        .logo {
            font-family: 'Orbitron', sans-serif;
            font-size: 28px;
            color: #00ffff;
            letter-spacing: 2px;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 20px;
            position: relative;
        }

        nav a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            position: relative;
            transition: color 0.3s ease;
        }

        nav a::after {
            content: "";
            position: absolute;
            width: 100%;
            height: 2px;
            background: #00ffff;
            left: 0;
            bottom: -5px;
            transform: scaleX(0);
            transform-origin: right;
            transition: transform 0.3s ease;
        }

        nav a:hover::after {
            transform: scaleX(1);
            transform-origin: left;
        }

        .category {
            position: relative;
        }

        .dropdown {
            position: absolute;
            top: 100%;
            left: 0;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 10px;
            padding: 10px;
            display: none;
            flex-direction: column;
            z-index: 999;
            min-width: 150px;
        }

        .category:hover .dropdown,
        .category:focus-within .dropdown {
            display: flex;
        }

        .dropdown a {
            padding: 8px;
            color: white;
            text-decoration: none;
            font-size: 14px;
        }

        .dropdown a:hover {
            background: rgba(0, 255, 255, 0.2);
            border-radius: 6px;
        }

        .login {
            display: flex;
            gap: 10px;
        }

        .login button {
            background: transparent;
            border: 1px solid #00ffff;
            color: #00ffff;
            padding: 6px 12px;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: bold;
        }

        .login button:hover {
            background: #00ffff;
            color: #0f0c29;
        }

        .login button a {
            text-decoration: none;
            color: inherit;
        }

        .product-detail {
            max-width: 900px;
            margin: 60px auto;
            padding: 40px 20px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 20px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .product-detail h1 {
            font-size: 32px;
            color: #00ffff;
            margin-bottom: 10px;
        }

        .product-detail .price {
            font-size: 20px;
            color: #0ff;
            margin: 10px 0;
        }

        .product-detail img {
            width: 100%;
            border-radius: 12px;
            margin-bottom: 20px;
        }

        .product-detail p {
            line-height: 1.7;
            color: #ccc;
        }
    </style>
</head>

<body>
   <header>
    <div class="logo">NEO BLOG</div>
    <nav>
      <ul>
        <li><a href="{{route('home')}}">Home</a></li>
        <li class="category">
          <a href="#">Categories</a>
          <div class="dropdown">
            @foreach ($category as $cat)
            
            <a href="{{route('category_product',['id'=>$cat->id])}}">{{$cat->name}}</a>
            
            @endforeach
          </div>
        </li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
     <div class="login">
       @if (request()->session()->get('login'))
            <p> Hi, {{ request()->session()->get('name') }} </p>
             <a href="{{ route('logout') }}"><button>Log Out</button></a>
             <a href="{{ route('user_dashbored') }}"><button >DASHBORED</button></a>
            
        @else
            <a href="{{ route('login') }}"><button>Login</button></a><br><br>
            <a href="{{ route('register') }}"><button>register</button></a>
        @endif
    </div>
  </header>


    <section class="product-detail">


        <h1>{{ $result->title }}</h1>
        <img src="{{asset('storage/'.$result->image)}}" alt="Product Image">
        <div class="price"> Category: <strong>{{ $result->category->name }}</strong> |<br>
            Author: <strong>{{ $result->user->name }}</strong> |<br>
            Published: {{ $result->created_at->format('M d, Y') }}
        </div>
        <p>
           {{$result->content}}
        </p>
        
    </section>

</body>

</html>
