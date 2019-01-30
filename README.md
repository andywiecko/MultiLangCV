# MultiLangCV
Multi language LaTeX CV template: use single command to swap between languages.

### Preview

| English | Polish |
|:---:|:---:|
| [![CV-english](https://raw.githubusercontent.com/andywiecko/MultiLangCV/master/examples/CV-english.png)](https://raw.githubusercontent.com/andywiecko/MultiLangCV/master/examples/CV-english.pdf)  | [![CV-polish](https://raw.githubusercontent.com/andywiecko/MultiLangCV/master/examples/CV-polish.png)](https://raw.githubusercontent.com/andywiecko/MultiLangCV/master/examples/CV-polish.pdf) |

### Purpose of this pack

* Prepare CV document, which is ready to print in few languages.
* Modern, but modest layout
* automation

### Pack stucture
Pack is devided into 3 parts:
1. **Matter**:  includes CV contents
2. **Packages**: includes CV class macros
3. **Settings**: include CV settings like section definitions, icons, etc
(4. *main.tex*: main file to compile)
(5. *CV.cls*: CV document *LaTeX* class)


### How to use it?
##### Swaping between languages
One can select language by setting class option:
```
\documentclass[english]{CV}
```
To change language to polish just change english into polish:
```
\documentclass[polish]{CV}
```
##### Default sections, fields and other settings
Provided class contains pre-defined sections (e.g. `\publications`) and fields (e.g. `\phone{}`) with coresponding icons.

###### Personal data section
Personal data section includes many pre-defined field, which user can easly disable. 
When you do not want to print your phone number, just set empty field by: `\phone{}` (by default all contact informations are present in `Matter/contact.tex`).
To change the order of fields in `Personal Data` section just go to `Settings/FillContactOrder.sty`.

###### Default sections
There are several different pre-defined sections, which can be set by `\sectionname` for example `\publications`.
To change section name in selected language go to: `Setting/LANG/...` and just edit the `\def\<sectionname>Name{Section Name}` macro.

###### CV item
In most CV documents one should show experience, education and etc.  over the years.
This CV class provide `\timeitem[ <Details> ]{ <What?> }{ <When?> }` macro, which take care of some your history record.
Example:
`\time[Middle-earth studies, bachelor studies, thesis: \textit{History of Hobbits}]{University of Shire}{2013 -- 2015}`
Output:
[![timeitem](https://raw.githubusercontent.com/andywiecko/MultiLangCV/master/examples/timeitem.png)](https://raw.githubusercontent.com/andywiecko/MultiLangCV/master/examples/timeitem.png)

###### Image
By default image height is controlled by number of non-zero fields in `\personaldata` section.
To override this add aditional argument to `\image[ <height in number of rows> ]{ <image file> }`.

###### Quotations
TODO

###### Some dimensions
To modify width of corresponding fields, `timeitem`s go to `Settings/WidthSettings.sty`


### How to define own sections/fields?

There are defined some macro definitions, which can produce other macro, which produce the other macro.
Sounds complicated, but this is a very elegant way to define you own fields and sections.


###### Defining own section
TODO

###### Defining own fields
TODO

### How to add other language?
TODO

### Supported languages
(Feel free to append this list)
* polish
* english


