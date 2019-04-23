﻿
#Область Служебные_функции_и_процедуры

&НаКлиенте
// контекст фреймворка Vanessa-ADD
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-ADD.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
Перем Ожидаем;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	Ожидаем = Ванесса.Плагин("УтвержденияBDD");
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//пример вызова Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюВременныйКаталогИСохраняюЕгоВКонтекст()","ЯСоздаюВременныйКаталогИСохраняюЕгоВКонтекст","Допустим Я создаю временный каталог и сохраняю его в контекст","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстанавливаюВременныйКаталогКакРабочийКаталог()","ЯУстанавливаюВременныйКаталогКакРабочийКаталог","И Я устанавливаю временный каталог как рабочий каталог","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюКаталогВРабочемКаталоге(Парам01)","ЯСоздаюКаталогВРабочемКаталоге","И Я создаю каталог ""folder0/folder01"" в рабочем каталоге","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюКаталогВПодкаталогеРабочегоКаталога(Парам01,Парам02)","ЯСоздаюКаталогВПодкаталогеРабочегоКаталога","И Я создаю каталог ""folder011"" в подкаталоге ""folder0/folder01"" рабочего каталога","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюФайлВРабочемКаталоге(Парам01)","ЯСоздаюФайлВРабочемКаталоге","Допустим Я создаю файл ""folder0/file01.txt"" в рабочем каталоге","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюВременныйКаталогИСохраняюЕгоВПеременной(Парам01)","ЯСоздаюВременныйКаталогИСохраняюЕгоВПеременной","Дано Я создаю временный каталог и сохраняю его в переменной ""СпециальныйКаталог""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВРабочемКаталогеСуществуетКаталог(Парам01)","ВРабочемКаталогеСуществуетКаталог","Тогда В рабочем каталоге существует каталог ""folder0/folder01""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПодкаталогеРабочегоКаталогаСуществуетКаталог(Парам01,Парам02)","ВПодкаталогеРабочегоКаталогаСуществуетКаталог","И В подкаталоге ""folder0/folder01"" рабочего каталога существует каталог ""folder011""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюКаталог(Парам01)","ЯСоздаюКаталог","Когда Я создаю каталог ""СпециальныйКаталог/folder0/folder01""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КаталогСуществует(Парам01)","КаталогСуществует","Тогда Каталог ""СпециальныйКаталог/folder0"" существует","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КаталогНеСуществует(Парам01)","КаталогНеСуществует","И Каталог ""СпециальныйКаталог/folder0/folder01-unknown"" не существует","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюКаталогВнутриКаталога(Парам01,Парам02)","ЯСоздаюКаталогВнутриКаталога","Когда Я создаю каталог ""folder1/folder11"" внутри каталога ""СпециальныйКаталог""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КаталогВнутриКаталогаСуществует(Парам01,Парам02)","КаталогВнутриКаталогаСуществует","Тогда Каталог ""folder0"" внутри каталога ""СпециальныйКаталог"" существует","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КаталогВнутриКаталогаНеСуществует(Парам01,Парам02)","КаталогВнутриКаталогаНеСуществует","И Каталог ""folder0/folder01-unknown"" внутри каталога ""СпециальныйКаталог"" не существует","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюФайлВПодкаталогеРабочегоКаталога(Парам01,Парам02)","ЯСоздаюФайлВПодкаталогеРабочегоКаталога","И Я создаю файл ""file01"" в подкаталоге ""folder0/folder01"" рабочего каталога","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВРабочемКаталогеСуществуетФайл(Парам01)","ВРабочемКаталогеСуществуетФайл","Тогда В рабочем каталоге существует файл ""folder0/file01.txt""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПодкаталогеРабочегоКаталогаСуществуетФайл(Парам01,Парам02)","ВПодкаталогеРабочегоКаталогаСуществуетФайл","И В подкаталоге ""folder0/folder01"" рабочего каталога существует файл ""file01""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюФайл(Парам01)","ЯСоздаюФайл","Когда Я создаю файл ""СпециальныйКаталог/file01.txt""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ФайлСуществует(Парам01)","ФайлСуществует","Тогда Файл ""СпециальныйКаталог/file01.txt"" существует","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ФайлНеСуществует(Парам01)","ФайлНеСуществует","И Файл ""folder01/file01-unknown.txt"" не существует","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюФайлВнутриКаталога(Парам01,Парам02)","ЯСоздаюФайлВнутриКаталога","Когда Я создаю файл ""folder1/file11.txt"" внутри каталога ""СпециальныйКаталог""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ФайлВнутриКаталогаСуществует(Парам01,Парам02)","ФайлВнутриКаталогаСуществует","И Файл ""file01.txt"" внутри каталога ""СпециальныйКаталог"" существует","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ФайлВнутриКаталогаНеСуществует(Парам01,Парам02)","ФайлВнутриКаталогаНеСуществует","И Файл ""folder1/file01-unknown.txt"" внутри каталога ""СпециальныйКаталог"" не существует","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯКопируюФайлИзКаталогаПроектаВРабочийКаталог(Парам01,Парам02)","ЯКопируюФайлИзКаталогаПроектаВРабочийКаталог","Когда Я копирую файл ""step_definitions/БезПараметров.os"" из каталога ""tests/fixtures"" проекта в рабочий каталог","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯКопируюФайлИзКаталогаПроектаВПодкаталогРабочегоКаталога(Парам01,Парам02,Парам03)","ЯКопируюФайлИзКаталогаПроектаВПодкаталогРабочегоКаталога","И Я копирую файл ""fixtures/test-report.xml"" из каталога ""tests"" проекта в подкаталог ""folder0/folder01"" рабочего каталога","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯКопируюКаталогИзКаталогаПроектаВРабочийКаталог(Парам01,Парам02)","ЯКопируюКаталогИзКаталогаПроектаВРабочийКаталог","Когда Я копирую каталог ""fixtures/step_definitions"" из каталога ""tests/fixtures"" проекта в рабочий каталог","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯКопируюКаталогИзКаталогаПроектаВПодкаталогРабочегоКаталога(Парам01,Парам02,Парам03)","ЯКопируюКаталогИзКаталогаПроектаВПодкаталогРабочегоКаталога","И Я копирую каталог ""fixtures/step_definitions"" из каталога ""tests"" проекта в подкаталог ""folder0/folder01"" рабочего каталога","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУдаляюКаталог(Парам01)","ЯУдаляюКаталог","Когда Я удаляю каталог ""СпециальныйКаталог/КаталогДляУдаления""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУдаляюФайл(Парам01)","ЯУдаляюФайл","Когда Я удаляю файл ""СпециальныйКаталог/ФайлДляУдаления.txt""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстановилРабочийКаталогКакТекущийКаталог()","ЯУстановилРабочийКаталогКакТекущийКаталог","И Я установил рабочий каталог как текущий каталог","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПоказываюТекущийКаталог()","ЯПоказываюТекущийКаталог","И Я показываю текущий каталог","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстановилПодкаталогРабочегоКаталогаКакТекущийКаталог(Парам01)","ЯУстановилПодкаталогРабочегоКаталогаКакТекущийКаталог","И Я установил подкаталог ""folder0"" рабочего каталога как текущий каталог","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВосстановилПредыдущийКаталог()","ЯВосстановилПредыдущийКаталог","И Я восстановил предыдущий каталог","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСохраняюКаталогПроектаВКонтекст()","ЯСохраняюКаталогПроектаВКонтекст","Когда Я сохраняю каталог проекта в контекст","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПоказываюКаталогПроекта()","ЯПоказываюКаталогПроекта","Тогда Я показываю каталог проекта","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПоказываюРабочийКаталог()","ЯПоказываюРабочийКаталог","И Я показываю рабочий каталог","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ФайлВРабочемКаталогеСодержит(Парам01,Парам02)","ФайлВРабочемКаталогеСодержит","Тогда Файл ""folder0/file01.txt"" в рабочем каталоге содержит ""Текст файла""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ФайлВРабочемКаталогеНеСодержит(Парам01,Парам02)","ФайлВРабочемКаталогеНеСодержит","И Файл ""folder0/file01.txt"" в рабочем каталоге не содержит ""Не существующий текст""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ФайлСодержит(Парам01,Парам02)","ФайлСодержит","Тогда Файл ""folder0/file01.txt"" содержит ""Текст файла""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ФайлНеСодержит(Парам01,Парам02)","ФайлНеСодержит","И Файл ""folder0/file01.txt"" не содержит ""Не существующий текст""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюФайлСТекстом(Парам01,Парам02)","ЯСоздаюФайлСТекстом","Когда Я создаю файл ""СпециальныйКаталог/ФайлСТекстом.txt"" с текстом ""текст178""","","");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции

