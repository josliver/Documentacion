Git Commands
==

* **fork** Copiar el proyecto a nuestro espacio de trabajo (se hace desde la
  página), este proyecto que está en nuestro espacio no se vincula directamente
  al master del proyecto original.
* **Git clone {ruta}**
(Local) Clonar trae el código fuente de un proyecto que está en nuestro espacio de trabajo (página) a nuestro local, este proyecto debe quedar vinculado con nuestro espacio.
{ruta}: la ruta de nuestro proyecto a clonar (se puede encontrar en la página web de nuestro proyecto en el servidor git)
* **Git remote –v** 
	(Local) Comprobar si nuestro proyecto está enlazado con el servidor git
* **Git remote add {nombre_conexion} {ruta}**
	(Local) Crea una conexión de enlace entre nuestro repositorio local y el repositorio git
* **Git remot set-url {nombre_conexion} {ruta}**
(Local) Modifica la url de conexión de enlace entre nuestro repositorio local y el repositorio git
* **Git pull {nombre_conexion} {rama}**
	(Local) sincroniza nuestro directorio local con el directorio remoto.
* **Git merge {nombre_conexion} {rama}**
(Local) Si una rama ha cambiado, usamos este comando para fusionar todos los cambios entre las ramas, se parte desde la rama en la que se quiere trabajar y se hace el merge contra otra rama que esté más actualizada.
* **Git branch –v**
(Local) Muestra la lista de ramas que tiene nuestro proyecto, aquella que tiene un “*” al principio es la rama en la que estamos trabajando
* **Git branch {nombre_rama}**
(Local) Se crea en la rama en nuestro repositorio local, pero deja nuestro head donde esta
* **Git checkout -b {nombre_rama}**
(Local) Se crea la rama en nuestro repositorio local y cambia nuestro head a la rama
* **Git checkout  {rama}**
(Local) Para cambiar de rama
* **Git add { . | nombre_archivo }**
(Local) Para agregar nuestros cambios al stage usar . para todos, si no el nombre del archivo
* **Git commit –a –m “Mensaje del commit max 70 chars}”**
(Local) Envia nuestros archivos del stage al manejador de versiones, la opcion -a nos permite agregar todos los archivos modificados (no hace falta hacer git add)
y la opción -m nos permite colocar el mensaje del commit (siempre hacer esto como buena práctica)
* **Git commit –m “Mensaje del commit max 70 chars}”**
(Local) Envia nuestros archivos del stage al manejador de versiones, la opción -m nos permite colocar el mensaje del commit (siempre hacer esto como buena práctica)
* **Git commit**
(Local) Envia nuestros archivos del stage al manejador de versiones, si opciones nos abre un editor tipo vim para agregar el mensaje del commit
* **Git reset HEAD { nombre_archivo }**
(local) Revierte los cambios realizados en un archivo previo al commit
* **Git reset HEAD~1**
(local) Revierte los cambios realizados en todo el proyecto previo al commit
* **Git branch –d {rama} ***
* **Git push –u {nombre_conexion} {rama}**


