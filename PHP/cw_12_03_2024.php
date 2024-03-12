<?PHP
$serwer ="localhost";
$user ="root";
$haslo ="";
$baza ="ksiegarnia";
$zapytanie ="SELECT imie, nazwisko, miejscowosc FROM klienci";
$con = new mysqli($serwer,$user,$haslo,$baza);
if($wynik=$con->query($zapytanie))
   WHILE($row=$wynik->fetch_array())
       echo $row["imie"]." ".$row["nazwisko"]." ".$row["miejscowosc"]."<br>";
else
   echo $con->errno." ".$con->error; 
$con->close();
?>
