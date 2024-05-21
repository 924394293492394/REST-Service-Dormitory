<!DOCTYPE html>
<html lang="en">

<style>

    body {
        font-family: Arial, sans-serif;
        background-image: url('https://th.bing.com/th/id/OIG4..odsdqafGR6zSFKtXmYq?pid=ImgGn');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    h1 {
        color: #ff6600;
        text-align: center;
        margin-top: 20px;
    }

    h4 {
        text-align: center;
    }

    hr {
        border: none;
        border-top: 1px solid #ccc;
        margin: 20px 0;
    }

    .room-info {
        background-color: #DEB887;
        border: 1px solid #D2691E;
        border-radius: 5px;
        padding: 10px;
        margin: 10px auto;
        max-width: 600px;
        display: inline-block;
        margin-right: 10px;
        transition: background-color 0.2s ease;
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

           .buttons {
            display: flex;
            justify-content: center;
        }

        .buttons input {
            cursor: pointer;
            height: 30px;
            text-align: center;
            background-color: #ff6600;
            color: #FFFF00;
            transition: background-color 0.3s ease;
            width: 100%;
            margin: 10px 10;
        }

        .buttons input:hover {
            background-color: #FFFF00;
            color: #ff6600;
        }
</style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dormitory</title>
</head>

<body>
    <div class="room-info">
        <h1>Dormitory</h1><hr>
        <h4>Подробная информация о блоке</h4>
        <b>Номер блока: </b>${room.id}<br>
        <b>Количество мест в блоке: </b>${room.capacity}<br>
        <b>Общежитие №: </b>${room.idDormitory}<br>
        <hr>
        <div class="buttons">
            <form action="/" method="get">
                <input type="submit" value="Вернуться на главную"/>
            </form>
        </div>
    </div>
</body>

</html>

