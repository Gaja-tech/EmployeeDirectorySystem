<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Directory</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('https://www.shutterstock.com/image-illustration/employees-concept-word-on-folder-260nw-268288193.jpg');
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 10px;
            margin: 40px auto;
            width: 90%;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }

        .top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        h2 {
            color: #333;
            margin: 0;
        }

        .add-button, .logout-button {
            background-color: #007bff;
            color: white;
            padding: 10px 16px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            margin-left: 10px;
        }

        .logout-button {
            background-color: #dc3545;
        }

        .add-button:hover {
            background-color: #0056b3;
        }

        .logout-button:hover {
            background-color: #c82333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #aaa;
            text-align: left;
        }

        th {
            background-color: #0077cc;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        td a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        td a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="top-bar">
        <h2>Employee Directory</h2>
        <div>
            <a href="/add" class="add-button">+ Add Employee</a>
            <a href="/logout" class="logout-button">Logout</a>
        </div>
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Role</th>
            <th>Email</th>
            <th>ContactNo</th>
            <th>Age</th>
            <th>Salary</th>
            <th>Actions</th>
        </tr>

        <c:forEach var="emp" items="${employees}">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.role}</td>
                <td>${emp.email}</td>
                <td>${emp.contactNo}</td>
                <td>${emp.age}</td>
                <td>${emp.salary}</td>
                <td>
                    <a href="/edit/${emp.id}">Edit</a> |
                    <a href="/delete/${emp.id}" onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
