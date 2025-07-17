<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Employee</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://png.pngtree.com/thumb_back/fh260/background/20230527/pngtree-animated-office-on-white-background-with-desk-and-desk-chair-image_2686800.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.94);
            padding: 35px 30px;
            border-radius: 10px;
            width: 450px;
            box-shadow: 0 0 10px rgba(0,0,0,0.25);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #444;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .back-button {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #fff;
            background-color: #007bff;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
        }

        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Add New Employee</h2>
    <form action="/addEmployee" method="post">
        <label for="id">ID:</label>
        <input type="number" name="id" required/>

        <label for="name">Name:</label>
        <input type="text" name="name" required/>

        <label for="role">Role:</label>
        <input type="text" name="role" required/>

        <label for="email">Email:</label>
        <input type="email" name="email" required/>

        <label for="contactNo">ContactNo:</label>
        <input type="number" name="contactNo" required/>

        <label for="age">Age:</label>
        <input type="number" name="age" required/>

        <label for="salary">Salary:</label>
        <input type="number" name="salary" required/>

        <input type="submit" value="Add Employee"/>
    </form>
    <a href="/view" class="back-button">Back to List</a>
</div>

</body>
</html>
