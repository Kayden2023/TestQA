#language: ru

@tree

Функционал: создание элементов справочника Номенклатура

Сценарий: создание элементов справочника Номенклатура
    И В командном интерфейсе я выбираю 'Справочники' 'Номенклатура'
    И Я запоминаю значение выражения '0' в переменную "НомерТовара"
    И я делаю 10 раз
        И Я запоминаю значение выражения '$НомерТовара$ + 1' в переменную "НомерТовара"
        И Я запоминаю значение выражения '"Товар без характеристик Тест" + $НомерТовара$' в переменную "НаименованиеНовойНоменклатуры"
        И Я запоминаю значение выражения '"Тест"+ $НомерТовара$' в переменную "АртикулНовойНоменклатуры"
        И Я запоминаю значение выражения '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' в переменную "СсылкаНовойНоменклатуры"
        И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID'                     | 'PackageUnit' | 'Description_en'                  | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '$СсылкаНовойНоменклатуры$' | 'False'        | ''     | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '$АртикулНовойНоменклатуры$' | ''            | '$НаименованиеНовойНоменклатуры$' | ''                 | ''               | ''               |          |          |          |          |         |

	    И я перезаполняю для объекта табличную часть "AddAttributes":
		| 'Ref'                                                           | 'Property'                                                                                           | 'Value'                                                                                 |
		| '$СсылкаНовойНоменклатуры$' | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 'e1cib/data/Catalog.AddAttributeAndPropertyValues?ref=b762b13668d0905011eb766bf96b2761' |






        
        
                
                


