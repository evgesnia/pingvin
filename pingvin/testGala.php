<?php
require_once("db.php");
$login=$_POST['login'];


if(empty($login)){
    echo "Заполните своё ФИО";
}
$countOfCorrect=0;

for($a=1;$a<=10;$a++){
$sql = "SELECT answer FROM `CorrectAnswersGala` WHERE (id= $a)";
$result = $conn -> query($sql);
$b = strval($a);
while($row = mysqli_fetch_array($result))
{
    if($row['answer'] == $_POST['vopros'.$b])
    {
    $countOfCorrect++;
    }

}

}
if($countOfCorrect>=7) $mark=5;
else if($countOfCorrect>=5 && $countOfCorrect<7) $mark=4;
else if($countOfCorrect>=3 && $countOfCorrect<5) $mark=3;
else  $mark=2;
$sql1 = "INSERT INTO `StudentsMarks` (login,mark,id_test) VALUES ('$login',$mark,2)";
$conn ->query( $sql1);

?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="source/styles/mycss.css">
  <link rel="stylesheet" href="source/styles/bgvideo.css">

  <link rel="apple-touch-icon" sizes="180x180" href="source/files/favicon_io/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="source/files/Logo.jpg">
  <link rel="icon" type="image/png" sizes="16x16" href="source/files/Logo.jpg">
  <link rel="manifest" href="source/files/favicon_io/site.webmanifest">

  <title>PingvinProgram</title>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="/"><img src="source/files/Logo.jpg" alt="..."></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="index.html">Главная страница</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pricing.html">Разделы</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="test.html">Тест1</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="testgala.html">Тест2</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="https://www.youtube.com/watch?v=8nOXKHp2x7s">
                <img style="width: 35px; margin-inline: 1em;" src="source/files/yt.png" alt="...">
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://t.me/roscosmos_gk">
                <img style="width: 25px; margin-inline: 1em;" src="source/files/tg.png" alt="...">
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <section>
    
    <div class="col-lg-12 col-md-12 text-center mt-4">
        <form action="testPlanets.php" method="post">
        <div class="content">
        <form name="quiz1" class="quiz1" id="quiz1" action="javascript:check();">
            <h3> Количество правельных ответов: <?php print_r($countOfCorrect); ?>  <h3>
            <h3> Ваша оценка: <?php print_r($mark); ?>  <h3>
            
          
          </form>
        
        </div>
      </div>
  </section>

  <footer class="mt-4">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 col-md-12 footer-text text-center">
          <p>PingvinProgram</p>
        </div>
        <div class="col-lg-4 col-md-12 footer-text text-center">
          <p>Галактика<br>Звёзды<br>Любовь</p>
        </div>
        <div class="col-lg-4 col-md-12 media-links">
          <img style="width: 40px; margin-inline: 1em;" src="source/files/yt.png" alt="...">
          <img style="width: 40px; margin-inline: 1em;" src="source/files/tg.png" alt="...">
        </div>
      </div>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>
</body>

</html>