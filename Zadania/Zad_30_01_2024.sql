/*Zad.1*/
select skladniki.NazwaSkladnika, skladniki_przepisow.IDMiaryIlosci 
from skladniki left join skladniki_przepisow on skladniki.IDSkladnika=skladniki_przepisow.IDSkladnika 
where skladniki_przepisow.IDMiaryIlosci=null;
