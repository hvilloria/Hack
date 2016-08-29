retos


¡Más carros!

Vamos a montar una empresa de alquiler de vehículos en Hack, pero necesitamos el diagrama de clases para construir el software con el que administraremos las reservas.

Después de reunirnos, decidimos que vamos a necesitar qué:

    Un determinado cliente puede tener en un momento dado hechas varias reservas.
    De cada cliente se desean almacenar su DNI, nombre, dirección y teléfono. Además dos clientes se diferencian por un código único.
    Cada cliente puede ser avalado por otro cliente de la empresa.
    Una reserva la realiza un único cliente pero puede involucrar varios coches.
    Es importante registrar la fecha de inicio y final de la reserva, el precio del alquiler de cada uno de los coches, los litros de gasolina en el depósito en el momento de realizar la reserva, el precio total de la reserva y un indicador de si el coche o los coches han sido entregados.
    Todo coche tiene siempre asignado un determinado garaje que no puede cambiar. De cada coche se requiere la matricula, el modelo el color y la marca.
    Cada reserva se realiza en una determinada agencia.

Haz un diagrama de clases que cumpla con los requerimientos.




************************************************************************************************


Sí, un Zoológico.

Como en Hack amamos a los animales, decidimos que necesitábamos un zoológico en las instalaciones. Pero antes de hacerlo, necesitamos una aplicación para organizarlo con respecto a las especies de animales que posee, los empleados (cuidadores y guías), y los distintos itinerarios de visita que ofrece.

La información está estructurada de la siguiente manera:

    Especies: de las especies interesa saber el nombre en español, el nombre científico y una descripción general. Hay que tener en cuenta que una especie puede vivir en diferentes hábitats naturales y que un hábitat puede ser ocupado por diferentes especies. Las especies se encuentran en distintas zonas del parque de manera que cada especie está en una zona y en una zona hay varias especies.

    Hábitats: los diferentes hábitats naturales vienen definidos por el nombre, el clima y el tipo de vegetación predominantes, así como el continente o continentes en los que se encuentran.

    Zonas: las zonas del parque en las que se encuentran las distintas especies vienen definidas por el nombre y la extensión que ocupan. Itinerarios: los itinerarios discurren por distintas zonas del parque. La información de interés para los itinerarios es: código de itinerario, la duración del recorrido, la longitud del itinerario, el máximo número de visitantes autorizado y el número de distintas especies que visita. Hay que tener en cuenta que un itinerario recorre distintas zonas del parque y que una zona puede ser recorrida por diferentes itinerarios.

    Guías: los guías del parque vienen definidos por el nombre, dirección, teléfono y fecha en la que comenzaron a trabajar en el zoo. Interesa saber qué guías llevan qué itinerarios, teniendo en cuenta que un guía puede llevar varios itinerarios y que un itinerario puede ser asignado a diferentes guías en diferentes horas, siendo éstas un dato de interés.

    Cuidadores: los cuidadores vienen definidos por el nombre, dirección, teléfono y fecha de ingreso en el parque. Hay que tener en cuenta que un cuidador puede estar a cargo de varias especies y que una especie puede ser atendida por varios cuidadores, siendo de interés la fecha en la que un cuidador se hace cargo de una especie.

*************************************************************************************************************



¡Necesitan ayuda!

Un holding de empresas llegó a Hack esta mañana, pidiéndonos desesperadamente que nuestros amados estudiantes les creen una base de datos referente a las empresas que posee, sus vendedores, así como los asesores que trabajan en el holding. La información está organizada de la siguiente forma:

    Los vendedores se organizan en una jerarquía de pirámide, es decir, cada vendedor puede captar otros vendedores para el holding, de manera que un vendedor tendrá a su cargo varios vendedores. Hay que tener en cuenta que un vendedor sólo podrá trabajar en una empresa y sólo podrá captar vendedores para la empresa en que trabaja; siendo importante almacenar la fecha en que se realiza la captación. Los datos de interés para los vendedores serán el código de vendedor, nombre y la dirección.

    Las empresas cubrirán diferentes áreas del mercado y una misma área puede ser cubierta por varias empresas. Es interesante conocer el nombre del área y una descripción de ésta. Las empresas pueden estar actuando en varios países y en un país pueden estar desarrollando actividades varias empresas. Sin embargo, cada empresa tendrá su sede en un único país, siendo importante la ciudad donde se localiza la sede. Por cuestiones fiscales, una empresa puede tener su sede en un país en el que no esté desarrollando actividad alguna. Los datos de interés para las empresas son el nombre, la fecha de entrada en el holding, la facturación anual y el número de vendedores que posee.

    Los datos de interés de los países son: el nombre, el PIB, el número de habitantes y la capital.

    Los asesores entran en el holding para dar soporte en cada una de las áreas en las que actúa el holding. Un asesor puede cubrir varias áreas y un área puede ser cubierta por varios asesores. Un asesor puede asesorar a varias empresas y una empresa tener varios asesores. Es importante saber en qué fecha un asesor comienza a trabajar para una empresa en un área determinada. Los datos de interés de los asesores son el código de asesor, nombre, dirección y la titulación.


*********************************************************************************************************************8


Bon boyage.

Hack quiere hacer una agencia de viajes; no sé, somos Fancy y nos gustan los aviones. Necesitamos una Base de Datos que contemple información relativa al hospedaje y vuelos de los turistas que la contratan.

Los datos a tener en cuenta son:

    La cadena de agencias está compuesta por un conjunto de sucursales. Cada sucursal viene definida por el código de sucursal, dirección y teléfono.

    La cadena tiene contratados una serie de hoteles de forma exclusiva. Cada hotel estará definido por el código de hotel, nombre, dirección, ciudad, teléfono y número de plazas disponibles.

    De igual forma, la cadena tiene contratados una serie de vuelos regulares de forma exclusiva. Cada vuelo viene definido por el número de vuelo, fecha y hora, origen y destino, plazas totales y plazas de clase turista de las que dispone.

    La información que se desea almacenar por cada turista es el código de turista, nombre y apellidos, dirección y teléfono.

Por otra parte, hay que tener en cuenta la siguiente información:

    A la cadena de agencias le interesa conocer que sucursal ha contratado el turista.

    A la hora de viajar el turista puede elegir cualquiera de los vuelos que ofrece la cadena, y en que clase (turista o primera) desea viajar.

    De igual manera, el turista se puede hospedar en cualquiera de los hoteles que ofrece la cadena, y elegir el régimen de hospedaje (media pensión o pensión completa). Siendo significativa la fecha de llegada y de partida.

