<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Data User | Add</title>
</head>

<body>
    <form action="{{ url('/prosesAddUser') }}" method="post">
        {{csrf_field()}}
        <input type="text" placeholder="Name" name="name">
        <input type="text" placeholder="Email" name="email">
        <select name="position" id="">
            <option value="">Position</option>
            <option value="Admin">Admin</option>
            <option value="Operator">Operator</option>
        </select>
        <select name="department" id="">
            <option value="">Departement</option>
            <option value="IT">IT</option>
            <option value="Manufacture">Manufacture</option>
        </select>
        <input type="password" placeholder="Password" name="password">
        <input type="password" placeholder="Confirm Password" name="confirmPassword">
        <button type="submit">Save</button>
    </form>

</body>

</html>