#Moloruby

[Moloflollo text generator](http://www.moloflollo.com) official ruby gem.

A simple and comfortable way to put sample text on your app's prototypes!

> v1.0.0

## Usage

This code:

```ruby
require 'moloruby'

puts Moloruby.get_words(3)
```

Will output something like this:

```
[ "sabola", "nafozesharfa", "viojopomi" ]
```

## Methods

Moloruby has three methods:

- `get_words(number)`
- `get_sentences(number)`
- `get_paragraphs(number)`

All these three methods return an array with the numbers of
words/sentences/paragraphs requested.

That easy!

## Thanks

Give a hug to my pal [@eth0](https://github.com/ethernet-zero) for doing that funny piece
of software that [moloflollo.com](http://www.moloflollo.com) is! :3
