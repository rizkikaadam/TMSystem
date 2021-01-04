<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        table,
        tr,
        td {
            border: 1px solid black;
        }
    </style>
    <title>NC List</title>
</head>

<body>

    <form action="{{ url('/filternc') }}" method="post">
        {{csrf_field()}}
        <select name="nc" id="">
            <option value="1">Example NC List 1</option>
            <option value="2">Example NC List 2</option>
            <option value="3">Example NC List 3</option>
        </select>
        <button type="submit" name="select">Select</button>
    </form>

    @if($data != 0)
    <table>
        <tr>
            <td>No.</td>
            <td>T. Code</td>
            <td>Tool ID</td>
            <td>Tool Type</td>
            <td>Diameter</td>
            <td>Offset Length</td>
            <td>Edge Length</td>
            <td>Under Chuck Length</td>
            <td>Set Profile</td>
            <td>Edge Profile</td>
            <td>Location</td>
            <td>Exp. Life</td>
            <td>Time Use</td>
            <td>Action</td>
        </tr>
        @foreach($dataNC as $att)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $att->Tcode }}</td>
            <td>{{ $att->toolId }}</td>
            <td>{{ $att->toolType }}</td>
            <td>{{ $att->diameter }}</td>
            <td>{{ $att->offsetLength }}</td>
            <td>{{ $att->edgeLength }}</td>
            <td>{{ $att->underChuckLength }}</td>
            <td>{{ $att->setProfile }}</td>
            <td>{{ $att->edgeProfile }}</td>
            <td>{{ $att->location }}</td>
            <td>{{ $att->expLife }}</td>
            <td>{{ $att->timeUse }}</td>
            <td></td>
        </tr>
        @endforeach
    </table>
    @endif

</body>

</html>