#КонецОбласти



#Область Работа_со_сценариями

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

#КонецОбласти

#Область Шаги

///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Допустим Я создаю временный каталог и сохраняю его в контекст
//@ЯСоздаюВременныйКаталогИСохраняюЕгоВКонтекст()
Процедура ЯСоздаюВременныйКаталогИСохраняюЕгоВКонтекст() Экспорт
	ВременныйКаталог = ПолучитьИмяВременногоФайла();
	Ванесса.СоздатьКаталогКомандаСистемы(ВременныйКаталог);
	Контекст.Вставить("ВременныйКаталог", ВременныйКаталог);
КонецПроцедуры

&НаКлиенте
//Дано Я создаю временный каталог и сохраняю его в переменной "СпециальныйКаталог"
//@ЯСоздаюВременныйКаталогИСохраняюЕгоВПеременной(Парам01)
Процедура ЯСоздаюВременныйКаталогИСохраняюЕгоВПеременной(Знач ИмяПеременной) Экспорт
	ВременныйКаталог = ПолучитьИмяВременногоФайла();
	Ванесса.СоздатьКаталогКомандаСистемы(ВременныйКаталог);
	Контекст.Вставить(ИмяПеременной, ВременныйКаталог);
КонецПроцедуры

&НаКлиенте
//И Я устанавливаю временный каталог как рабочий каталог
//@ЯУстанавливаюВременныйКаталогКакРабочийКаталог()
Процедура ЯУстанавливаюВременныйКаталогКакРабочийКаталог() Экспорт
	ВременныйКаталог = Контекст["ВременныйКаталог"];
	Контекст.Вставить("РабочийКаталог", ВременныйКаталог);
КонецПроцедуры

&НаКлиенте
//Когда Я создаю каталог "СпециальныйКаталог/folder0/folder01"
//@ЯСоздаюКаталог(Парам01)
Процедура ЯСоздаюКаталог(Знач ИмяКаталога) Экспорт
	Ванесса.СоздатьКаталогКомандаСистемы(ИмяКаталога);
КонецПроцедуры

&НаКлиенте
//И Я создаю каталог "folder0/folder01" в рабочем каталоге
//@ЯСоздаюКаталогВРабочемКаталоге(Парам01)
Процедура ЯСоздаюКаталогВРабочемКаталоге(Знач ИмяКаталога) Экспорт
	НовыйПуть = ОбъединитьПути(РабочийКаталог(), ИмяКаталога);
	Ванесса.СоздатьКаталогКомандаСистемы(НовыйПуть);
КонецПроцедуры

&НаКлиенте
//И Я создаю каталог "folder011" в подкаталоге "folder0/folder01" рабочего каталога
//@ЯСоздаюКаталогВПодкаталогеРабочегоКаталога(Парам01,Парам02)
Процедура ЯСоздаюКаталогВПодкаталогеРабочегоКаталога(Знач ПутьНовогоКаталога, Знач ПутьКаталога) Экспорт
	НовыйПуть = ОбъединитьПути(РабочийКаталог(), ПутьКаталога, ПутьНовогоКаталога);
	Ванесса.СоздатьКаталогКомандаСистемы(НовыйПуть);
