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
    <h2>Заявления на проживание в общежитии</h2>
    <#list appforlivings as appforliving>
        <div class="table-info">
            <p><b>Заявление </b> №${appforliving.id} | <a href="/appforliving/${appforliving.id}">Подробнее...</a></p>
        </div>
    </#list>

    <div class="buttons">
        <form action="/appforliving/create/new" method="get">
            <input type="submit" value="Добавить заявление"/>
        </form>
    </div>
</body>

</html>