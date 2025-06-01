<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Create Post</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
  <div class="container mt-5">
    <h2>Create Post</h2>

    <form action="{{route('do_insert')}}" method="POST" enctype="multipart/form-data">
      @csrf

      <input type="text" name="title" placeholder="Title" class="form-control mb-3" required>

      <select name="category_id" class="form-select mb-3" required>
        <option value="" disabled>Select Category</option>
        @foreach($categories as $category)
          <option value="{{ $category->id }}">{{ $category->name }}</option>
        @endforeach
      </select>

      <textarea name="content" rows="4" placeholder="Content" class="form-control mb-3" required></textarea>

      <input type="file" name="image" class="form-control mb-3" />

      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
</body>
</html>
