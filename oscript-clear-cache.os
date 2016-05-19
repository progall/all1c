ПутьПоиска = АргументыКоманднойСтроки[0];

КоммуникацияСПользователем = Новый Консоль;

КоммуникацияСПользователем.ВывестиСтроку("Вы уверены в том что хотите отчистить кэш?");
КоммуникацияСПользователем.Вывести("Нажмите Y [ДА] / any other key [НЕТ]");

Ответ = КоммуникацияСПользователем.Прочитать();
Если Ответ = 89 Тогда
    НайденныеКаталоги = НайтиФайлы(ПутьПоиска, "????????-????-????-????-????????????", Истина);
    
    КоммуникацияСПользователем.Очистить();

    ПутьПоиска = ПутьПоиска + "\";
    
    Для Каждого НайденныйКаталог Из НайденныеКаталоги Цикл
        ПолныйПуть = НайденныйКаталог.ПолноеИмя;

        ИмяКаталога = СтрЗаменить(ПолныйПуть, ПутьПоиска, "");
        Если СтрНайти(ИмяКаталога, "\") > 0 Тогда
            Продолжить;	
        КонецЕсли;

        ПутьУдаления = ПутьПоиска + ИмяКаталога;

        Попытка
            УдалитьФайлы(ПутьУдаления);
            КоммуникацияСПользователем.ВывестиСтроку("Удален каталог """ + ПутьУдаления + """.");

        Исключение
            КоммуникацияСПользователем.ВывестиСтроку("Не удален каталог """ + ПутьУдаления + """.");

        КонецПопытки;
    КонецЦикла;
Иначе
    КоммуникацияСПользователем.Очистить();
    КоммуникацияСПользователем.ВывестиСтроку("Выполнение скрипта прервано!");    
КонецЕсли;

Срок = ТекущаяДата() + 10;
Пока Срок > ТекущаяДата() Цикл

КонецЦикла; 
