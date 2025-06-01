<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Edit Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
    <div class="container mt-5">
        <h2>Edit Post</h2>

        <form action="{{route('do_edit',$result->id)}}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PATCH')

            <input type="text" name="title" value="{{ $result->title }}" class="form-control mb-3" required>

            <textarea name="content" rows="4" class="form-control mb-3" required>{{ $result->content }}</textarea>


            @if ($result->image)
                <div class="mb-3">
                    <p>Current image:</p>
                    <img src="{{ asset('storage/' . $result->image) }}" alt="Image" width="150"
                        class="mb-2">
                </div>
            @endif

            <input type="file" name="image" class="form-control mb-3" />


            <select name="category_id" class="form-select mb-3" required>
                <option value="" disabled>Select Category</option>
                @foreach ($cat_id as $category)
                    <option value="{{ $category->id }}" {{ $result->category_id == $category->id ? 'selected' : '' }}>
                        {{ $category->name }}
                    </option>
                @endforeach
            </select>

            <button type="submit" class="btn btn-primary">Update Post</button>
        </form>
    </div>
</body>

</html>
