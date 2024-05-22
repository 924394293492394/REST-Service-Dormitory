<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dormitory</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
            flex-direction: column;
            align-items: stretch;
            gap: 10px;
        }

        .buttons form {
            width: 100%;
        }

        .buttons input[type="submit"] {
            cursor: pointer;
            height: 30px;
            text-align: center;
            background-color: #ff6600;
            color: #FFFF00;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        .buttons input[type="submit"]:hover {
            background-color: #FFFF00;
            color: #ff6600;
        }
    </style>
</head>

<body>
    <div class="room-info">
        <h1>Dormitory</h1><hr>
        <h4>Подробная информация о заявлении</h4>
        <b>Заявление: №</b> ${appforliving.id}<br>
        <b>Дата заявления: </b>${appforliving.dateOfApp}<br>
        <b id="status">Статус заявления: </b><span id="requestStatus">${appforliving.requestStatus}</span><br>
        <b>Студент ID: <a href="/student/${appforliving.idStudent}">${appforliving.idStudent}</a></b><br>
        <hr>
        <div class="buttons">
            <form action="/appforliving/edit/${appforliving.id}" method="get">
                <input type="submit" value="Изменить информацию о заявлении"/>
            </form>
            <form action="/appforliving/delete/${appforliving.id}" method="post">
                <input type="submit" value="Удалить информацию о заявлении"/>
            </form>
            <form action="/" method="get">
                <input type="submit" value="Вернуться на главную"/>
            </form>
        </div>
    </div>

    <script>
        window.onload = function() {
            var status = document.getElementById('requestStatus').textContent;
            if (status === 'На рассмотрении') {
                document.getElementById('requestStatus').style.color = 'yellow';
            } else if (status === 'Принято') {
                document.getElementById('requestStatus').style.color = 'green';
            } else if (status === 'Отклонено') {
                document.getElementById('requestStatus').style.color = 'red';
            }
        };
    </script>

</body>

</html>
