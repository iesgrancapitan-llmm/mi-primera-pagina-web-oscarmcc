# UD5 A5. Validación. Conceptos

1. **Indica con una X las afirmaciones verdaderas:**

- [X] Los DTDs son más ricos y poderosos que los XML Schemas

- [X] Los DTDs están escritos de acuerdo a la sintaxis XML

- [X] XML Schemas soportan tipos de datos

- [X] XML Schemas soportan namespaces
- [ ] XML Schemas tienen el nodo raíz schema con la URL que contiene la definición de todos los elementos y atributos que se pueden utilizar en un esquema. Eso quiere decir que para programar en XML se necesita estar conectado a Internet.
- [X] En XSD, el atributo xmlns crea un espacio de nombres para cada URL referenciada. Así si hubiese dos elementos con el mismo nombre se diferencian claramente.



2. A continuación aparece la declaración de un esquema XSD. Indica los siguientes elementos:

- prólogo. Define la versión del lenguaje XML y el juego de caracteres utilizado
  ```
  <?xml version="1.0" encoding="UTF-8"?>
  ```
- prefijo del espacio de nombres (opcional)
  ```
  xs
  ```
- espacio de nombres XMLSchema
  ```
  http://www.w3.org/2001/XMLSchema
  ```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
		...
<xs:schema />
```
3. A continuación aparece la vinculación de un esquema a un documento XML. Indica (con una X) si está en nuestro sistema de ficheros local o es un esquema público.

- [X] esquema local

- [ ] esquema público
```xml
<factura num="num_fact_1234"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:noNamespaceSchemaLocation="factura.xsd">
	...
</factura>
```

- [ ] esquema local

- [X] esquema público
```xml
<factura num="num_fact_1234"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.miempresa.com/factura.xsd">
...
</factura>	
```
  
5. De los siguientes tipos predefinidos por el espacio de nombres XMLSchema del W3C, marca con una X los numéricos:
- [ ] normalizedString
- [ ] dateTimeStamp
- [ ] language
- [ ] IDREFS
- [ ] dayTimeDuration
- [ ] NMTOKEN
- [ ] NMTOKENS
- [ ] Name
- [ ] NCName
- [ ] ID
- [ ] IDREF
- [ ] ENTITY
- [X] integer
- [ ] yearMonthDuration
- [X] nonPositiveInteger
- [X] negativeInteger
- [X] long
- [X] int
- [X] short
- [X] byte
- [ ] token
- [X] nonNegativeInteger
- [X] unsignedLong
- [X] unsignedInt
- [ ] ENTITIES
- [X] unsignedShort
- [X] unsignedByte
- [X] positiveInteger

6. Adjunta un fichero .xsd con el siguiente diseño:
   
   [XSD de coches](cochesejemploxsd.xsd)
```xml
<!-- definición de elementos simples -->
<!-- definición de atributos -->
<!-- definición de elementos  complejos -->
<!-- definición de los tipos simples -->
<!-- definición de los tipos complejos -->
<!-- elemento raíz -->
```

7. Con respecto a la validación con XSD indica:
- Un esquema es un documento *XML* al que se le coloca la extensión **.xsd** . Al ser un archivo XML tiene la estructura habitual de todo documento XML con la obligación de que el elemento **raíz** se llame **schema** .
- Etiqueta que identifica la raíz de un documento XML Schema: 
~~~
<schema>
~~~
- Etiquetas que identifican las partes de un esquema:
  - Elementos, definidos con etiquetas **xs:element**. Para indicar los elementos permitidos en los documentos que sigan el esquema.
  - Atributos, etiqueta **xs:attribute**.
  - Tipos simples, que permiten definir los tipos simples de datos que podrá utilizar el documento XML. Lo hace la etiqueta **xs:simpleType** .
  - Tipos complejos, mediante la etiqueta **xs:complexType**
  - Documentación, información utilizable por aplicaciones que manejen los esquemas. Etiquetas **xs:annotation** y **xs:documentation**.
- Componentes locales y globales en un esquema:
  - En ámbito **global**. Se trata de los elementos del esquema que se coloquen dentro de la etiqueta raíz schema y que no están dentro de ninguna otra. Estos elementos se pueden utilizar en cualquier parte del esquema.
  - En ámbito **local** . Se trata de elementos definidos dentro de otros elementos. En ese caso se pueden utilizar sólo dentro del elemento en el que están inmersos y no en todo el documento. Es decir si, por ejemplo, si dentro de la definición de un atributo colocamos la definición de un tipo de datos, este tipo de datos sólo se puede utilizar dentro del elemento xs:attribute en el que se encuentra la definición del tipo de datos.
- Dentro de la etiqueta xs:element, indica:
  - atributos obligatorios **name** y **type**.
  - atributos optativos **default, minOccurs, maxOccurs, ref** entre otros

8. Definición de un elemento vacío en XSD.
   
   Un elemento complejo vacío no puede tener contenido, sólo atributos.


De interés
- https://jorgesanchez.net/manuales/xml/xml-validacion.html
- https://www.w3schools.com/xml/el_restriction.asp
- https://lm-xml-apuntes.readthedocs.io/apuntes/40_esquemas_xml.html#tipos-de-elementos
