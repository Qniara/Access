<?php 
echo"<body bgcolor='#FFa8fe'>";
echo"Mis cojones 33<br>";
echo"Dzisiaj jest: ". date('l, d.m.r')."<br>"; // data
// include - wstaiwa cal zawartosc pliku jesli plik istenieje, jak plik ni eistnieje to sie nie wywali
// require - wtawia cala zwartosc pliku jesli pik istnieje, jka nie plik nie istnieje to sie wywali

/* getdate - zwraca date
minutes - minuty
hours - godziny
mday - dzien miesiaca
wday - dzien tygodnia
mon - miesiac
year - rok
yday - dzien w roku
weekday - dzien tygodnia po angielsku
month - nazwa miesiaca po angielsku*/
// $data = getdate();
// echo $data['year'];

// trim - usuwa spacje z lewej i prawej
// ltrim - usuwa spacje tylko z lewej
// rtrim - usuwa spacje tylko z prawrej
// echo trim("<br> Kombajn ");

//Wysylanie maila
// $adres = "adres@onet.eu";
// $temat = "temat";
// $tresc = "tersc";
// $naglowek = "From: adres";
// $wyslany = mail($adres,$naglowek,$temat,$tresc);
// if($wyslany){
//     echo"wyslano";
// }
// else{
//     echo"niewyslano";
// }

echo"<br>";
// $tekst="Slash";
// echo wordwrap($tekst,30,'<br>\n'); //format tekstu

// echo sqrt(25); //pierwiastek

// echo nl2br("Kocham Findusa
// A Findus kocha mnie");

// echo strlen("Kotek"); //podaj eilosc znakow
// echo substr("kombajn lubi kotki",0,7); //ciag znakow od 0 do 7

// echo rand(1,10); //liczba z zakresu od 1 do 10
// echo getrandmax(); //najwieksza mozliwa liczba do uzyskania za pomoca rand

/*date()
d - dzien w formacie z 0 na poczatku
D - dzien w formacie trzyliterowego skrutu
F - pelna nazwa miesiaca
g - godzina (12h)
G - godzina (24h)
H - godzina od 1 do 24
i - liczba minut
s - liczba sekund
I - nazwa dnia tygodnia
m - miasiac jako cyfra od 1 do 12
Y - rok pelny */

// echo strstr("kombajn lubi kotki","kombajn"); //wyszukuje podana fraze w dluzszej frazie
// echo str_replace("Kombajn","Slash","Kombajn lubi kotki"); //zamiana dowolnego ciagu znakow na inny

// echo pi(); // zwraca wartosc pi
// echo pow(2,2); // potega

// $a=1;
// echo isset($a); //sprawdza czy zmienna istenieje, true jak istenieje
// unset("$a"); //usuwa zmienna
// echo !empty($a); // sprawdza czy zmienna jest pusta
// echo time(); //zwraca ile sekund uplynelo od 1 stycznia 1970

echo ucfirst("slash<br>"); //zmienia pierwsza litere na duza
echo strtoupper("Kurt Cobain<br>"); //zmienia wszystkie litery na duze
echo strtolower("AXL ROSE<br>"); //zmienia wszystkie literyna male

echo"</body>";
?>
