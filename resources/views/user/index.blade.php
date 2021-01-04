<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data User</title>

    <style>
        table,
        tr,
        td {
            border: 1px solid black;
        }
    </style>
</head>

<body>
    <a href="{{ url('/addUser') }}">Add User</a>
    <table>
        <tr>
            <td>No.</td>
            <td>Username</td>
            <td>Email</td>
            <td>Position</td>
            <td>Department</td>
            <td>Activity</td>
            <td>#</td>
        </tr>
        @foreach($dataUser as $data)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $data->name }}</td>
            <td>{{ $data->email }}</td>
            <td>{{ $data->position }}</td>
            <td>{{ $data->department }}</td>
            <td>Activity Details</td>
            <td>
                <a href="{{ url('/user/'.$data->id.'/delete') }}">Delete</a>
                <!-- <a href="{{ url('/user/$data->id/edit') }}">Edit</a> -->
            </td>
        </tr>
        @endforeach
    </table>

</body>

</html>