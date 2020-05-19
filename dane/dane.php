<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>

<div class="header"></div>
<div class="container">
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
        <td>Gdzie można go znaleźć?</td> 
    </tr>");

    

    while($wiersz = $result->fetch_assoc()){

        echo("<tr>");
        echo("<td>" .$wiersz['ID']. "</td><td>" .$wiersz['Nazwa']. "</td><td>" .$wiersz['Wyglad']. "</td></td>");
        echo("</tr>");
     
       
    }
    echo("</table>");
    echo("</div>");

    $result2= $conn->query("SELECT * FROM boss");
    echo("<div class='tabelka'>");
    echo("<table>");
    echo("<tr>
        <td>ID</td>
        <td>Nazwa</td>
        <td>Tryb</td> 
    </tr>");

    

    while($wiersz2 = $result2->fetch_assoc()){

        echo("<tr>");
        echo("<td>" .$wiersz2['ID']. "</td><td>" .$wiersz2['Nazwa']. "</td><td>" .$wiersz2['Tryb']. "</td></td>");
        echo("</tr>");
     
       
    }
    echo("</table>");
    echo("</div>");
    $conn->close();
?>

</div>
    
</body>
</html>

