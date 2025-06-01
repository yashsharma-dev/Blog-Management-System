<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>{{ $result->title }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
    <div class="container mt-5">
        <h1 class="mb-3">{{ $result->title }}</h1>

        <p class="text-muted">
            Category: <strong>{{ $result->category->name  }}</strong> |
            Author: <strong>{{ $result->user->name }}</strong> |
            Published: {{ $result->created_at->format('M d, Y') }}
        </p>

        @if ($result->image)
            <img src="{{ asset('storage/' . $result->image) }}" alt="{{ $result->title }}" class="img-fluid mb-4"
                style="max-height: 400px; object-fit: cover;">
        @endif

        <div class="post-content mb-5">
            {!! nl2br(e($result->content)) !!}
        </div>

        <a href="{{ url()->previous() }}" class="btn btn-secondary">Back</a>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
