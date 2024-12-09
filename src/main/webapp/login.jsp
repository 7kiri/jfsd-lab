<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SignUp</title>
    <link rel="stylesheet" type="text/css" href="css/sstyle.css">
    <style>
        /* Inline CSS for demonstration purposes */
        .invalid {
            border-color: red; /* Red border for invalid input */
            background-color: #ffe6e6; /* Optional: light red background for better visibility */
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Order</h2>
        <div class="form-group">
            <label for="T1">Order ID*</label>
            <input type="text" id="T1" />
        </div>
        <div class="form-group">
            <label for="T2">Product Name*</label>
            <input type="text" id="T2" />
        </div>
        <div class="form-group">
            <label for="T3">Quantity*</label>
            <input type="text" id="T3" />
        </div>
        <div class="form-group">
            <label for="T4">Order Date*</label>
            <input type="text" id="T4" />
        </div>
        <div class="form-group">
            <label for="T5">Customer Name*</label>
            <input type="text" id="T5" />
        </div>
         
        <div class="form-group">
            <button onclick="save()">Save</button>
        </div>
        <div class="form-group">
            <label id="ack"></label>
        </div>
    </div>

    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
    function save() {
        var orderid = document.getElementById("T1").value;
        var productname = document.getElementById("T2").value;
        var quantity = document.getElementById("T3").value; // Variable for re-type password
        var orderdate = document.getElementById("T4").value;
        var customername = document.getElementById("T5").value;
         
        // Ensure none of the fields are empty
        if (!orderid ) {
            alert("Please fill the Order ID.");
            return;
        }
        // Constructing the data object
        var data = JSON.stringify({
            orderid: orderid,
            productname: productname,
            quantity: quantity,
            orderdate: orderdate,
            customername: customername
        });

        var url = "http://localhost:8081/user/signup"; // Endpoint for signup

        callApi("POST", url, data, getResponse);
    }
    </script>
</body>
</html>
