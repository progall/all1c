﻿
// Функция заполняет структуру РегистрационныеДанные, которая имеет следующиме элементы (параметры):
//	• Наименование – краткое наименование обработки
//	• Версия - информация о версии обработки
//	• Безопасный режим – отвечает за то, должна ли обработка выполняться учитывая права пользователя.
//	• Вид – вид обработки или отчета. Возможные значения:
//		- ДополнительнаяОбработка
//		- ДополнительныйОтчет
//		- ЗаполнениеОбъекта
// 		- Отчет
//		- ПечатанаяФорма
//		- СозданиеСвязанныхОбъектов
//	• Команды – таблица значений, в которой перечисляются используемые команды. Колонки таблицы значений:
//		○ Идентификатор – любая строка (индефикатор команды)
//		○ Представление – описание команды
//		○ Модификатор -  строка (используется для дополнительных печатных форм)
//		○ ПоказыватьОповещение – окно оповещение будет появляться перед началом и после окончание выполнения (для команд клиентских и серверных без формы)
//		○ Использование – режим запуска обработки:
//			 ОткрытиеФормы – откроется форма обработки
//			 ВызовКлиентскогоМетода – вызов клиентского экспортного метода  форма
//			 ВызовСерверногоМетода – вызов экспортной  метода из модуля обработки
//	• Назначение
//		- "Документ.*" - все документы
Функция СведенияОВнешнейОбработке() Экспорт
	РегистрационныеДанные = Новый Структура;
	РегистрационныеДанные.Вставить("Наименование", "Демо");
	РегистрационныеДанные.Вставить("БезопасныйРежим", Ложь);
	РегистрационныеДанные.Вставить("Версия", "18.05.2016 - 14:55");

	РегистрационныеДанные.Вставить("Вид", "ДополнительнаяОбработка");
	
	РегистрационныеДанные.Вставить("Информация", "Демонстрация функционала vanessa-behavior в работе с автоматизированным тестированием 1С");
	
	#Область Команды
	Команды = Новый ТаблицаЗначений;
	Команды.Колонки.Добавить("Идентификатор");
	Команды.Колонки.Добавить("Представление");
	Команды.Колонки.Добавить("Модификатор");
	Команды.Колонки.Добавить("ПоказыватьОповещение");
	Команды.Колонки.Добавить("Использование");
	
	Команда = Команды.Добавить();
	Команда.Идентификатор = "ОткрытьОбработку";
	Команда.Представление = "Открыть обработку";
	Команда.ПоказыватьОповещение = Ложь;
	Команда.Использование = "ОткрытиеФормы";
	
	РегистрационныеДанные.Вставить("Команды", Команды);
	#КонецОбласти
	
	#Область Назначение
	Назначение = Новый Массив;
	
	РегистрационныеДанные.Вставить("Назначение", Назначение);
	#КонецОбласти	
	
	Возврат РегистрационныеДанные;
КонецФункции

//Процедура ВыполнитьКоманду(ИдентификаторКоманды, ОбъектыНазначения) Экспорт
//	Если ИдентификаторКоманды = "" Тогда

//	КонецЕсли;	
//КонецПроцедуры	

//Процедура Печать(ОбъектыНазначения, КоллекцияПечатныхФорм, ОбъектыПечати, ПараметрыВывода) Экспорт
//	КоллекцияПечатныхФорм[0].ТабличныйДокумент = ???;
//КонецПроцедуры
