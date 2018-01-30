#Использовать json
#Использовать logos
#Использовать 1commands
#Использовать asserts

Перем Настройки;
Перем МассивПутей;
Перем ПредыдущийКлючМассиваПутей;
Перем КаталогСоответствующийКорню;
Перем Лог;
Перем ЭтоWindows;
Перем РегуляркаПроверкиДатыВремени;
Перем РегуляркаПроверкиВерсииВанессаРаннер;

// Возвращает массив относительных путей каталогов внешних файлов 1С, которые нужно собирать/разбирать.
// Значение ключа "include" из файла "ospx/settings.json"
//
// Параметры:
//   ДобавлятьКаталогСборкиКорневыхФайлов - Булево - добавить имя каталога, соответствующего корневому. См. метод "КаталогСоответствующийКорню"
//
//  Возвращаемое значение:
//   Массив - массив относительных имен файлов
//
Функция ПапкиВнешнихФайлов(Знач КлючМассиваФайловВФайлеНастроек = "") Экспорт

	Если ПредыдущийКлючМассиваПутей <> КлючМассиваФайловВФайлеНастроек Тогда
		ПрочитатьНастройки(КлючМассиваФайловВФайлеНастроек);
	КонецЕсли;
	
	Возврат МассивПутей;
КонецФункции

// Возвращает каталог проекта, соответствующий корню проекта.
// Значение ключа "root" из файла "ospx/settings.json"
//
//  Возвращаемое значение:
//   Строка - каталог проекта, соответствующий корню проекта.
//
Функция КаталогСоответствующийКорню() Экспорт
	Возврат КаталогСоответствующийКорню;
КонецФункции