КонецПроцедуры

&НаКлиенте
//Когда Я создаю каталог "folder1/folder11" внутри каталога "СпециальныйКаталог"
//@ЯСоздаюКаталогВнутриКаталога(Парам01,Парам02)
Процедура ЯСоздаюКаталогВнутриКаталога(Знач ЧтоСоздаем, Знач ГдеСоздаем) Экспорт
	НовыйПуть = ОбъединитьПути(ГдеСоздаем, ЧтоСоздаем);
	Ванесса.СоздатьКаталогКомандаСистемы(НовыйПуть);
КонецПроцедуры

&НаКлиенте
//Тогда В рабочем каталоге существует каталог "folder0/folder01"
//@ВРабочемКаталогеСуществуетКаталог(Парам01)
Процедура ВРабочемКаталогеСуществуетКаталог(Знач ПутьКаталога) Экспорт
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьКаталога, ПолныйПуть, Истина, РабочийКаталог());
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что каталог <%1> существует, а его нет!", ПолныйПуть)).ЭтоИстина();
КонецПроцедуры

&НаКлиенте
//И В подкаталоге "folder0/folder01" рабочего каталога существует каталог "folder011"
//@ВПодкаталогеРабочегоКаталогаСуществуетКаталог(Парам01,Парам02)
Процедура ВПодкаталогеРабочегоКаталогаСуществуетКаталог(Знач ПутьПодКаталога, Знач ПутьПроверяемогоКаталога) Экспорт
	ПутьПодКаталога = ПутьПодКаталога;
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьПроверяемогоКаталога, ПолныйПуть, Истина, 
		ОбъединитьПути(РабочийКаталог(), ПутьПодКаталога));
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что каталог <%1> существует, а его нет!", ПолныйПуть)).ЭтоИстина();
КонецПроцедуры

&НаКлиенте
//Тогда Каталог "СпециальныйКаталог/folder0" существует
//@КаталогСуществует(Парам01)
Процедура КаталогСуществует(Знач ПутьКаталога) Экспорт
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьКаталога, ПолныйПуть, Истина);
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что каталог <%1> существует, а его нет!", ПолныйПуть)).ЭтоИстина();
КонецПроцедуры

&НаКлиенте
//И Каталог "СпециальныйКаталог/folder0/folder01-unknown" не существует
//@КаталогНеСуществует(Парам01)
Процедура КаталогНеСуществует(Знач ПутьКаталога) Экспорт
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьКаталога, ПолныйПуть, Истина);
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что каталога <%1> нет, а он существует!", ПолныйПуть)).ЭтоЛожь();
КонецПроцедуры

&НаКлиенте
//Тогда Каталог "folder0" внутри каталога "СпециальныйКаталог" существует
//@КаталогВнутриКаталогаСуществует(Парам01,Парам02)
Процедура КаталогВнутриКаталогаСуществует(Знач ПутьПроверяемогоКаталога, Знач ПутьПодКаталога) Экспорт
	//ПутьПодКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьПодКаталога);
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьПроверяемогоКаталога, ПолныйПуть, Истина, 
		ОбъединитьПути(РабочийКаталог(), ПутьПодКаталога));
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что каталог <%1> существует, а его нет!", ПолныйПуть)).ЭтоИстина();
КонецПроцедуры

&НаКлиенте
//И Каталог "folder0/folder01-unknown" внутри каталога "СпециальныйКаталог" не существует
//@КаталогВнутриКаталогаНеСуществует(Парам01,Парам02)
Процедура КаталогВнутриКаталогаНеСуществует(Знач ПутьПроверяемогоКаталога, Знач ПутьПодКаталога) Экспорт
	//ПутьПодКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьПодКаталога);
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьПроверяемогоКаталога, ПолныйПуть, Истина, 
		ОбъединитьПути(РабочийКаталог(), ПутьПодКаталога));
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что каталога <%1> нет, а он существует!", ПолныйПуть)).ЭтоЛожь();
КонецПроцедуры

&НаКлиенте
//Когда Я создаю файл "СпециальныйКаталог/file01.txt"
//@ЯСоздаюФайл(Парам01)
Процедура ЯСоздаюФайл(Знач ПутьФайла) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	СоздатьФайлПример(ПутьФайла);
КонецПроцедуры

&НаКлиенте
//Когда Я создаю файл "folder1/file11.txt" внутри каталога "СпециальныйКаталог"
//@ЯСоздаюФайлВнутриКаталога(Парам01,Парам02)
Процедура ЯСоздаюФайлВнутриКаталога(Знач ПутьФайла, Знач ПутьКаталога) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//ПутьКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьКаталога);
	
	НовыйПуть = ОбъединитьПути(ПутьКаталога, ПутьФайла);
	СоздатьФайлПример(НовыйПуть);
КонецПроцедуры

&НаКлиенте
//Допустим Я создаю файл "folder0/file01.txt" в рабочем каталоге
//@ЯСоздаюФайлВРабочемКаталоге(Парам01)
Процедура ЯСоздаюФайлВРабочемКаталоге(Знач ПутьФайла) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	НовыйПуть = ОбъединитьПути(РабочийКаталог(), ПутьФайла);
	СоздатьФайлПример(НовыйПуть);
КонецПроцедуры

&НаКлиенте
//И Я создаю файл "file01" в подкаталоге "folder0/folder01" рабочего каталога
//@ЯСоздаюФайлВПодкаталогеРабочегоКаталога(Парам01,Парам02)
Процедура ЯСоздаюФайлВПодкаталогеРабочегоКаталога(Знач ПутьФайла, Знач ПутьКаталога) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//ПутьКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьКаталога);
	НовыйПуть = ОбъединитьПути(РабочийКаталог(), ПутьКаталога, ПутьФайла);
	СоздатьФайлПример(НовыйПуть);
