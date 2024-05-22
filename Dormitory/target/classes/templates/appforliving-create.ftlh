<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Заявление на проживание</title>
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

        h3 {
            text-align: center;
        }

        hr {
            border: none;
            border-top: 1px solid #ccc;
            margin: 20px 0;
        }

        form {
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

        form input[type="date"],
        form input[type="number"],
        form select {
            width: 100%;
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
            margin: 10px 0;
        }

        .buttons input:hover {
            background-color: #FFFF00;
            color: #ff6600;
        }
    </style>
</head>

<body>
    <form id="appForLivingForm">
        <h3>Создать новую заявку</h3>
        <label for="dateOfApp">Дата заявления:</label> <input type="date" id="dateOfApp"/><br><br>
        <label for="requestStatus">Статус заявления:</label>
        <select id="requestStatus">
            <option value="На рассмотрении">На рассмотрении</option>
            <option value="Принято">Принято</option>
            <option value="Отклонено">Отклонено</option>
        </select><br><br>
        <label for="idStudent">ID студента:</label> <input type="number" id="idStudent"/><br><br>
        <div class="buttons">
            <input type="button" id="submitButton" value="Добавить заявку"/>
        </div>
    </form>

 <script>
    $(document).ready(function(){
      $("#submitButton").click(function(){
        var dateOfApp = $("#dateOfApp").val();
        var requestStatus = $("#requestStatus").val();
        var idStudent = $("#idStudent").val();

        if (!dateOfApp || !requestStatus || !idStudent) {
            alert('Пожалуйста, заполните все поля.');
            return;
        }

        var appForLiving = {
          dateOfApp: dateOfApp,
          requestStatus: requestStatus,
          idStudent: idStudent
        };
        $.ajax({
          url: '/appforliving/create',
          type: 'POST',
          contentType: 'application/json',
          data: JSON.stringify(appForLiving),
          success: function() {
            window.location.href = "/appforlivings";
          },
          error: function() {
            alert('Введите существующий [id] студента.');
          }
        });
      });
    });
    </script>

</body>

</html>
