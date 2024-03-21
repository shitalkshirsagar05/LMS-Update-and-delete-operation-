<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Book</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.4.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Z1nyDlH4Qk4jOmZC0xBbI+Kxdhcofb6P8q3hGfR2zvPPxNTuByCW+oB22YW8Ap4" crossorigin="anonymous">
</head>
<body>
<form action="/books/edit">
    <div class="container mt-5">
        <h1 class="text-center">Edit Book</h1>
        <div class="row mt-5">
            <div class="col-md-6 offset-md-3">
                <form>
                    <div class="mb-3">
                        <label for="bookId" class="form-label">Book ID</label>
                        <input type="text" class="form-control" id="bookId" required>
                    </div>
                    <div class="mb-3">
                        <label for="bookTitle" class="form-label">Book Title</label>
                        <input type="text" class="form-control" id="bookTitle" required>
                    </div>
                    <div class="mb-3">
                        <label for="bookAuthor" class="form-label">Book Author</label>
                        <input type="text" class="form-control" id="bookAuthor" required>
                    </div>
                    <div class="mb-3">
                        <label for="bookPrice" class="form-label">Book Price</label>
                        <input type="text" class="form-control" id="bookPrice" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Edit Book</button>
                </form>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.4.0/dist/js/bootstrap.min.js" integrity="sha384-lfF1f5nq2v1OizBuo7kGAbyhN26PLkD6zfbG0ZzBbDjIs1VTwU2Q9BcBC0R5xZC0" crossorigin="anonymous"></script>
</body>
</html>
