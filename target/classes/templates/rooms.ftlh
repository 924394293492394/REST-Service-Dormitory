<!doctype html>
<html lang="">
<link rel="stylesheet" href="rooms.css">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dormitory</title>
</head>

<body>
    <h1>Dormitory</h1>
    <hr>
    <h2>Подробная информация о комнатах</h2>
    <#list rooms as room>
        <div class="room-info">
            <p><b>Блок ${room.id}</b> Общежитие №${room.idDormitory} | <a href="/room/${room.id}">Подробнее...</a></p>
        </div>
    </#list>
</body>

</html>
