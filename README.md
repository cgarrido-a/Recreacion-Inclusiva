# README

Instrucciones Generales para el proyecto final:

El tema de este proyecto final de carrera es de libre elección y se desarrollará de manera individual.

  1. El alumno deberá crear un proyecto web usando Rails y otras tecnologías de apoyo como
    Javascript y CSS, en el que deberá identificar una necesidad y construir el software que
    solucione dicha necesidad.
    El alumno comenzará identificando los requisitos funcionales y no funcionales, para luego
    seguir con el diseño y desarrollo de la plataforma para finalmente enfocarse en operaciones
    de deployment y monitoreo.
    
2. El desarrollo de la plataforma deberá incorporar funcionalidades tales como:
      Sistema de autenticación y autorización
      Gestión de perfil de usuario
      Manejo de recursos por parte de los usuarios.
      Panel de administración de recursos para administradores.
      Integrar servicios y API externas
      
3. El desarrollo de las funcionalidades deberá estar restringido al alcance que se ha definido en
  la etapa de la detección de la necesidad, se recomienda acotar entre 3 y 4 entidades
  principales y otras entidades de apoyo. De igual manera, se recomienda limitar la integración
  de servicios externos para no depender de versiones trial o restringidas por tiers de pago.
  
4. Requerimientos transversales: Estos requerimientos no son específicos para cada
  funcionalidad, sino que están relacionados con todo el desarrollo de la plataforma y que van
  tomando forma a medida que se van implementando las funcionalidades.
  Diseño responsivo. Se sugiere usar un framework como Bootstrap o Foundation.
  Utilización correcta del viewport, añadir favicon, descriptions y título a cada página.
  Integrar una plantilla HTML y agregar modificaciones propias, de tal manera que la
  plantilla tenga modificaciones.

Instrucciones especificas del proyecto final:

1. DESARROLLO
      -Integrar login y registro con Devise usando email.

      -Implementar permisos considerando múltiples roles.

      -Integrar un panel de control que permita administrar los recursos. Considerar que sólo los
      usuarios con permisos o roles suficientes pueden entrar al panel de control; el panel puede ser
      implementado desde cero o usar una gema que cumpla esta funcionalidad.

      -El usuario puede editar sus datos de perfil. Esta funcionalidad debe ser implementada usando
      AJAX sin UJS.

      -El usuario en su perfil debe ver una lista con los servicios o productos que ha contratado. La
      lista debe estar separada con los que han sido entregados o solicitados en el pasado y los que
      serán entregados en el futuro.

      -El home de la plataforma debe estar diferenciado para aquellos usuarios que han iniciado
      sesión y los que no. Para los usuarios anónimos debe aparecer un landing page explicando el
      servicio o producto, mientras que los usuarios podrán ver una funcionalidad especial. Esta
      funcionalidad debe ser desarrollada usando un formulario avanzado, ya sea un buscador con
      filtros, formulario de registro especial o elementos dinámicos.

      -La plataforma debe incluir un sistema de calificación, ya sea en los productos, servicio
      ofrecidos o para los usuarios respectivamente.

      -El usuario debe interactuar con los productos o servicios ofrecidos, por ejemplo haciendo una
      reserva de hora, comprando un producto o solicitar un servicio. Considerar las respectivas
      restricciones para cada caso, por ejemplo un usuario no puede solicitar comida en un
      restaurante que está cerrado.

      -El usuario puede eliminar recursos que se ha asignado, por ejemplo cancelar una orden de
      comida o cancelar una hora al médico.

2. INTEGRACION
      -Implementar registro y login usando OAuth (google, facebook, twiter, github, etc). 

      -Implementar pagos con PayPal implementando un botón de pago.

      -Implementar dashboard simple en el perfil del usuario que incluya al menos dos gráficos
      mostrando información relevante.

      -Usar un servicio de mailing para una de las funcionalidades, por ejemplo para notificar
      eventos, una compra, eliminación de servicios, etc. Se puede usar proveedores como mailgun,
      sendgrid, sparkpost, etc. 

3. DEPLOYMENT
      -Desplegar la plataforma en un servicio como Heroku, Digital Ocean, Linode u otro. La
      plataforma debe estar operativa y sin errores de ejecución. 

      -Configurar un dominio o subdominio para que apunte a la plataforma.

      -Configurar un servicio de reporte de errores como Rollbar, Sentry u otro.

      -Incluir un archivo README con las instrucciones de deployment, configuración y puesta en
      marcha. También es válido que el servicio esté dentro de un contenedor Docker.
