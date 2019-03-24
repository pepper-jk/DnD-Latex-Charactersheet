# DnD Latex Charactersheet

DnD Character sheet based on Latex and on the publicly available official Character Sheet.

# Where do I get base.pdf?

- download the [original](http://dnd.wizards.com/articles/features/character_sheets)  
  or download the alternative with [honor and sanity](https://www.reddit.com/r/DnD/comments/38wpjr/5e_character_sheet_form_fillable_with_honor/)
- rename the sheets of your choice to base.pdf, details.pdf and spells.pdf  
  or change the filename used in the latex file

# Using the build script

If your are using Linux, you can use the included build script to download the needed pdf files and build the "Character Sheet.pdf" for you:

```
$ ./build.sh
```

You also can build from any tex file you specify:

```
$ ./build.sh <path_to_tex_file>
```