КонецПроцедуры

&НаКлиенте
//Тогда В рабочем каталоге существует файл "folder0/file01.txt"
//@ВРабочемКаталогеСуществуетФайл(Парам01)
Процедура ВРабочемКаталогеСуществуетФайл(Знач ПутьФайла) Экспорт
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьФайла, ПолныйПуть, Ложь, РабочийКаталог());
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что файл <%1> существует, а его нет!", ПолныйПуть)).ЭтоИстина();
КонецПроцедуры

&НаКлиенте
//И В подкаталоге "folder0/folder01" рабочего каталога существует файл "file01"
//@ВПодкаталогеРабочегоКаталогаСуществуетФайл(Парам01,Парам02)
Процедура ВПодкаталогеРабочегоКаталогаСуществуетФайл(Знач ПутьПодКаталога, Знач ПутьФайла) Экспорт
	//ПутьПодКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьПодКаталога);
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьФайла, ПолныйПуть, Ложь, 
		ОбъединитьПути(РабочийКаталог(), ПутьПодКаталога));
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что файл <%1> существует, а его нет!", ПолныйПуть)).ЭтоИстина();
КонецПроцедуры

&НаКлиенте
//Тогда Файл "СпециальныйКаталог/file01.txt" существует
//@ФайлСуществует(Парам01)
Процедура ФайлСуществует(Знач ПутьФайла) Экспорт
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьФайла, ПолныйПуть);
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что файл <%1> существует, а его нет!", ПолныйПуть)).ЭтоИстина();
КонецПроцедуры

&НаКлиенте
//И Файл "folder01/file01-unknown.txt" не существует
//@ФайлНеСуществует(Парам01)
Процедура ФайлНеСуществует(Знач ПутьФайла) Экспорт
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьФайла, ПолныйПуть);
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что файла <%1> нет, а он существует!", ПолныйПуть)).ЭтоЛожь();
КонецПроцедуры

&НаКлиенте
//И Файл "file01.txt" внутри каталога "СпециальныйКаталог" существует
//@ФайлВнутриКаталогаСуществует(Парам01,Парам02)
Процедура ФайлВнутриКаталогаСуществует(Знач ПутьФайла, Знач ПутьКаталога) Экспорт
	//ПутьКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьКаталога);
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьФайла, ПолныйПуть, Ложь, 
		ОбъединитьПути(РабочийКаталог(), ПутьКаталога));
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что файл <%1> существует, а его нет!", ПолныйПуть)).ЭтоИстина();
КонецПроцедуры

&НаКлиенте
//И Файл "folder1/file01-unknown.txt" внутри каталога "СпециальныйКаталог" не существует
//@ФайлВнутриКаталогаНеСуществует(Парам01,Парам02)
Процедура ФайлВнутриКаталогаНеСуществует(Знач ПутьФайла, Знач ПутьКаталога) Экспорт
	//ПутьКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьКаталога);
	ПолныйПуть = "";
	ФайлСуществует = ФайлИлиКаталогСуществует(ПутьФайла, ПолныйПуть, Ложь, 
		ОбъединитьПути(РабочийКаталог(), ПутьКаталога));
	Ожидаем.Что(ФайлСуществует, СтрШаблон("Ожидаем, что файла <%1> нет, а он существует!", ПолныйПуть)).ЭтоЛожь();
КонецПроцедуры

&НаКлиенте
//Когда Я копирую файл "step_definitions/БезПараметров.os" из каталога "tests/fixtures" проекта в рабочий каталог
//@ЯКопируюФайлИзКаталогаПроектаВРабочийКаталог(Парам01,Парам02)
Процедура ЯКопируюФайлИзКаталогаПроектаВРабочийКаталог(Знач ПутьФайла, Знач ПодКаталогПроекта) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//ПодКаталогПроекта = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПодКаталогПроекта);
	
	ПолныйПутьФайла = ОбъединитьПути(КаталогПроекта(), ПодКаталогПроекта, ПутьФайла);
	Файл = Новый Файл(ПолныйПутьФайла);
	//КопироватьФайл(ПолныйПутьФайла, ОбъединитьПути(РабочийКаталог(), Файл.Имя));
	Ванесса.КопироватьФайлКомандаСистемы(ПолныйПутьФайла, ОбъединитьПути(РабочийКаталог(), Файл.Имя));
КонецПроцедуры

&НаКлиенте
//И Я копирую файл "fixtures/test-report.xml" из каталога "tests" проекта в подкаталог "folder0/folder01" рабочего каталога
//@ЯКопируюФайлИзКаталогаПроектаВПодкаталогРабочегоКаталога(Парам01,Парам02,Парам03)
Процедура ЯКопируюФайлИзКаталогаПроектаВПодкаталогРабочегоКаталога(Знач ПутьФайла, Знач ПодКаталогПроекта, 
		Знач ПутьПодКаталога) Экспорт

	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//ПодКаталогПроекта = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПодКаталогПроекта);
	//ПутьПодКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьПодКаталога);
	
	ПолныйПутьФайла = ОбъединитьПути(КаталогПроекта(), ПодКаталогПроекта, ПутьФайла);
	Файл = Новый Файл(ПолныйПутьФайла);
	КопироватьФайл(ПолныйПутьФайла, ОбъединитьПути(РабочийКаталог(), ПутьПодКаталога, Файл.Имя));
КонецПроцедуры

