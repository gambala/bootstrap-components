## Оптимизированный под Sass и Sprockets Bootstrap 3

Конвертируем [Bootstrap 3](https://github.com/twbs/bootstrap) - получаем [Bootstrap 3 for Sass](https://github.com/twbs/bootstrap-sass).

Раскладываем на компоненты и оптимизируем под Sprockets - получаем данный форк.

# Disclaimer

Я создал форк для своих production-ready проектов. На популярность не рассчитываю. Поэтому:

* Пишу на русском сколько хочу и где хочу (issues, pull-requests, readme)
* Убираю из форка все, что лично мне не нужно (поддержка mincer и compass, неиспользуемые миксины)
* Развиваю форк в своем темпе, независимо от бутстрапа (добавляю свои компоненты, использую компоненты 4-ой версии бутстрапа)

# Цели

## Структурировать кашу бутстраповских стилей

И в 3-й, и в 4-й версии бутстрапа нет четко сформулированной методологии, по которой раскладывались бы стили. Стили набрасывались по принципам "Абы как" и "Главное, что работает". Из-за этого сложнее расширять фреймворк и поддерживать стилевую базу в крупных production-ready проектах.

## Ускорить сборку в sprockets

Все проекты я создаю в Ruby on Rails с использованием стандартного сборщика стилей и скриптов - sprockets. Его проблема - медлительность сборки. Подключение libsass не решает проблему сборки sass-стилей. Но ускорить сборку можно - заменой `@import` директив sass'а на `*= require` директивы sprockets'а. С оптимизацией кода.

# Установка

```
gem 'bootstrap-components', github: 'gambala/bootstrap-components'
```

# Использование

## Сценарий 1. Быстрое подключение стандартного бутстрапа

```
# application.css

*= require bootstrap
```

## Сценарий 2. Загрузка не всех компонентов

Копируем файл [_bootstrap.scss](https://github.com/gambala/bootstrap-components/blob/master/assets/stylesheets/_bootstrap.scss) в проект и удаляем все строки @import кроме необходимых.

```
# application.css

*= require ./bootstrap
```

## Сценарий 3. Кастомизация бутстрапа через переменные

Создаем в проекте файл variables.scss и наполняем кастомными значениями переменных.

```
...
$body-background-color: #f0f3fa;
$base-color: #424759;
$base-muted-color: #aeb5d1;
$legend-color: #868daa;
...
```

Копируем файл [_bootstrap.scss](https://github.com/gambala/bootstrap-components/blob/master/assets/stylesheets/_bootstrap.scss) из сценария 2, и добавляем в начало файла строку `@import "variables";`.

## Сценарий 4. Кастомизация бутстрапа через миксины

Скопировать файл миксина в проект. Изменить поведение миксина. Создать файл стилей нужного компонента. И использовать там переопределенный миксин.

Таким образом в css будут и стили, сгенерированные стандартным бутстраповским миксином, и кастомные стили, сгенерированные переопределенным миксином.

Здесь мы упираемся в ограничения SASS - в нем нельзя проделывать тот же фокус, что и с переменными. Это позволяет делать Stylus, и, возможно, я перенесу проект на Stylus.

## Сценарий 5. Кастомизация бутстрапа через стили

Дополняем компонент стилями. Находим нужный компонент, заводим в проекте файл с таким же именем, и определяем дополнительные стили там.

## Сценарий 6. Создание нового компонента

Идем в bootstrap-components, и проверяем, не конфликтует ли имя нового компонента с уже существующими компонентами. В проекте создаем папку для компонента, и нужные файлы - styles, variables, mixins.

## Сценарий 7. Ускорение пересборки стилей

Сценарий на уточнении. Возможно, отпадет за ненадобностью при успешном переходе на Stylus. Если нет - решается подключением бутстрапа через sprockets-директивы `*= require`, вместо sass-директив `@import`.
