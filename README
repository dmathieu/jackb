# Jack

In the loving memory of Jack Bauer. Wherever you are now, if you need help hiding, you can count on us !

## What is it ?

When you're displaying content from a database, after some time, you might end up with some contents in HTML, other in markdown and maybe even worst ...
Jack takes your content and only the format it should be in and returns you the proper output.

The formats supported are based on my own needs. So for now, it's only HTML and Markdown.
Feel free to fork the project and add new formats. I'd be glad to merge it.

## Basic Usage

    require 'jack'
    @content = Jack.render "my page content in HTML", "html"
    @content = Jack.render "my page content in Markdown", "markdown"

That's all !


## Syntax Highlighting

We use [albino](http://github.com/github/albino) (and so [pygments](http://pygments.org/)) to do some syntax highlighting on the code in the page.
You can specify the language in which the code is.

In HTML :

    [code lang="ruby"]This is ruby code[/code]
    [code language="html"]This is HTML code[/code]


In Markdown :

I'm still trying to figure out the best way to specify the language with the markdown code syntax.
The idea would be something like this format :

        "ruby"
        This is ruby code

## Contributing

Once you've made your great commits:

1. [Fork][0] Jack
2. Create a topic branch - `git checkout -b my_branch`
3. Push to your branch - `git push origin my_branch`
4. Create an [Issue][1] with a link to your branch
5. That's it!


## Author

Damien MATHIEU :: 42@dmathieu.com :: @dmathieu

[0]: http://help.github.com/forking/
[1]: http://github.com/dmathieu/jack/issues