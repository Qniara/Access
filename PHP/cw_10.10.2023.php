<?PHP
// phpinfo(); - info o php
// . -> konkatenacja
// $ nazwa_zmiennej -> deklaracja zmiennej
echo"Kot konopa jest hot." . "<br><br>" ."dupa<br><br>";

//Zad.1
// $serwer = "localhost";
// $user = "root";
// $haslo = "";
// $baza = "przepisyPrzyklad";
// $pupa = new mysqli($serwer,$user,$haslo,$baza);
// $zap = "select NazwaPrzepisu from przepisy order by NazwaPrzepisu";
// if($wynik=$pupa->query($zap)){
//     while($row=$wynik->fetch_array()){
//         echo $row["nazwa_zwyczajowa"]."<br>";
//     }
// }
// else{
//     echo $pupa->errno." ".$pupa->error;
// }
// $pupa->close(); // zamkniecie polaczenia z bazą

//Zad.2
// $serwer = "localhost";
// $user = "root";
// $haslo = "";
// $baza = "ptaki";
// $pupa = new mysqli($serwer,$user,$haslo,$baza);
// $zap = "select nazwa_zwyczajowa from gatunki order by nazwa_zwyczajowa";
// if($wynik=$pupa->query($zap)){
//     while($row=$wynik->fetch_array()){
//         echo $row["nazwa_zwyczajowa"]."<br>";
//     }
// }
// else{
//     echo $pupa->errno." ".$pupa->error;
// }
// $pupa->close();

//Zad.3
// $serwer = "localhost";
// $user = "root";
// $haslo = "";
// $baza = "agencjaartystycznaprzyklad";
// $pupa = new mysqli($serwer,$user,$haslo,$baza);
// $zap = "select NazwaScenicznaWykonawcy from wykonawcy order by NazwaScenicznaWykonawcy";
// if($wynik=$pupa->query($zap)){
//     while($row=$wynik->fetch_array()){
//         echo $row["NazwaScenicznaWykonawcy"]."<br>";
//     }
// }
// else{
//     echo $pupa->errno." ".$pupa->error;
// }
// $pupa->close();
?>
