# Definición DTD

## Actividad 1
~~~

<?xml version="1.0" encoding="UTF-8"?>
<deportistas>
    <deportista>
        <deporte>Atletismo</deporte>
        <nombre>Jesse Owens</nombre>
    </deportista>
    <deportista>
        <deporte>Natación</deporte>
        <nombre>Mark Spitz</nombre>
    </deportista>
</deportistas>

<?xml version="1.0" encoding="UTF-8"?>
<peliculas>
    <pelicula>
        <titulo>Con faldas y a lo loco</titulo>
        <director>Billy Wilder</director>
    </pelicula>
    <pelicula>
        <titulo>Sopa de ganso</titulo>
        <director>Leo McCarey</director>
    </pelicula>
</peliculas>

<?xml version="1.0" encoding="UTF-8"?>
<texto>
    <Titulo>XML explicado a los niños</Titulo>
    <párrafo>El <abreviatura>XML</abreviatura> define cómo crear lenguajes de marcas.</párrafo>
    <párrafo>Las marcas se añaden a un documento de texto para añadir información.</párrafo>
    <enlace>http://www.example.org</enlace>
</texto>

<?xml version="1.0" encoding="UTF-8"?>
<geografia_mundial>
    <pais>
        <nombre>España</nombre>
        <continente>Europa</continente>
        <capital nombre="Madrid"/>
    </pais>
</geografia_mundial>

<?xml version="1.0" encoding="UTF-8"?>
<programas>
    <programa nombre="Firefox" licencia="GPL MPL" />
    <programa nombre="LibreOffice" licencia="LGPL" />
    <programa nombre="Inkscape" licencia="GPL" />
</programas>

<?xml version="1.0" encoding="UTF-8"?>
<mundiales-de-futbol>
    <mundial>
        <pais>España</pais>
        <año>1982</año>
    </mundial>
</mundiales-de-futbol>

<?xml version="1.0" encoding="UTF-8"?>
<mediosDeTransporte>
    <bicicleta velocidad="v&lt;100km/h" />
    <patinete velocidad_maxima="50 km/h" />
</mediosDeTransporte>
~~~

## Actividad 2
~~~
<?xml version="1.0" encoding="UTF-8"?>
<pedido>
    <cliente nombre="Juan Delgado Martínez" />
    <articulo tipo="bicicleta" modelo="A2023" />
    <direccion>
        <calle>Barco</calle>
        <numero>4</numero>
        <piso>3</piso>
        <letra>A</letra>
    </direccion>
    <fecha_entrega>19-5-2000</fecha_entrega>
</pedido>
~~~