&НаКлиенте
//Когда Я копирую каталог "fixtures/step_definitions" из каталога "tests/fixtures" проекта в рабочий каталог
//@ЯКопируюКаталогИзКаталогаПроектаВРабочийКаталог(Парам01,Парам02)
Процедура ЯКопируюКаталогИзКаталогаПроектаВРабочийКаталог(Знач ПутьНовогоКаталога, Знач ПодКаталогПроекта) Экспорт
	//ПутьНовогоКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьНовогоКаталога);
	//ПодКаталогПроекта = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПодКаталогПроекта);

	ПолныйПутьКаталога = ОбъединитьПути(КаталогПроекта(), ПодКаталогПроекта, ПутьНовогоКаталога);
	ОбъектКаталога = Новый Файл(ПолныйПутьКаталога);
	ПутьНовогоКаталога = ОбъединитьПути(РабочийКаталог(), ОбъектКаталога.Имя);
	//ФС.ОбеспечитьКаталог(ПутьНовогоКаталога);
	//ФС.КопироватьСодержимоеКаталога(ПолныйПутьКаталога, ПутьНовогоКаталога);
	Ванесса.ОчиститьСодержимоеКаталога(ПутьНовогоКаталога);
	Ванесса.КопироватьКаталогКомандаСистемы(ПолныйПутьКаталога, ПутьНовогоКаталога);
КонецПроцедуры

&НаКлиенте
//И Я копирую каталог "fixtures/step_definitions" из каталога "tests" проекта в подкаталог "folder0/folder01" рабочего каталога
//@ЯКопируюКаталогИзКаталогаПроектаВПодкаталогРабочегоКаталога(Парам01,Парам02,Парам03)
Процедура ЯКопируюКаталогИзКаталогаПроектаВПодкаталогРабочегоКаталога(Знач ПутьНовогоКаталога, Знач ПодКаталогПроекта, 
		Знач ПутьПодКаталога) Экспорт

	//ПутьНовогоКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьНовогоКаталога);
	//ПодКаталогПроекта = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПодКаталогПроекта);
	//ПутьПодКаталога = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьПодКаталога);

	ПолныйПутьКаталога = ОбъединитьПути(КаталогПроекта(), ПодКаталогПроекта, ПутьНовогоКаталога);
	ОбъектКаталога = Новый Файл(ПолныйПутьКаталога);
	
	ПутьНовогоКаталога = ОбъединитьПути(РабочийКаталог(), ПутьПодКаталога, ОбъектКаталога.Имя);
	//ФС.ОбеспечитьКаталог(ПутьНовогоКаталога);
	//ФС.КопироватьСодержимоеКаталога(ПолныйПутьКаталога, ПутьНовогоКаталога);
	Ванесса.ОчиститьСодержимоеКаталога(ПутьНовогоКаталога);
	Ванесса.КопироватьКаталогКомандаСистемы(ПолныйПутьКаталога, ПутьНовогоКаталога);
КонецПроцедуры

&НаКлиенте
//Когда Я удаляю каталог "СпециальныйКаталог/КаталогДляУдаления"
//@ЯУдаляюКаталог(Парам01)
Процедура ЯУдаляюКаталог(Знач ПутьККаталогу) Экспорт
	УдалитьФайлИлиКаталог(ПутьККаталогу);
КонецПроцедуры

&НаКлиенте
//Когда Я удаляю файл "СпециальныйКаталог/ФайлДляУдаления.txt"
//@ЯУдаляюФайл(Парам01)
Процедура ЯУдаляюФайл(Знач ПутьКФайлу) Экспорт
	УдалитьФайлИлиКаталог(ПутьКФайлу);
КонецПроцедуры

&НаКлиенте
//И Я установил рабочий каталог как текущий каталог
//@ЯУстановилРабочийКаталогКакТекущийКаталог()
Процедура ЯУстановилРабочийКаталогКакТекущийКаталог() Экспорт
КонецПроцедуры

&НаКлиенте
//И Я установил подкаталог "folder0" рабочего каталога как текущий каталог
//@ЯУстановилПодкаталогРабочегоКаталогаКакТекущийКаталог(Парам01)
Процедура ЯУстановилПодкаталогРабочегоКаталогаКакТекущийКаталог(Парам01) Экспорт
КонецПроцедуры

&НаКлиенте
//И Я восстановил предыдущий каталог
//@ЯВосстановилПредыдущийКаталог()
Процедура ЯВосстановилПредыдущийКаталог() Экспорт
КонецПроцедуры

&НаКлиенте
//Когда Я сохраняю каталог проекта в контекст
//@ЯСохраняюКаталогПроектаВКонтекст()
Процедура ЯСохраняюКаталогПроектаВКонтекст() Экспорт
	Контекст.Вставить("КаталогПроекта", КаталогПроекта());
КонецПроцедуры

&НаКлиенте
//Тогда Я показываю каталог проекта
//@ЯПоказываюКаталогПроекта()
Процедура ЯПоказываюКаталогПроекта() Экспорт
	Сообщить(КаталогПроекта());
КонецПроцедуры

&НаКлиенте
//И Я показываю рабочий каталог
//@ЯПоказываюРабочийКаталог()
Процедура ЯПоказываюРабочийКаталог() Экспорт
	Сообщить(РабочийКаталог());
КонецПроцедуры

&НаКлиенте
//И Я показываю текущий каталог
//@ЯПоказываюТекущийКаталог()
Процедура ЯПоказываюТекущийКаталог() Экспорт
	Сообщить(РабочийКаталог());
КонецПроцедуры

&НаКлиенте
//Тогда Файл "folder0/file01.txt" в рабочем каталоге содержит "Текст файла"
//@ФайлВРабочемКаталогеСодержит(Парам01,Парам02)
Процедура ФайлВРабочемКаталогеСодержит(Знач ПутьФайла, Знач ЧтоИщем) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//ПутьФайла = ЗаменитьШаблоныВПараметрахКоманды(ПутьФайла);

	Файл = Новый Файл(ОбъединитьПути(РабочийКаталог(), ПутьФайла)); 
	ПроверитьСодержимоеФайла(Файл, ЧтоИщем);
