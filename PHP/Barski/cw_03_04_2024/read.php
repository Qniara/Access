<?php
$a=2;
$b=3;
$c= 1;
print("a ma wartosc: "+ $a);
print("<br>b ma wartosc: "+ $b);
if($a>$b && $a>$c){
    print("a jest wieksze");
}
else if($a<$b && $b>$c){
    print("b jest wieksze");
}
else if($c<$b && $a>$c){
    print("c jest wieksze");
}
else{
    print("Rowne sa");
}
?>
