<!DOCTYPE html>
<html>
<head>
    <title>UPI Payment Details</title>
</head>
<body>
    <h2>Hello {{ $name }},</h2>
    <p>Please complete your payment using the link below:</p>

    <p><a href="{{ $upi_link }}">{{ $upi_link }}</a></p>

    <p>Thank you for your order!</p>
</body>
</html>
