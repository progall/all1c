﻿
&НаКлиенте
Процедура Команда1(Команда)
	ОчиститьКеш("C:\Users\verter\Desktop\Новая папка");
КонецПроцедуры

&НаКлиенте
Процедура ОчиститьКеш(ПутьПоиска)
	НайденныеФайлы = НайтиФайлы(ПутьПоиска, "????????-????-????-????-????????????", Истина);
	Для Каждого НайденныйФайл Из НайденныеФайлы Цикл
		ПолныйПуть = НайденныйФайл.ПолноеИмя;
		
		ИмяКаталога = Сред(СтрЗаменить(ПолныйПуть, ПутьПоиска, ""), 2);
		
		Если ЭтоПодкаталог(ИмяКаталога) Тогда
			Продолжить;	
		КонецЕсли;

		ПутьУдаления = ПутьПоиска + "\" + ИмяКаталога;
		
		УдалитьФайлы(ПутьУдаления);
	КонецЦикла;
КонецПроцедуры

&НаКлиенте
Функция ЭтоПодкаталог(ИмяКаталога)
	Возврат СтрНайти(ИмяКаталога, "\") > 0;
КонецФункции