КонецПроцедуры

&НаКлиенте
//И Файл "folder0/file01.txt" в рабочем каталоге не содержит "Не существующий текст"
//@ФайлВРабочемКаталогеНеСодержит(Парам01,Парам02)
Процедура ФайлВРабочемКаталогеНеСодержит(Знач ПутьФайла, Знач ЧтоИщем) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//ПутьФайла = ЗаменитьШаблоныВПараметрахКоманды(ПутьФайла);

	Файл = Новый Файл(ОбъединитьПути(РабочийКаталог(), ПутьФайла)); 
	ПроверитьОтсутствиеВФайле(Файл, ЧтоИщем);
КонецПроцедуры

&НаКлиенте
//Тогда Файл "folder0/file01.txt" содержит "Текст файла"
//@ФайлСодержит(Парам01,Парам02)
Процедура ФайлСодержит(Знач ПутьФайла, Знач ЧтоИщем) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//ПутьФайла = ЗаменитьШаблоныВПараметрахКоманды(ПутьФайла);

	Файл = Новый Файл(ОбъединитьПути(РабочийКаталог(), ПутьФайла)); 
	ПроверитьСодержимоеФайла(Файл, ЧтоИщем);
КонецПроцедуры

&НаКлиенте
//И Файл "folder0/file01.txt" не содержит "Не существующий текст"
//@ФайлНеСодержит(Парам01,Парам02)
Процедура ФайлНеСодержит(Знач ПутьФайла, Знач ЧтоИщем) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//ПутьФайла = ЗаменитьШаблоныВПараметрахКоманды(ПутьФайла);

	Файл = Новый Файл(ОбъединитьПути(РабочийКаталог(), ПутьФайла)); 
	ПроверитьОтсутствиеВФайле(Файл, ЧтоИщем);
КонецПроцедуры

&НаКлиенте
//Когда Я создаю файл "СпециальныйКаталог/ФайлСТекстом.txt" с текстом "текст178"
//@ЯСоздаюФайлСТекстом(Парам01,Парам02)
Процедура ЯСоздаюФайлСТекстом(Знач ПутьФайла, Знач ТекстФайла) Экспорт
	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	ПутьФайла = ОбъединитьПути(РабочийКаталог(), ПутьФайла);
	ЗаписьТекста = Новый ЗаписьТекста(ПутьФайла, "utf-8");
	ЗаписьТекста.ЗаписатьСтроку(ТекстФайла);
	ЗаписьТекста.Закрыть();
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Функция ОбъединитьПути(Каталог, Элем1, Элем2 = "", Элем3 = "")
	Рез = "";
	Если ЗначениеЗаполнено(Каталог) Тогда
		Рез = Каталог + ПолучитьРазделительПути();
	КонецЕсли;
	Если ЗначениеЗаполнено(Элем1) Тогда
		Если Найти(Элем1, Каталог) = 0 Тогда
			Рез = Рез + Элем1;
		Иначе
			Рез = Элем1; // если явно указали абсолютный каталог
		КонецЕсли;
	КонецЕсли;
	Если ЗначениеЗаполнено(Элем2) Тогда
		Рез = Рез + ПолучитьРазделительПути() + Элем2;
	КонецЕсли;
	Если ЗначениеЗаполнено(Элем3) Тогда
		Рез = Рез + ПолучитьРазделительПути() + Элем3;
	КонецЕсли;
	//Если Ванесса.ЭтоLinux Тогда
	//	ЗаменяемыйРазделитель = "\";
	//Иначе
	//	ЗаменяемыйРазделитель = "/";
	//КонецЕсли;
	//Рез = СтрЗаменить(Рез, ЗаменяемыйРазделитель, ПолучитьРазделительПути());
	Возврат ЗаменитьРазделителиПути(Рез);
КонецФункции

&НаКлиенте
Функция ЗаменитьРазделителиПути(Знач Путь)
	Если Ванесса.ЭтоLinux Тогда
		ЗаменяемыйРазделитель = "\";
	Иначе
		ЗаменяемыйРазделитель = "/";
	КонецЕсли;
	Рез = СтрЗаменить(Путь, ЗаменяемыйРазделитель, ПолучитьРазделительПути());
	Возврат Рез;
КонецФункции

&НаКлиенте
Функция РабочийКаталог()
	Возврат Контекст["РабочийКаталог"];
КонецФункции

&НаКлиенте
Функция КаталогПроекта()
	Возврат Ванесса.Объект.КаталогПроекта;
КонецФункции

