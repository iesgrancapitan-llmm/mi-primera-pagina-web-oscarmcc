# Unidad 4 Actividad 1
![Imagen](<Imagen feedly.jpg>)
___
Esta es la imagen de el feedly creado
___
## RSS
[Fichero rss](ficherorss)

![Validacion](Validación%20rss.png)
___
Esta es la imagen donde podemos ver que hemos chequeado el fichero rss

La fuente donde hemos extraido el fichero es [la siguiente](https://feeds.elpais.com/mrss-s/pages/ep/site/elpais.com/section/espana/portada)
___
## ATOM
[Fichero Atom](ficheroatom)

![Validacion](<Validacion atom.png>)
___
Aqui se encuentra la fuente de donde hemos extraido el [fichero XML](https://www.aemet.es/documentos_d/eltiempo/prediccion/avisos/rss/CAP_AFAE_ATOM.xml)
___
## Etiquetas RSS
~~~
El elemento <channel> que describe la fuente o canal RSS. 
El elemento <channel> tiene tres elementos obligatorios:
- Un título o elemento <title>.
- Un enlace o elemento <link>.
- Una descripción o elemento <description>.
Además nos encontramos con otras tres etiquetas como:
- La etiqueta <category> que define una o más categorías del canal.
- La etiqueta <media>
- La etiqueta <pubDate> que define la última fecha de publicación en el canal.
- La etiqueta <image> que presenta una imagen cuando los agregadores muestren un canal.

~~~

## Etiquetas ATOM
~~~
La estructura de un documento Atom es parece a la de un archivo RSS, al ser ambos lenguajes derivados de XML. La estructura de un documento Atom sería la siguiente:
- La declaración XML.
- El elemento raíz <feed> con algunos elementos para sus metadatos.
- El contenido en forma de entradas con elementos <entry>
- La etiqueta <id> que es el identificador único del feed. Es obligatorio.
- La etiqueta <title> que es el título del feed. Es obligatorio.
- La etiqueta <link> que es el enlace a un recurso externo.
- La etiqueta <updated> que nos indica la fecha y hora de la última actualización. Es obligatorio.
- La etiqueta <summary> que es un texto breve descriptivo de la entrada
~~~