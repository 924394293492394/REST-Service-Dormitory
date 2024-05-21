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
            padding: 20px;
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

        form input[type="text"],
        form input[type="number"] {
            width: 100%;
            margin-bottom: 10px;
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
            margin: 0px 15;
        }

        .buttons input:hover {
            background-color: #FFFF00;
            color: #ff6600;
        }
    </style>
</head>

<body>
    <form id="studentForm">
        <h3>Изменение информации о студенте</h3>
        Имя: <input type="text" id="firstName"/><br><br>
        Фамилия: <input type="text" id="lastName"/><br><br>
        Группа: <input type="text" id="group"/><br><br>
        Телефон: <input type="text" id="phone"/><br><br>
        Проживает в: <input type="number" id="idRoom"/><br><br>
        <input type="hidden" id="studentId" value="${student.id}"/>
        <div class="buttons">
            <input type="button" id="submitButton" value="Внести изменения о студенте"/>
        </div>
    </form>

    <script>
    $(document).ready(function(){
      $("#submitButton").click(function(){
        var firstName = $("#firstName").val();
        var lastName = $("#lastName").val();
        var group = $("#group").val();
        var phone = $("#phone").val();
        var idRoom = $("#idRoom").val();

        if (!firstName || !lastName || !group || !phone || !idRoom) {
            alert('Пожалуйста, заполните все поля.');
            return;
        }

        var student = {
          id: $("#studentId").val(),
          firstName: firstName,
          lastName: lastName,
          group: group,
          phone: phone,
          idRoom: idRoom
        };
        $.ajax({
          url: '/student/update/' + student.id,
          type: 'POST',
          contentType: 'application/json',
          data: JSON.stringify(student),
          success: function() {
            window.location.href = '/student/' + student.id;
          },
          error: function() {
            alert('Произошла ошибка при внесении данных о студенте.');
          }
        });
      });
    });
    </script>

</body>

</html>