&НаКлиенте
Функция ФайлИлиКаталогСуществует(Знач ПутьФайла, ПолныйПуть, Знач ЭтоКаталог = Ложь, Знач ИсходныйКаталог = "")

	//Лог.Отладка("ПутьФайла %1", ПутьФайла);
	//Лог.Отладка("ПолныйПуть %1", ПолныйПуть);
	//Лог.Отладка("ЭтоКаталог %1", ЭтоКаталог);
	//Лог.Отладка("ИсходныйКаталог %1", ИсходныйКаталог);

	Если ИсходныйКаталог = "" Тогда
		ИсходныйКаталог = РабочийКаталог();
	КонецЕсли;
	Если ИсходныйКаталог = "" Тогда
		ИсходныйКаталог = Ванесса.Объект.КаталогПроекта;
	КонецЕсли;
	ПутьФайла = ЗаменитьРазделителиПути(ПутьФайла);
	ИсходныйКаталог = ЗаменитьРазделителиПути(ИсходныйКаталог);
	
	//Лог.Отладка("Установили ИсходныйКаталог %1", ИсходныйКаталог);
	
	//ПутьФайла = ЗаменитьШаблоныВПараметрахКоманды(ПутьФайла);

	//ПутьФайла = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(ПутьФайла);
	//Лог.Отладка("Вычислили ПутьФайла %1", ПутьФайла);

	//РегулярноеВыражение = Новый РегулярноеВыражение("[\*,\?]");
	//ПутьБезРегулярок = Не РегулярноеВыражение.Совпадает(ПутьФайла);
	//
	//Лог.Отладка("ПутьБезРегулярок %1", ПутьБезРегулярок);

	Рез = Ложь;
	////FIXME: убрать ПутьБезРегулярок после решения https://github.com/EvilBeaver/OneScript/issues/511
	//Если ПутьБезРегулярок Тогда
	//	ПолныйПуть = (Новый Файл(ОбъединитьПути(ИсходныйКаталог, ПутьФайла))).ПолноеИмя;
	//	Лог.Отладка("Установили ПолныйПуть %1", ПолныйПуть);
	//	Объект = Новый Файл(ПолныйПуть);
	//	Рез = Объект.Существует();
	//	Лог.Отладка("Объект.Существует() ? %1", Рез);
	//	Если Рез Тогда
	//		Рез = ЭтоКаталог И Объект.ЭтоКаталог() Или Не ЭтоКаталог И Не Объект.ЭтоКаталог();
	//		Лог.Отладка("новый Рез %1
	//		|	ЭтоКаталог И Объект.ЭтоКаталог() Или Не ЭтоКаталог И Не Объект.ЭтоКаталог()", Рез);
	//	КонецЕсли;
	//Иначе		
		СписокКаталогов = Новый СписокЗначений;
		СписокФайлов = Новый СписокЗначений;
		ИскатьВПодкаталогах = Истина;
		ДопМаска = "";
		Если ЭтоКаталог Тогда
			ДопМаска = "*";
		КонецЕсли;
		Попытка
			//МассивФайлов = НайтиФайлы(ИсходныйКаталог, ПутьФайла);
			//Рез = МассивФайлов.Количество() > 0;
			
			//Ванесса.НайтиФайлыКомандаСистемы(ИсходныйКаталог, ПутьФайла, СписокКаталогов, СписокФайлов, ИскатьВПодкаталогах);
			НайтиФайлыКомандаСистемы(ИсходныйКаталог, ПутьФайла + ДопМаска, СписокКаталогов, СписокФайлов, ИскатьВПодкаталогах);
			Если ЭтоКаталог Тогда
				//Рез = НайтиВСпискеПоИмени(СписокКаталогов, ПутьФайла);
				Рез = СписокКаталогов.Количество() > 0;
			Иначе
				//Рез = НайтиВСпискеПоИмени(СписокФайлов, ПутьФайла);
				Рез = СписокФайлов.Количество() > 0;
			КонецЕсли;
			//Лог.Отладка("МассивФайлов.Количество() %1", МассивФайлов.Количество());
			//Лог.Отладка("Рез %1
			//|	МассивФайлов.Количество() > 0", Рез);
		Исключение
			ИнформацияОбОшибке = ИнформацияОбОшибке();
			Сообщить("Ошибка " + ПодробноеПредставлениеОшибки(ИнформацияОбОшибке));
			//Лог.Отладка("ОписаниеОшибки %1", ОписаниеОшибки());
			Рез = Ложь;
		КонецПопытки;
		//Если Рез Тогда
		//	Объект = МассивФайлов[0];
		//	Лог.Отладка("Объект %1", Объект.ПолноеИмя);
		//	Рез = ЭтоКаталог И Объект.ЭтоКаталог() Или Не ЭтоКаталог И Не Объект.ЭтоКаталог();
		//	Лог.Отладка("Рез %1
		//	|	ЭтоКаталог И Объект.ЭтоКаталог() Или Не ЭтоКаталог И Не Объект.ЭтоКаталог()", Рез);
		//КонецЕсли;
	//КонецЕсли;
	Возврат Рез;
КонецФункции

&НаКлиенте
Процедура СоздатьФайлПример(Знач ПутьФайла) Экспорт
	//Лог.Отладка("СоздатьФайлПример %1", ПутьФайла);
	ЗаписьТекста = Новый ЗаписьТекста(ПутьФайла);
	ЗаписьТекста.Записать("");
	ЗаписьТекста.Закрыть();
КонецПроцедуры

&НаКлиенте
Процедура УдалитьФайлИлиКаталог(Знач Путь) Экспорт
	//Путь = БДД.ПолучитьПутьФайлаСУчетомПеременныхКонтекста(Путь);
	//Путь = ЗаменитьШаблоныВПараметрахКоманды(Путь);
	Путь = ОбъединитьПути(РабочийКаталог(), Путь);
	//Если ФС.Существует(Путь) Тогда
	//	УдалитьФайлы(Новый Файл(Путь).ПолноеИмя);
	//КонецЕсли;
	Файл = Новый Файл(Путь);
	Если Ванесса.ФайлСуществуетКомандаСистемы(Путь) Тогда
		Ванесса.УдалитьКаталогКомандаСистемы(Файл.ПолноеИмя);
	КонецЕсли;
	Если Ванесса.ФайлСуществуетКомандаСистемы(Путь) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(Файл.ПолноеИмя);
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура ПроверитьСодержимоеФайла(Знач Файл, Знач ЧтоИщем)
	ТекстФайла = ПрочитатьТекстФайла(Файл);
	//ТекстФайла = ЗаменитьШаблоныВПараметрахКоманды(ТекстФайла);
	//ЧтоИщем = ЗаменитьШаблоныВПараметрахКоманды(ЧтоИщем);

	ОписаниеОшибки = СтрШаблон("Ожидали, что файл <%1> содержит `<%2>`, а это не так!", Файл.ПолноеИмя, ЧтоИщем);
	Ожидаем.Что(ТекстФайла, ОписаниеОшибки).Содержит(ЧтоИщем);
КонецПроцедуры

