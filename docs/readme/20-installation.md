## installation

Build dependencies:  
- **GNUmake**
- **gawk**
- **bash**

Runtime dependencies:  
- **xfconf-query**
- **xfsettingsd** (*needs to be running in the background)

(*configure the installation in `config.mak`, if needed*)

```
$ git clone https://github.com/budRich/gtk-alt-font.git
$ cd gtk-alt-font
$ make
# make install
$ gtk-alt-font -h
usage: gtk-alt-font [OPTIONS] -- COMMAND


-f, --font    FONT    | override GTK_ALT_FONT
-h, --help            | print help and exit  
-t, --sleep   SECONDS | SECONDS before reverting back the font
--verbose             | detailed output to STDERR 
-v, --version         | print version info and exit  
```  
