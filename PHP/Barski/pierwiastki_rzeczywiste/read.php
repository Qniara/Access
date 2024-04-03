<?php
$a=$_POST("a");
$b=$_POST("b");
$c=$_POST("c");
$delta=$b*$b-4*$a*$c;
if($delta>0){
    $x1=(-1*$b-math.sqrt($delta))/2*$a;
    $x2=(-1*$b+math.sqrt($delta))/2*$a;
    print("Pierwiastek rzeczywisty ma wartosci $x1 i $x2");
}
else if($delta==0){
    $x3=-1*$b/2*$a;
    print("Pierwiastek rzeczywisty jest rowny $x3");
}
else{
    print("Brak pierwiastkow rzeczywistych");
}