// Добавить параметры для сборки/разборки исходников
// Параметр "--buildFolderPath"
//
// Параметры:
//   ПарсерАргументовКоманднойСтроки - ПарсерАргументовКоманднойСтроки - <описание параметра>
//
Процедура УстановитьПараметрыСборкиРазборкиДляКоманднойСтроки(Знач ПарсерАргументовКоманднойСтроки) Экспорт
	ПарсерАргументовКоманднойСтроки.ДобавитьИменованныйПараметр(КлючКаталогБинарныхФайлов(), 
		"Путь к каталогу бинарных файлов.
		// |По умолчанию это ""./build""");
		|По умолчанию это ""./build""", 
		Истина);
КонецПроцедуры

// Получить описание структуры для сборки/разборки
// В структу
//
// Параметры:
//   ЗначенияПараметров - Соответствие - результата разбора командной строки через ПарсерАргументовКоманднойСтроки
//   Лог - Лог - объект лога
//
//  Возвращаемое значение:
//   Структура - <описание возвращаемого значения>
//		2 ключа:
//		Бинарники1СХранятсяРядомСИсходниками - Булево
//		ПутьКаталогаСборки - Строка
//
Функция ОписаниеСборкиРазборки(Знач ЗначенияПараметров, Знач Лог) Экспорт
	Значение = ЗначенияПараметров[КлючКаталогБинарныхФайлов()];
	Если Не ЗначениеЗаполнено(Значение) Тогда
		Бинарники1СХранятсяРядомСИсходниками = Истина;
		ПутьКаталогаСборки = "";
	Иначе
		Бинарники1СХранятсяРядомСИсходниками = Ложь;
		ПутьКаталогаСборки = Значение + "/";
	КонецЕсли;

	Лог.Информация("Указан вариант хранения бинарных внешних файлов (epf,erf) %1", 
		?(Бинарники1СХранятсяРядомСИсходниками, "- в корневом каталоге", "- в каталоге " + ПутьКаталогаСборки));

		
	Описание = Новый Структура("ПутьКаталогаСборки, Бинарники1СХранятсяРядомСИсходниками", 
		ПутьКаталогаСборки, Бинарники1СХранятсяРядомСИсходниками);
	Возврат Описание;
КонецФункции

Функция СтрокаЗапускаКомандыСборки(Знач Бинарники1СХранятсяРядомСИсходниками, Знач ПутьКаталогаСборки) Экспорт
	КлючиКомандыСборки = ?(Бинарники1СХранятсяРядомСИсходниками, "", СтрШаблон("%1 %2", КлючКаталогБинарныхФайлов(), ПутьКаталогаСборки));
	СтрокаЗапуска = СтрШаблон("opm run cepf %1", КлючиКомандыСборки);
	Возврат СтрокаЗапуска;
КонецФункции

Функция ПрочитатьНастройки(Знач КлючМассиваПутей = "", Знач КлючКорня = "root")

	Если Не ЗначениеЗаполнено(КлючМассиваПутей) Тогда
		КлючМассиваПутей = "include";
	КонецЕсли;
	
	Настройки = ПолучитьИзJSONФайла(ПутьФайлаНастроек());
	Ожидаем.Что(Настройки, "Не загружены настройки из файла настроек").Заполнено();

	КаталогСоответствующийКорню = Настройки[КлючКорня];
	Ожидаем.Что(КаталогСоответствующийКорню, "Не найдена настройка " + КлючКорня).Заполнено();

	ПредыдущийКлючМассиваПутей = КлючМассиваПутей;
	МассивПутей = Настройки[ПредыдущийКлючМассиваПутей];
	Ожидаем.Что(МассивПутей, "Не найдена настройка " + ПредыдущийКлючМассиваПутей).Заполнено();
	МассивПутей.Вставить(0, КаталогСоответствующийКорню);

КонецФункции

Функция ПолучитьИзJSONФайла(Знач ПутьФайла) Экспорт
	Чтение = Новый ЧтениеТекста(ПутьФайла);
	JsonСтрока  = Чтение.Прочитать();
	Чтение.Закрыть();
	Чтение = Неопределено;

	ПарсерJSON  = Новый ПарсерJSON();
	Результат   = ПарсерJSON.ПрочитатьJSON(JsonСтрока);
	Возврат Результат;
КонецФункции

Функция ИсполнитьКоманду(Знач СтрокаВыполнения, Знач КодировкаВывода = "") Экспорт
	
	Команда = Новый Команда;
	Команда.ПоказыватьВыводНемедленно(Истина);
	Если Не ПустаяСтрока(КодировкаВывода) Тогда
		Команда.УстановитьКодировкуВывода(КодировкаВывода);
	КонецЕсли;
	
	// Команда.ДобавитьЛогВыводаКоманды(ИмяЛога());//TODO вернуть после проверки на CI

	Команда.УстановитьПравильныйКодВозврата(0);

	Лог.Информация(СтрокаВыполнения);
	Команда.УстановитьСтрокуЗапуска(СтрокаВыполнения);
	Команда.Исполнить();

	Возврат Команда.ПолучитьВывод();
	
КонецФункции

Функция Форматировать(Знач Уровень, Знач Сообщение) Экспорт
	
	Если Не ЭтоWindows Тогда
		Сообщение = СтрЗаменить(Сообщение, "No bp log location saved, using default.", "");
		Если ПустаяСтрока(Сообщение) Тогда
			Возврат "";
		КонецЕсли;
	КонецЕсли;

	Если Не ЗначениеЗаполнено(РегуляркаПроверкиДатыВремени) Тогда
		РегуляркаПроверкиДатыВремени = Новый РегулярноеВыражение("\d{2}\.\d{2}\.\d{4}\s+\d{2}:\d{2}:\d{2}:\s+[\wa-яё]+\s+-\s+");
		РегуляркаПроверкиВерсииВанессаРаннер = Новый РегулярноеВыражение("vanessa\-runner\s+v\d{1,2}\.\d{1,2}\.\d{1,2}");
	КонецЕсли;
	Если РегуляркаПроверкиВерсииВанессаРаннер.Совпадает(Сообщение) Тогда
		Результат = "";
	Иначе
	
		Результат = Сообщение;
		Если Не РегуляркаПроверкиДатыВремени.Совпадает(Сообщение) Тогда
			Результат = СтрШаблон("%1: %2 - %3", ТекущаяДата(), УровниЛога.НаименованиеУровня(Уровень), Сообщение);
		КонецЕсли;

	КонецЕсли;

	Возврат Результат;

КонецФункции

Функция ПолучитьЛог() Экспорт
	Если Лог = Неопределено Тогда
		Лог = Логирование.ПолучитьЛог(ИмяЛога());
		Лог.УстановитьРаскладку(ЭтотОбъект);
	КонецЕсли;
	Возврат Лог;	
КонецФункции

Функция КаталогПроекта() Экспорт
	ФайлИсточника = Новый Файл(ТекущийСценарий().Источник);
	Возврат ОбъединитьПути(ФайлИсточника.Путь, "..", "..");
КонецФункции

Функция КлючКаталогБинарныхФайлов()
	Возврат "--buildFolderPath";
КонецФункции

Функция ПутьФайлаНастроек() Экспорт
	Возврат "ospx/settings.json";
КонецФункции

Функция ИмяЛога() Экспорт
	Возврат "oscript.app.add";
КонецФункции

Лог = ПолучитьЛог();

ПрочитатьНастройки();

СистемнаяИнформация = Новый СистемнаяИнформация;
ЭтоWindows = Найти(ВРег(СистемнаяИнформация.ВерсияОС), "WINDOWS") > 0;