&НаКлиенте
Функция ПрочитатьТекстФайла(Знач Файл, Кодировка = "UTF-8")
	ЧтениеТекста = Новый ЧтениеТекста;
	ЧтениеТекста.Открыть(Файл.ПолноеИмя, Кодировка);

	Строка = ЧтениеТекста.Прочитать();
	ЧтениеТекста.Закрыть();
	Возврат Строка;
КонецФункции // ПрочитатьТекстФайла()

&НаКлиенте
Процедура ПроверитьОтсутствиеВФайле(Знач Файл, Знач ЧтоИщем)
	ТекстФайла = ПрочитатьТекстФайла(Файл);
	//ТекстФайла = ЗаменитьШаблоныВПараметрахКоманды(ТекстФайла);
	//ЧтоИщем = ЗаменитьШаблоныВПараметрахКоманды(ЧтоИщем);

	ОписаниеОшибки = СтрШаблон("Ожидали, что файл <%1> не содержит `<%2>`, а это не так!", Файл.ПолноеИмя, ЧтоИщем);
	Ожидаем.Что(ТекстФайла, ОписаниеОшибки).Не_().Содержит(ЧтоИщем);
КонецПроцедуры

&НаКлиенте
Процедура НайтиФайлыКомандаСистемы(Путь, МаскаФайлов, СписокКаталогов, СписокФайлов, ИскатьВПодкаталогах,
		Знач КаталогДляВременныхФайлов = "") //Экспорт

	//Отладка(СтрШаблон_("НайтиФайлыКомандаСистемы - %1, ИскатьВПодкаталогах %2", Путь, ИскатьВПодкаталогах));

	Если НЕ Ванесса.ЕстьПоддержкаАсинхронныхВызовов Тогда
		Файлы = НайтиФайлы(Путь, МаскаФайлов, ИскатьВПодкаталогах);

		Для Каждого Файл Из Файлы Цикл
			Если Файл.ЭтоКаталог() Тогда
				СписокКаталогов.Добавить(Файл, Файл.ПолноеИмя);
			Иначе
				СписокФайлов.Добавить(Файл, Файл.ПолноеИмя);
			КонецЕсли;
		КонецЦикла;
	Иначе

		//получение каталогов
		Если Не ЗначениеЗаполнено(КаталогДляВременныхФайлов) Тогда
			ИмяФайлаЛога = ПолучитьИмяВременногоФайла("txt"); // имя этого временного файла буду переиспользовать для ускорения
		Иначе
			ИмяФайлаЛога = ПолучитьПутьВременногоФайла(КаталогДляВременныхФайлов);
		КонецЕсли;

		Если Ванесса.ЭтоLinux Тогда

			//КомандаКаталоги = "find """ + Путь + """ "+ ?(ИскатьВПодкаталогах, "", "-maxdepth 1") + "-type d -name '*'" + " > """ + ИмяФайлаЛога + """";
			КомандаКаталоги = "find """ + Путь + """ "+ ?(ИскатьВПодкаталогах, "", "-maxdepth 1") + "-type d -name '" + МаскаФайлов + "'" + " > """ + ИмяФайлаЛога + """";
			КомандаСистемы(КомандаКаталоги);
		Иначе

			КомандаКаталоги = "DIR """ + Путь + "\" + МаскаФайлов + """ /A:D /B " + ?(ИскатьВПодкаталогах, "/S", "") + " > """ + ИмяФайлаЛога + """";
			//последний параметр важен для правильного чтения русских имен файлов
			Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(КомандаКаталоги, Истина, Истина);

		КонецЕсли;

		МассивСтрокИзФайла = ЗагрузитьФайлВМассив(ИмяФайлаЛога);
		Для каждого Стр Из МассивСтрокИзФайла Цикл
			СписокКаталогов.Добавить(Новый Файл(Стр), Стр);
		КонецЦикла;

		//получение файлов

		Если Ванесса.ЭтоLinux Тогда

			КомандаКаталоги = "find """ + Путь + """ "+ ?(ИскатьВПодкаталогах, "", "-maxdepth 1") + "-type f -name '" + МаскаФайлов + "'" + " > """ + ИмяФайлаЛога + """";
			КомандаСистемы(КомандаКаталоги);
		Иначе

			КомандаФайлы = "DIR """ + Путь + "\" + МаскаФайлов + """ /A:-D /B " + ?(ИскатьВПодкаталогах, "/S", "") + " > """ + ИмяФайлаЛога + """";

			//последний параметр важен для правильного чтения русских имен файлов
			Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(КомандаФайлы, Истина, Истина);
		КонецЕсли;

		МассивСтрокИзФайла = ЗагрузитьФайлВМассив(ИмяФайлаЛога);
		Для каждого Стр Из МассивСтрокИзФайла Цикл
			СписокФайлов.Добавить(Новый Файл(Стр), Стр);
		КонецЦикла;

		Если Не ЗначениеЗаполнено(КаталогДляВременныхФайлов) Тогда
			Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайлаЛога);
		КонецЕсли;
	КонецЕсли;

КонецПроцедуры

&НаКлиенте
Функция ПолучитьПутьВременногоФайла(Знач КаталогДляВременныхФайлов, Знач Расширение = "")
	НовоеИмя = ПолучитьИмяВременногоФайла(Расширение);
	Файл = Новый Файл(НовоеИмя);
	НовоеИмя = КаталогДляВременныхФайлов + "/" + Файл.Имя;
	Возврат НовоеИмя;
КонецФункции

&НаКлиенте
Функция ЗагрузитьФайлВМассив(Знач ИмяФайла, РезМассив = Неопределено)
	Если РезМассив <> Неопределено Тогда
		Массив = РезМассив;
	Иначе
		Массив = Новый Массив;
	КонецЕсли;

	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла, "UTF-8");

	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;

		Массив.Добавить(Стр);
	КонецЦикла;

	Текст.Закрыть();

	Возврат Массив;
КонецФункции

#КонецОбласти
