<!doctype html>
<html lang="">
<link rel="stylesheet" href="table.css">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dormitory</title>
</head>

<body>
    <h1>Dormitory</h1>
    <hr>
    <h2>Подробная информация о студентах</h2>
    <#list students as student>
        <div class="table-info">
            <p><b>Студент # ${student.id}</b> ${student.lastName}${student.firstName} | <a href="/student/${student.id}">Подробнее...</a></p>
        </div>
    </#list>

    <div class="buttons">
        <form action="/student/create/new" method="get">
            <input type="submit" value="Добавить студента"/>
        </form>
    </div>
</body>

</html>
