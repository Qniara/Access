<?php
echo "Vodka? Yes I love vodka."."<br"."br";
$serwer="localhost";
$user="root";
$haslo="";
$baza="ptaki"
$zapytanie="SELECT gatunki.nazwa_zwyczajowa FROM gatunki WHERE gatunki.nazwa_zwyczajowa LIKE 'b%' ORDER By gatunki.nazwa_zwyczajowa ASC";
$con = new mysqli($serwer,$user,$haslo,$baza);
if($wynik=$con->query($zapytanie))
?>
