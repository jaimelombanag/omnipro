# OmniPro_flutter_test
##Requerimientos técnicos para construir el proyecto.**
* Flutter 3.16.0
* Android version mínimo: Android 5.0 - 21 LOLLIPOP - Api # 21
* IOS versión mínima 12


**➢ Arquitectura.**
* GetX Clean Architecture


**➢ Dependencias y versiones.**

  get: ^4.3.8
  tuple: ^2.0.0
  cached_network_image: ^3.1.0

**➢ Breve descripción de la aplicación.**

* Se implementa el API https://jsonplaceholder.typicode.com/photos
  Para visualizar la lista de de las fotos se realiza el llamaso del api con un limite de 10 fotos, se implementa en la capa de presentación "RefreshIndicator" para cada vez que se refresque se llama de nuevo al api cargando de a 10 fotos, en la parte superior de la pantalla de home se puede observar que el tamaño de la lista va aumentando cada vez que se realiza el refresh.

➢ Clean Architecture

• Es un arquitectura de software diseñada por Robert C. Martin, que consiste en conjunto de capas bien definidas, las cuales están centradas en el dominio (el negocio y sus reglas).

➢ Domain

El dominio es la capa definida por el negocio, es decir, no debe estar atada a ningún concepto técnico y dentro de ella vemos las entidades y los casos de uso.

➢ Presentation

Implementa todo el software relacionado a los elementos visuales con los que el usuario final interactuará.

➢ Data

Esta capa puede contener adaptadores para conectarnos entre capas, apis y helpers,

➢ Recomendaciones

Principio de Responsabilidad Única consiste en que cada clase tendrá una única función o propósito con el propósito de mantener juntas las funcionalidades relacionadas lo que reduce el acoplamiento produciendo un código más flexible, mantenible y testeable.

Un buen código es aquel que se escribe teniendo en cuenta las siguientes consideraciones:

Llevar un control de versiones o Consultar la documentación en caso de dudas. o Se sigue la guía de estilo y nombramiento del lenguaje, framework y plataforma. o Se utilizan patrones de diseño. o Utilizar un Linter para mantener la calidad del código. o No abusar de las reducciones extremas en la sintáxis ya que reducen la legibilidad. o Seguir los principios SOLID o En el caso de Android se deben hacer pruebas en varios dispositivos con diferentes tamaños y densidades de pantalla, además de diversas marcas y versiones de OS. o Seguir buenas prácticas de programación. o En el caso de Android se deben hacer pruebas en varios dispositivos con diferentes tamaños y densidades de pantalla, además de diversas marcas y versiones de OS. o Seguir buenas prácticas de programación. o Documentar y agregar los comentarios para facilitar la lectura y compresión del código.



