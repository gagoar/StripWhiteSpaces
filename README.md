Strip White Spaces
=

This plugin strip all the white spaces in your file before save it automatically

Simple to use too: just put this files under plugin in to your vim configuration,
if you are using [janus](https://github.com/carlhuda/janus), put it under ~/.janus like this:

    git clone git@github.com:gagoar/StripWhiteSpaces.git

then all you need to do is restart your vim/mvim 

if you need call this function before save, you can call it manually doing:

    :StripWhiteSpaces

all the credit goes for [this post](http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim/1618401#1618401)

I'm only put it in a way of vim plugin

Disabling
-

To disable it globally place the following in your `.vimrc`:

    let g:loaded_StripWhiteSpaces = 1

To disable it for just the current buffer set the following anywhere it makes sense (e.g. within a ftplugin file if you don't want to touch trailing whitespace for a certain file type):

    let b:disable_StripWhiteSpaces = 1

If you just wanted to do that temporarily you can either set `b:disable_StripWhiteSpaces = 0` or `unlet b:disable_StripWhiteSpaces` and it will strip white spaces once again.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/gagoar/stripwhitespaces/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

