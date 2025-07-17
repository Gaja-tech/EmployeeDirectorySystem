<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Employee</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://images.unsplash.com/photo-1504384308090-c894fdcc538d') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px 30px;
            border-radius: 10px;
            width: 400px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
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

        input[type="text"], input[type="number"], input[type="hidden"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Edit Employee</h2>
        <form action="/update" method="post">
            <input type="hidden" name="id" value="${employee.id}"/>

            <label for="name">Name:</label>
            <input type="text" name="name" value="${employee.name}" required/>

            <label for="role">Role:</label>
            <input type="text" name="role" value="${employee.role}" required/>

            <label for="email">Email:</label>
            <input type="text" name="email" value="${employee.email}" required/>

            <label for="contactNo">ContactNo:</label>
            <input type="number" name="contactNo" value="${employee.contactNo}" required/>

            <label for="age">Age:</label>
            <input type="number" name="age" value="${employee.age}" required/>

            <label for="salary">Salary:</label>
            <input type="number" name="salary" value="${employee.salary}" required/>

            <input type="submit" value="Update"/>
        </form>
    </div>

</body>
</html>
