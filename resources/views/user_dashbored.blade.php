<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">User Management</h1>

        <a href="{{ route('insert') }}">Add new post</a><br> <br>

        @if (request()->session()->get('login'))
            <p style="text-align: right;"> Hi, {{ request()->session()->get('name') }} </p>
            <p style="text-align: right;"> <a href="{{ route('logout') }}">Log Out</a></p>
        @else
            <a href="{{ route('login') }}">Login</a><br><br>
            <a href="{{ route('register') }}">register</a>
        @endif
        <br><br>


        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Content</th>
                    <th>Image</th>
                    @if (request()->session()->get('login'))
                        <th>Edits</th>
                        <th>Delete</th>
                    @endif
                </tr>
            </thead>

            <tbody>
                @foreach ($item as $row)
                    <tr>
                        <td>{{ $row->id }}</td>

                        <td>
                            <form action="{{ route('single_post', ['id' => $row->id]) }}" method="GET"
                                style="display:inline;">
                                @csrf
                                @method('GET')

                                <button type="submit"
                                    class="btn btn-link p-0 m-0 align-baseline">{{ $row->title }}</button>
                            </form>
                        </td>


                        <td>
                            <a href="{{ route('productsByCategory', ['id' => $row->category_id]) }}"
                                class="btn btn-link p-0 m-0 align-baseline">
                                {{ $row->category->name }}
                            </a>
                        </td>


                        <td>{{ $row->content }}</td>

                        <td>
                            @if ($row->image)
                                <img src="{{ asset('storage/' . $row->image) }}" alt="Image"
                                    style="max-width: 100px;">
                            @else
                                No Image
                            @endif
                        </td>


                        @if (request()->session()->get('login'))
                            <td>
                                <form action="{{ route('edit', ['id' => $row->id]) }}" method="GET"
                                    style="display:inline;">
                                    @csrf
                                    @method('GET')
                                    <button type="submit" class="btn btn-link p-0 m-0 align-baseline">Edit</button>
                                </form>
                            </td>

                            <td>

                                <form action="{{ route('delete', ['id' => $row->id]) }}" method="POST"
                                    style="display:inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-link p-0 m-0 align-baseline">Delete</button>
                                </form>

                            </td>
                        @endif
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
