## Bootstrap for Sass with gambala addons
[![Gem Version](https://badge.fury.io/rb/bootstrap-sass.svg)](http://badge.fury.io/rb/bootstrap-sass)
[![npm version](https://img.shields.io/npm/v/bootstrap-sass.svg?style=flat)](https://www.npmjs.com/package/bootstrap-sass)
[![Bower Version](https://badge.fury.io/bo/bootstrap-sass.svg)](http://badge.fury.io/bo/bootstrap-sass)
[![Build Status](https://img.shields.io/travis/twbs/bootstrap-sass.svg)](https://travis-ci.org/twbs/bootstrap-sass)

This is [Bootstrap](https://github.com/twbs/bootstrap) 3 fork with some useful addons like mixins and functions.

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
