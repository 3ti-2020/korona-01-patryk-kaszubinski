<!DOCTYPE html>
<html>
  <head>
    <title> Patryk Kaszubiński </title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
    <div class="krolik" id="krolik"><img src="zdjecia/Krolik.gif"></div>
      <div class="container">
        <div class="top"><div class="tytul">
  <h1> Patryk Kaszubiński </h1>
  <h2> Najlepsze z terrari</h2>
</div>
          <img src="zdjecia/terralog.png" height="100px" width="400px">
        </div>
  <div class="left">
            <a href="index.html"><div class="POD">MENU<img src="zdjecia/Tree.png"></div></a>
            <a href="przedmioty.html"><div class="POD">Najlepsze Przedmioty <img src="zdjecia/Terra_Blade.png"></div></a>
            <a href="bossy.php"><div class="POD">Najlepsze Bossy <img src="zdjecia/oko.png"></div></a>
  </div>
        <div class="mid">
          <?php 
          $servername="localhost";
          $username="root";
          $password="";
          $dbname="patryk_kaszubinski";
          
          $conn= new mysqli($servername, $username, $password, $dbname);
          
          $result= $conn->query("SELECT * FROM npc");
          echo("<div class='tabelka'>");
          echo("<table>");
          echo("<tr>
          <td>ID</td>
              <td>Imie</td>
              <td>Gdzie można znaleźć?</td> 
          </tr>");
          
          
          
          while($wiersz = $result->fetch_assoc()){
              echo("<tr>");
              echo("<td>".$wiersz['ID']. "<td>" .$wiersz['Nazwa']. "<td>" .$wiersz['Gdzie']. "</td>");
              echo("</tr>");
             
          }
          echo("</table>");
          echo("</div>");
          $conn->close();
          ?>
          </div>
</div>
</div>

<script src="main.js"></script>
  </body>
</html>