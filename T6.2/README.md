# UD6 A2 Conversiones. XPath-2

## Instalación BaseX

BaseX, es una base de datos XML ligera, de alto rendimiento y escalable y un procesador XQuery 3.1 con soporte completo para las extensiones W3C Update y Full-Text. Le permite almacenar, consultar y procesar grandes cantidades de datos textuales (XML, HTML, JSON, CSV, otros) y binarios. La GUI proporciona un editor XQuery para escribir aplicaciones complejas y proporciona varias visualizaciones para explorar datos de forma interactiva. RESTXQ permite el desarrollo de aplicaciones web en XQuery.

BaseX proporciona una implementación de los lenguajes W3 XPath y XQuery, que están estrechamente relacionados con el almacén de la base de datos subyacente.

Visualiza el siguiente tutorial sobre cómo usar [BaseX](https://youtu.be/LNtsKx8zm-4) e instala la aplicación en tu equipo.
También puedes visualizar este otro [vídeo](https://youtu.be/QnejACE4xME) 


## Tarea
Mediante BaseX, resuelve las siguientes [consultas XPATH](ConsultasXPATH-Universidad.pdf) sobre el fichero [universidad.xml](universidad.xml)

Lístalas a continuación

1. "/universidad/nombre/text()"
2. "/universidad/pais/text()"
3. "/universidad/carreras/carrera/nombre/text()"
4. "/universidad/carreras/carrera/plan/text()"
5. "/universidad/alumnos/alumno/nombre/text()"
6. "/universidad/carreras/carrera/@id"
7. "/universidad/carreras/carrera[@id='c01']"
8. "/universidad/carreras/carrera[@id='c02']/centro/text()"
9. "/universidad/carreras/carrera[subdirector]/nombre/text()"
10. "/universidad/alumnos/alumno[proyecto]/nombre/text()"
11. "distinct-values(/universidad/alumnos/alumno/estudios/carrera/@codigo)"
12. "/universidad/alumnos/alumno[@beca='si']/(apellido1 | apellido2 | nombre)"
13. "/universidad/asignaturas/asignatura[@titulacion='c04']/nombre/text()"
14. "/universidad/asignaturas/asignatura[trimestre='2']/nombre/text()"
15. "/universidad/asignaturas/asignatura[creditos_teoricos != 4]/nombre/text()"
16. "/universidad/alumnos/alumno[last()]/estudios/carrera/@codigo"
17. "/universidad/alumnos/alumno[sexo='Mujer']/estudios/asignaturas/asignatura/@codigo"
18. "/universidad/alumnos/alumno[estudios/asignaturas/asignatura/@codigo='a02']/nombre/text()"
19. "distinct-values(/universidad/alumnos/alumno/estudios/asignaturas/asignatura/@titulacion)"
20. "/universidad/alumnos/alumno[sexo='Hombre']/(apellido1 | apellido2)"
21. "//carrera[@id=//nombre[text()="Victor Manuel"]/..//carrera/@codigo]/nombre"
22. "//asignatura[@id=//*[nombre="Luisa"]//asignatura/@codigo]/nombre"
23. "//alumno[.//asignatura[@codigo=//asignatura[nombre="Ingeniería del Software"]/@id]]/apellido1/text()"
24. "//carreras/carrera[@id=.//asignatura[@codigo=//asignatura[nombre="Tecnología de los Alimentos"]/@id]]//carrera/@codigo]/nombre"
25. "//alumno[.//carrera[@codigo=//carrera[not(subdirector)]/@id]]/nombre/text()"
26. "//alumno[.//asignatura[@codigo=//asignatura[creditos_practicos=0]/@id]][.//carrera[@codigo=//carrera[nombre="I.T. Informática"]/@id]]/nombre"
27. "//carrera[plan<2002]/@id"
