## Оптимизированный под Sass и Sprockets Bootstrap 3
[![Gem Version](https://badge.fury.io/rb/bootstrap-sass.svg)](http://badge.fury.io/rb/bootstrap-sass)
[![npm version](https://img.shields.io/npm/v/bootstrap-sass.svg?style=flat)](https://www.npmjs.com/package/bootstrap-sass)
[![Bower Version](https://badge.fury.io/bo/bootstrap-sass.svg)](http://badge.fury.io/bo/bootstrap-sass)

Конвертируем [Bootstrap 3](https://github.com/twbs/bootstrap) - получаем [Bootstrap 3 for Sass](https://github.com/twbs/bootstrap-sass).
Оптимизируем под Sprockets - получаем данный форк.

# Disclaimer

Я создал форк для своих production-ready проектов. На популярность не рассчитываю. Поэтому:

* Пишу на русском сколько хочу и где хочу (issues, pull-requests, readme)
* Убираю из форка все, что лично мне не нужно (поддержка mincer и compass)
* Развиваю форк в своем темпе

# Цели

## Ускорение сборки в sprockets

Решается заменой `@import` директив sass'а на `*= require` директивы sprockets'а. С оптимизацией кода.

## Разбиение файлов по правилу 10\*10\*10

Правило: максимальное кол-во легко воспринимаемых элементов в списке = 10. В бутстрапе плоская структура - иерархичность видна только в подключении mixins - либо всех сразу, либо конкретно нужного. Этот подход я растространю на остальной код.

# Addons

## Mixins

```sass
@import 'bootstrap/mixins/scrollbar'

.class
  +scrollbar
.class
  +scrollbar(#f00)
```

```sass
@import 'bootstrap/mixins/neighbours'

.class
  +between_neighbours('div, p')
    margin-top: 20px
```

## Functions

```sass
@import 'bootstrap/mixins/rhythm'
@import 'bootstrap/mixins/grid'

.class
  padding: rh() gg()
.class
  padding: rh(1.5) gg(1.5)
.class
  padding: rh(22px) gg(22px)
```
