To build your book
''''''''''''''''''

This little project is only made to ease rst2pdf work. It includes a proper rst2pdf python file that uses some stylesheets and block. I made this one to be able to create a pretty book with syntax highlighted code blocks


Howto create book
-----------------

You have to learn RST formatting, but it's not a problem, I guess. Inside src directory, there is a file named "index.rst" you can use to include files. This content you are reading now is "example.rst" file included inside "index.rst". I include file simply like that::
    
    .. include: example.rst

When you want to check result, you only have to call "make" command from command line::
    
    make

A book.pdf file will be generated. You can have a postscript version using this command::
    
    make ps

How to use code block
---------------------

Because ".. code-blocks::" directive is not usable with bundled rst2pdf version I include, you just need to use ".. code::" directive. You can put code inside that directive. Remember that this directive cannot (for now) include file. You have to put code inside you document.

Let's make a try::
    
    .. code:: python

       from os import path
       
       print "hello"
       
       for p in path:
           print path

This block yields:

.. code:: python

   from os import path
   
   print "hello"
   
   for p in path:
       print path

It's easy to append line numbers. Simply add "line-number" directive::
    
    .. code:: python
       :number-lines:

       from os import path
       
       print "hello"
       
       for p in path:
           print path


Produces:

.. code:: python
   :number-lines:

   from os import path
   
   print "hello"
   
   for p in path:
       print path

Some customizations
-------------------

If you need to use you country language (to produce nice name for chapters, table of contents...) you only have to edit Makefile or _utils/pygments-docutilsroles.sty file to add packages. As an example, you can add this lines at the top of .sty file:
    
.. code:: latex
    
    \usepackage[cyr]{aeguill}
    \usepackage[francais]{babel}


That append french support to your document.


