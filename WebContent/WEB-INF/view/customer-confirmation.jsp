<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head><title>Customer confirmation success</title></head>

<body>

The customer ${customer.firstName}  ${customer.lastName} is confirmed.
Free passes: ${customer.freePasses}
Postal code: ${customer.postalCode}

</body>
</html>