## Actividad 3
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mensaje [
<!ELEMENT mensaje (remitente, destinatario, asunto, texto)>
<!ELEMENT remitente (nombre, email)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT email (#PCDATA)>
<!ELEMENT destinatario (nombre, email)>
<!ELEMENT asunto (#PCDATA)>
<!ELEMENT texto (parrafo)>
<!ELEMENT parrafo (#PCDATA)>
]>
<mensaje>
  <remitente>
    <nombre>Alfredo Reino</nombre>
    <email>alf@ibium.com</email>
  </remitente>
  <destinatario>
    <nombre>Bill Clinton</nombre>
    <email>president@whitehouse.gov</email>
  </destinatario>
  <asunto>Hola Bill</asunto>
  <texto>
    <parrafo>¿Hola qué tal?</parrafo>
  </texto>
</mensaje>
~~~

## Actividad 4
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE carta [
<!ELEMENT carta (alimento)+>
<!ELEMENT alimento (nombre , precio , descripcion , calorias)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT precio (#PCDATA)>
<!ATTLIST precio moneda CDATA #REQUIRED>
<!ELEMENT descripcion (#PCDATA)>
<!ELEMENT calorias (#PCDATA)>
]>
<carta>
  <alimento>
    <nombre>Gofres Belgas</nombre>
    <precio moneda="euro">5.95</precio>
    <descripcion>Dos de nuestros famosos Gofres Belgas con abundante sirope</descripcion>
    <calorias>650</calorias>
  </alimento>
  <alimento>
    <nombre>Gofres Belgas con fresas</nombre>
    <precio moneda="euro">7.95</precio>
    <descripcion>Ligeros gofres belgas cubiertos de fresas y nata montada</descripcion>
    <calorias>900</calorias>
  </alimento>
  <alimento>
    <nombre>Gofres Belgas con frutas del bosque</nombre>
    <precio moneda="euro">8.95</precio>
    <descripcion>Ligeros gofres belgas cubiertos con frutas del bosque y nata montada</descripcion>
    <calorias>900</calorias>
  </alimento>
  <alimento>
    <nombre>Tostada Francesa</nombre>
    <precio moneda="euro">4.50</precio>
    <descripcion>Dos gruesas rebanadas de nuestro pan francés casero</descripcion>
    <calorias>600</calorias>
  </alimento>
  <alimento>
    <nombre>Desayuno de la casa</nombre>
    <precio moneda="euro">6.95</precio>
    <descripcion>Dos huevos, bacon o salchicha, tostada y patatas fritas</descripcion>
    <calorias>950</calorias>
  </alimento>
</carta>
~~~

## Actividad 5
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE arboles [
<!ELEMENT arboles (arbol)+>
<!ELEMENT arbol (nombre , nombre_comun , vegetacion , altura , forma_y_estructura , color_primavera , color_otono? , resistencia_heladas)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT nombre_comun (#PCDATA)>
<!ELEMENT vegetacion (#PCDATA)>
<!ELEMENT altura (#PCDATA)>
<!ELEMENT forma_y_estructura (#PCDATA)>
<!ELEMENT color_primavera (#PCDATA)>
<!ELEMENT resistencia_heladas (#PCDATA)>
<!ELEMENT color_otono (#PCDATA)>
]>
<arboles>
  <arbol>
    <nombre>Acer monspessulanum</nombre>
    <nombre_comun>Arce de Montpellier, Arce menor</nombre_comun>
    <vegetacion>Caducifolio</vegetacion>
    <altura>De 6 a 10 metros</altura>
    <forma_y_estructura>Copa esférica. Tronco principal recto con bifurcaciones. Ramaje colgante</forma_y_estructura>
    <color_primavera>Haz verde brillante, envés verde blanquecino</color_primavera>
    <resistencia_heladas>Heladas fuertes (hasta -15°C)</resistencia_heladas>
  </arbol>
  <arbol>
    <nombre>Olea europea</nombre>
    <nombre_comun>Olivo</nombre_comun>
    <vegetacion>Perenne</vegetacion>
    <altura>De 8 a 15 metros</altura>
    <forma_y_estructura>Copa irregular. Tronco principal irregular con bifurcaciones. Ramaje tortuoso</forma_y_estructura>
    <color_primavera>Haz verde oscuro, envés verde plateado</color_primavera>
    <resistencia_heladas>Heladas medias (hasta -10°C)</resistencia_heladas>
  </arbol>
  <arbol>
    <nombre>Platanus orientalis</nombre>
    <nombre_comun>Plátano</nombre_comun>
    <vegetacion>Caducifolio</vegetacion>
    <altura>De 20 a 25 metros</altura>
    <forma_y_estructura>Copa ovoide. Tronco principal recto. Ramaje expandido</forma_y_estructura>
    <color_primavera>Haz verde medio, envés verde claro</color_primavera>
    <color_otono>Ocre</color_otono>
    <resistencia_heladas>Heladas fuertes (hasta -20°C)</resistencia_heladas>
  </arbol>
  <arbol>
    <nombre>Quercus ilex</nombre>
    <nombre_comun>Encina</nombre_comun>
    <vegetacion>Perenne</vegetacion>
    <altura>En torno a 25 metros</altura>
    <forma_y_estructura>Copa esférica o elíptica irregular. Tronco principal recto. Ramaje tortuoso</forma_y_estructura>
    <color_primavera>Plateado en hojas jóvenes. En hojas antiguas, haz verde oscuro, envés plateado</color_primavera>
    <resistencia_heladas>Heladas fuertes (hasta -15°C)</resistencia_heladas>
  </arbol>
</arboles>
~~~

## Actividad 6
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE numeros [
<!ELEMENT numeros (#PCDATA)>
]>
<numeros>
    <numero>25</numero>
</numeros>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE letras [
<!ELEMENT letras (letra+)>
<!ELEMENT letra (#PCDATA)>
]>
<letras>
    <letra>m</letra>
    <letra>uve doble</letra>
</letras>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE colores [
<!ELEMENT colores (color*)>
<!ELEMENT color (#PCDATA)>
]>
<colores>
    <color>azul marino</color>
    <color>negro</color>
    <color>amarillo</color>
</colores>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE flores [
<!ELEMENT flores (flor+)>
<!ELEMENT flor (#PCDATA)>
]>
<flores>
    <!-- Agrega aquí las flores -->
</flores>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE animales [
<!ELEMENT animales (perro, gato)>
<!ELEMENT perro (#PCDATA)>
<!ELEMENT gato (#PCDATA)>
]>
<animales>
    <perro>Caniche</perro>
    <gato>Siamés</gato>
</animales>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE escritores [
<!ELEMENT escritores (escritor+)>
<!ELEMENT escritor (nombre, nacimiento)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT nacimiento (#PCDATA)>
]>
<escritores>
    <escritor>
        <nombre>Mario Vargas Llosa</nombre>
        <nacimiento>28 de marzo de 1936</nacimiento>
    </escritor>
    <escritor>
        <nombre>Milan Kundera</nombre>
        <nacimiento>1 de abril de 1929</nacimiento>
    </escritor>
</escritores>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE musicos [
<!ELEMENT musicos (musico+)>
<!ELEMENT musico ((nombre | apodo), fechaNacimiento)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT apodo (#PCDATA)>
<!ELEMENT fechaNacimiento (#PCDATA)>
]>
<musicos>
    <musico>
        <nombre>Antonio Vivaldi</nombre>
        <apodo>El cura pelirrojillo</apodo>
        <fechaNacimiento>4 de marzo de 1678</fechaNacimiento>
    </musico>
    <musico>
        <nombre>Johann Sebastian Bach</nombre>
        <apodo>El viejo peluca</apodo>
        <fechaNacimiento>21 de marzo de 1685</fechaNacimiento>
    </musico>
</musicos>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE agenda [
<!ELEMENT agenda (contacto+)>
<!ELEMENT contacto (nombre, telefonoFijo*, telefonoMovil+)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT telefonoFijo (#PCDATA)>
<!ELEMENT telefonoMovil (#PCDATA)>
]>
<agenda>
    <contacto>
        <nombre>Ayuntamiento</nombre>
        <telefonoFijo>010</telefonoFijo>
    </contacto>
    <contacto>
        <nombre>Emergencias</nombre>
        <telefonoFijo>112 (Unión Europea)</telefonoFijo>
        <telefonoMovil>Desconocido</telefonoMovil>
        <telefonoFijo>911 (Estados Unidos)</telefonoFijo>
    </contacto>
</agenda>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE sistemaSolar [
<!ELEMENT sistemaSolar (cuerpo*)>
<!ELEMENT cuerpo (planeta|satelite|asteroide)>
<!ELEMENT planeta (#PCDATA)>
<!ELEMENT satelite (#PCDATA)>
<!ELEMENT asteroide (#PCDATA)>
]>
<sistemaSolar>
    <cuerpo>
        <planeta>Tierra</planeta>
        <satelite>Luna</satelite>
    </cuerpo>
    <cuerpo>
        <asteroide>Ceres</asteroide>
    </cuerpo>
</sistemaSolar>
~~~

## Actividad 7
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE favoritos [
<!ELEMENT favoritos (marcador+)>
<!ELEMENT marcador (nombre, uri)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT uri (#PCDATA)>
]>
<marcadores>
    <marcador>
        <nombre>W3C</nombre>
        <uri>http://www.w3.org/</uri>
    </marcador>
    <marcador>
        <nombre>Web Hypertext Application Technology Working Group (WHATWG)</nombre>
        <uri>http://www.whatwg.org/</uri>
    </marcador>
</marcadores>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE efemerides [
<!ELEMENT efemerides (efemeride+)>
<!ELEMENT efemeride (fecha, hecho)>
<!ELEMENT fecha (#PCDATA)>
<!ELEMENT hecho (#PCDATA)>
]>
<efemerides>
    <efemeride>
        <fecha>20 de julio de 1969</fecha>
        <hecho>Llegada del hombre a la Luna</hecho>
    </efemeride>
    <efemeride>
        <fecha>12 de octubre de 1492</fecha>
        <hecho>Llegada de Colón a América</hecho>
    </efemeride>
    <efemeride>
        <fecha>6 de abril de 1909</fecha>
        <hecho>Llegada de Robert Peary al Polo Norte</hecho>
    </efemeride>
</efemerides>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE aeropuertos [
<!ELEMENT aeropuertos (aeropuerto*)>
<!ELEMENT aeropuerto (nombre, cerrado?)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT cerrado (#PCDATA)>
]>
<aeropuertos>
    <aeropuerto>
        <nombre>Berlín Schönefeld (SFX)</nombre>
    </aeropuerto>
    <aeropuerto>
        <nombre>Berlín Tempelhof (THF)</nombre>
        <cerrado />
    </aeropuerto>
</aeropuertos>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE vuelos [
<!ELEMENT vuelos (vuelo*)>
<!ELEMENT vuelo (origen, destino)>
<!ELEMENT origen (#PCDATA)>
<!ELEMENT destino (#PCDATA)>
]>
<vuelos>
    <vuelo>
        <origen>Valencia (VLC)</origen>
        <destino>Londres Heathrow (LHR)</destino>
    </vuelo>
    <vuelo>
        <destino>Berlín Schönefeld (SFX)</destino>
        <origen>Paris Charles de Gaulle (CDG)</origen>
    </vuelo>
</vuelos>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE reyesEspañoles [
<!ELEMENT reyesEspañoles ((rey|reina)*)>
<!ELEMENT rey (nombre, padre, madre)>
<!ELEMENT reina (nombre, padre, madre)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT padre (#PCDATA)>
<!ELEMENT madre (#PCDATA)>
]>
<reyesEspañoles>
    <rey>
        <nombre>Felipe III</nombre>
        <padre>Felipe II</padre>
        <madre>Ana de Austria</madre>
    </rey>
    <reina>
        <nombre>Juana la Loca</nombre>
        <padre>Fernando el Católico</padre>
        <madre>Isabel la Católica</madre>
    </reina>
    <rey>
        <nombre>Carlos I</nombre>
        <padre>Felipe el Hermoso</padre>
        <madre>Juan la Loca</madre>
    </rey>
</reyesEspañoles>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE paises [
<!ELEMENT paises (pais*)>
<!ELEMENT pais (nombre, unionEuropea?, otan?)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT unionEuropea EMPTY>
<!ELEMENT otan EMPTY>
]>
<paises>
    <pais>
        <nombre>España</nombre>
        <unionEuropea />
        <otan />
    </pais>
    <pais>
        <nombre>Noruega</nombre>
        <otan />
    </pais>
    <pais>
        <nombre>Austria</nombre>
        <unionEuropea />
    </pais>
</paises>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE colores [
<!ELEMENT colores (color*)>
<!ELEMENT color (nombreSvg, codigo)>
<!ELEMENT nombreSvg (#PCDATA)>
<!ELEMENT codigo (rgb | cmyk)>
<!ELEMENT rgb (#PCDATA)>
<!ELEMENT cmyk (#PCDATA)>
]>
<colores>
    <color>
        <nombreSvg>Purple</nombreSvg>
        <codigo>
            <rgb>#800080</rgb>
        </codigo>
    </color>
    <color>
        <nombreSvg>Purple</nombreSvg>
        <codigo>
            <cmyk>#00FF007F</cmyk>
        </codigo>
    </color>
</colores>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE contabilidad [
<!ELEMENT contabilidad (apunte*)>
<!ELEMENT apunte ((ingreso | gasto), fecha, cantidad, concepto)>
<!ELEMENT ingreso EMPTY>
<!ELEMENT gasto EMPTY>
<!ELEMENT fecha (#PCDATA)>
<!ELEMENT cantidad (#PCDATA)>
<!ELEMENT concepto (#PCDATA)>
]>
<contabilidad>
    <apunte>
        <ingreso />
        <fecha>24 de febrero de 2011</fecha>
        <cantidad>1800,00 €</cantidad>
        <concepto>Salario</concepto>
    </apunte>
    <apunte>
        <gasto />
        <fecha>28 de febrero de 2011</fecha>
        <cantidad>74,25 €</cantidad>
        <concepto>Recibo luz</concepto>
    </apunte>
</contabilidad>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mensajes [
<!ELEMENT mensajes (mensaje*)>
<!ELEMENT mensaje (de, para, hora, texto)>
<!ELEMENT de (#PCDATA)>
<!ELEMENT para (#PCDATA)>
<!ELEMENT hora (#PCDATA)>
<!ELEMENT texto (#PCDATA | strong)*>
<!ELEMENT strong (#PCDATA)>
]>
<mensajes>
    <mensaje>
        <de>Pepe (pepe@example.com)</de>
        <para>Juan (juan@example.com)</para>
        <hora>28/02/2011 17:48:23,61</hora>
        <texto>¿Hola, Juan, qué haces?</texto>
    </mensaje>
    <mensaje>
        <de>Juan (juan@example.com)</de>
        <para>Pepe (pepe@example.com)</para>
        <hora>28/02/2011 17:54:20,87</hora>
        <texto>Aquí, aprendiendo <strong>XML</strong></texto>
    </mensaje>
</mensajes>
~~~

## Actividad 8

### Interna del documento 1
~~~
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE nota [
<!ELEMENT nota (para, de, titulo, contenido)>
<!ELEMENT para (#PCDATA)>
<!ELEMENT de (#PCDATA)>
<!ELEMENT titulo (#PCDATA)>
<!ELEMENT contenido (#PCDATA)>
]>
<nota>
    <para>Pedro</para>
    <de>Laura</de>
    <titulo>Recordatorio</titulo>
    <contenido>A las 7:00 en la puerta del teatro</contenido>
</nota>
~~~

### Externa del documento 1
~~~
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE nota SYSTEM "nota.dtd">
<nota>
    <para>Pedro</para>
    <de>Laura</de>
    <titulo>Recordatorio</titulo>
    <contenido>A las 7:00 en la puerta del teatro</contenido>
</nota>



<!ELEMENT nota (para, de, titulo, contenido)>
<!ELEMENT para (#PCDATA)>
<!ELEMENT de (#PCDATA)>
<!ELEMENT titulo (#PCDATA)>
<!ELEMENT contenido (#PCDATA)>
~~~

### Interna del documento 2
~~~
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE etiqueta [
<!ELEMENT etiqueta (nombre, calle, ciudad, pais, codigo)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT calle (#PCDATA)>
<!ELEMENT ciudad (#PCDATA)>
<!ELEMENT pais (#PCDATA)>
<!ELEMENT codigo (#PCDATA)>
]>
<etiqueta>
    <nombre>Roberto García</nombre>
    <calle>c/ Mayor, 27</calle>
    <ciudad>Coslada</ciudad>
    <pais>España</pais>
    <codigo>39343</codigo>
</etiqueta>
~~~

### Externa del documento 2
~~~
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE etiqueta SYSTEM "etiqueta.dtd">
<etiqueta>
    <nombre>Roberto García</nombre>
    <calle>c/ Mayor, 27</calle>
    <ciudad>Coslada</ciudad>
    <pais>España</pais>
    <codigo>39343</codigo>
</etiqueta>


<!ELEMENT etiqueta (nombre, calle, ciudad, pais, codigo)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT calle (#PCDATA)>
<!ELEMENT ciudad (#PCDATA)>
<!ELEMENT pais (#PCDATA)>
<!ELEMENT codigo (#PCDATA)>
~~~

### Interna del documento 3
~~~
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE lista_personas [
<!ELEMENT lista_personas (persona)>
<!ELEMENT persona (nombre, fecha_nacimiento, sexo)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT fecha_nacimiento (#PCDATA)>
<!ELEMENT sexo (#PCDATA)>
]>
<lista_personas>
    <persona>
        <nombre>Antonio Moreno</nombre>
        <fecha_nacimiento>27-11-2008</fecha_nacimiento>
        <sexo>Varón</sexo>
    </persona>
</lista_personas>
~~~

### Externa del documento 3
~~~
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE lista_personas SYSTEM "lista_personas.dtd">
<lista_personas>
    <persona>
        <nombre>Antonio Moreno</nombre>
        <fecha_nacimiento>27-11-2008</fecha_nacimiento>
        <sexo>Varón</sexo>
    </persona>
</lista_personas>


<!ELEMENT lista_personas (persona)>
<!ELEMENT persona (nombre, fecha_nacimiento, sexo)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT fecha_nacimiento (#PCDATA)>
<!ELEMENT sexo (#PCDATA)>
~~~

## Actividad 9

### DTD Interna
~~~
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE matricula [
<!ELEMENT matricula (personal, pago)>
<!ELEMENT personal (dni, nombre, titulacion, curso_academico, domicilios)>
<!ELEMENT dni (#PCDATA)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT titulacion (#PCDATA)>
<!ELEMENT curso_academico (#PCDATA)>
<!ELEMENT domicilios (domicilio+)>
<!ELEMENT domicilio (nombre)>
<!ATTLIST domicilio tipo (familiar | habitual) #REQUIRED>
<!ELEMENT pago (tipo_matricula)>
<!ELEMENT tipo_matricula (#PCDATA)>
]>
<matricula>
    <personal>
        <dni>99223366M</dni>
        <nombre>Juan Pardo Martín</nombre>
        <titulacion>Ingeniería Informática</titulacion>
        <curso_academico>1997/1998</curso_academico>
        <domicilios>
            <domicilio tipo="familiar">
                <nombre>C/ Principal nº1</nombre>
            </domicilio>
            <domicilio tipo="habitual">
                <nombre>C/ Secundaria nº2</nombre>
            </domicilio>
        </domicilios>
    </personal>
    <pago>
        <tipo_matricula>Matrícula Ordinaria</tipo_matricula>
    </pago>
</matricula>
~~~

### DTD Externa
~~~
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE matricula SYSTEM "matricula.dtd">
<matricula>
    <personal>
        <dni>99223366M</dni>
        <nombre>Juan Pardo Martín</nombre>
        <titulacion>Ingeniería Informática</titulacion>
        <curso_academico>1997/1998</curso_academico>
        <domicilios>
            <domicilio tipo="familiar">
                <nombre>C/ Principal nº1</nombre>
            </domicilio>
            <domicilio tipo="habitual">
                <nombre>C/ Secundaria nº2</nombre>
            </domicilio>
        </domicilios>
    </personal>
    <pago>
        <tipo_matricula>Matrícula Ordinaria</tipo_matricula>
    </pago>
</matricula>


<!ELEMENT matricula (personal, pago)>
<!ELEMENT personal (dni, nombre, titulacion, curso_academico, domicilios)>
<!ELEMENT dni (#PCDATA)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT titulacion (#PCDATA)>
<!ELEMENT curso_academico (#PCDATA)>
<!ELEMENT domicilios (domicilio+)>
<!ELEMENT domicilio (nombre)>
<!ATTLIST domicilio tipo (familiar | habitual) #REQUIRED>
<!ELEMENT pago (tipo_matricula)>
<!ELEMENT tipo_matricula (#PCDATA)>
~~~

## Actividad 10
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE persona [
<!ELEMENT persona EMPTY>
<!ATTLIST persona dni CDATA #REQUIRED
                      nombre CDATA #IMPLIED>
]>
<persona dni="03141592E" />

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE pelicula [
<!ELEMENT pelicula EMPTY>
<!ATTLIST pelicula titulo CDATA #IMPLIED>
]>
<pelicula titulo="La diligencia" />

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE cuadros [
<!ELEMENT cuadros (cuadro*)>
<!ELEMENT cuadro EMPTY>
<!ATTLIST cuadro titulo CDATA #REQUIRED
                     autor CDATA #REQUIRED>
]>
<cuadros>
    <cuadro titulo="Adán y Eva" autor="Alberto Durero" />
    <cuadro titulo="Adán y Eva" autor="Lucas Cranach, el viejo" />
</cuadros>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE listaCompra [
<!ELEMENT listaCompra (item*)>
<!ELEMENT item EMPTY>
<!ATTLIST item nombre CDATA #REQUIRED
                cantidad CDATA #IMPLIED>
]>
<listaCompra>
    <leche cantidad="12 litros" />
    <pan cantidad="3 barras de cuarto" />
</listaCompra>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE futbol [
<!ELEMENT futbol (jugador*)>
<!ELEMENT jugador EMPTY>
<!ATTLIST jugador nombre CDATA #REQUIRED
                  codigo CDATA #REQUIRED>
]>
<futbol>
    <jugador nombre="Alfredo Di Stéfano" codigo="1"/>
    <jugador nombre="Edson Arantes do Nascimento, Pelé" codigo="2" />
    <jugador nombre="Diego Armando Maradona" codigo="3" />
    <jugador nombre="Johan Cruyff" codigo="4" />
</futbol>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE futbol [
<!ELEMENT futbol ((jugador|equipo)*)>
<!ELEMENT jugador EMPTY>
<!ELEMENT equipo EMPTY>
<!ATTLIST jugador nombre CDATA #REQUIRED
                  codigo CDATA #REQUIRED>
<!ATTLIST equipo nombre CDATA #REQUIRED
                jugadores CDATA #IMPLIED>
]>
<futbol>
    <jugador nombre="Alfredo Di Stéfano" codigo="ads"/>
    <jugador nombre="Edison Arantes do Nascimento" codigo="ean" />
    <jugador nombre="Diego Armando Maradona" codigo="dam" />
    <jugador nombre="Johan Cruyff" codigo="jc" />
    <equipo nombre="Società Sportiva Calcio Napoli" jugadores="Maradona" />
    <equipo nombre="Futbol Club Barcelona" jugadores="Cruyff, Maradona" />
</futbol>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE libro [
<!ELEMENT libro EMPTY>
<!ATTLIST libro autor CDATA #REQUIRED>
]>
<libro autor="Mario Vargas LLosa" />

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE inventores [
<!ELEMENT inventores (inventor*)>
<!ELEMENT inventor EMPTY>
<!ATTLIST inventor invento CDATA #REQUIRED
                    nombre CDATA #IMPLIED>
]>
<inventores>
    <inventor nombre="Robert Adler" invento="Mando a distancia" />
    <inventor nombre="Laszlo Josef Biro" invento="Bolígrafo" />
    <inventor nombre="Josephine Garis Cochran" invento="Lavaplatos" />
    <inventor invento="Fuego" />
</inventores>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE cosasPorHacer [
<!ELEMENT cosasPorHacer (cosa*)>
<!ELEMENT cosa EMPTY>
<!ATTLIST cosa fecha CDATA #REQUIRED
              asunto CDATA #REQUIRED
              fechaLimite CDATA #REQUIRED>
]>
<cosasPorHacer>
    <cosa fecha="20 de febrero de 2011" fechaLimite="1 de marzo de 2011" asunto="Preparar ejercicios de DTDs" />
    <cosa fecha="21 de febrero de 2011" fechaLimite="5 de marzo de 2011" asunto="Preparar tema XSLT" />
</cosasPorHacer>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE resoluciones [
<!ELEMENT resoluciones (resolucion*)>
<!ELEMENT resolucion EMPTY>
<!ATTLIST resolucion nombre NMTOKEN #REQUIRED
                      alto CDATA #REQUIRED
                      ancho CDATA #REQUIRED>
]>
<resoluciones>
    <resolucion nombre="VGA" alto="480" ancho="640" />
    <resolucion nombre="XGA" alto="1024" ancho="768" />
    <resolucion nombre="HD 1080" alto="1920" ancho="1080" />
</resoluciones>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE albumesMortadelo [
<!ELEMENT albumesMortadelo (album*)>
<!ELEMENT album (nombre, fecha)>
<!ATTLIST album nombre CDATA #REQUIRED
                fecha (1969 | 1970 | 1971 | 1972 | 1973 | 1974) #REQUIRED>
]>
<albumesMortadelo>
    <album nombre="El sulfato atómico" fecha="1969"/>
    <album nombre="La caja de diez cerrojos" fecha="1971"/>
    <album nombre="El otro yo del profesor Bacterio" fecha="1973"/>
    <album nombre="Los cacharros majaretas" fecha="1974"/>
</albumesMortadelo>
~~~

## Actividad 11

### Primer DTD con etiquetas sin atributos.
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE resultados [
<!ELEMENT resultados (partido*)>
<!ELEMENT partido (local, visitante, goles_local, goles_visitante)>
<!ELEMENT local (#PCDATA)>
<!ELEMENT visitante (#PCDATA)>
<!ELEMENT goles_local (#PCDATA)>
<!ELEMENT goles_visitante (#PCDATA)>
]>
<resultados>
    <partido>
        <local>Nottingham Presa</local>
        <visitante>Inter de Mitente</visitante>
        <goles_local>0</goles_local>
        <goles_visitante>1</goles_visitante>
    </partido>
    <partido>
        <local>Vodka Juniors</local>
        <visitante>Sparta da Risa</visitante>
        <goles_local>3</goles_local>
        <goles_visitante>3</goles_visitante>
    </partido>
    <partido>
        <local>Water de Munich</local>
        <visitante>Esteaua es del grifo</visitante>
        <goles_local>4</goles_local>
        <goles_visitante>2</goles_visitante>
    </partido>
</resultados>
~~~

### Segundo DTD con atributos para los goles.
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE resultados [
<!ELEMENT resultados (partido)+>
<!ELEMENT partido (local , visitante)>
<!ATTLIST partido goles_local CDATA #REQUIRED>
<!ATTLIST partido goles_visitante CDATA #REQUIRED>
<!ELEMENT local (#PCDATA)>
<!ELEMENT visitante (#PCDATA)>
]>
<resultados>
  <partido goles_local="0" goles_visitante="1">
    <local>Nottingham Presa</local>
    <visitante>Inter de Mitente</visitante>
  </partido>
  <partido goles_local="3" goles_visitante="3">
    <local>Vodka Juniors</local>
    <visitante>Sparta da Risa</visitante>
  </partido>
  <partido goles_local="4" goles_visitante="2">
    <local>Water de Munich</local>
    <visitante>IEsteaua es del grifo</visitante>
  </partido>
</resultados>
~~~

### Tercer DTD con toda la información como atributos
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE resultados [
<!ELEMENT resultados (partido*)>
<!ELEMENT partido EMPTY>
<!ATTLIST partido local CDATA #REQUIRED
                  visitante CDATA #REQUIRED
                  goles_local CDATA #REQUIRED
                  goles_visitante CDATA #REQUIRED>
]>
<resultados>
    <partido local="Nottingham Presa" visitante="Inter de Mitente" goles_local="0" goles_visitante="1" />
    <partido local="Vodka Juniors" visitante="Sparta da Risa" goles_local="3" goles_visitante="3" />
    <partido local="Water de Munich" visitante="Esteaua es del grifo" goles_local="4" goles_visitante="2" />
</resultados>
~~~