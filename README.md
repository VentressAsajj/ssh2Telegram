# ssh2Telegram
## Enviando notificaciones de inicios sesión ssh a telegram
### Introducción
Este script se encargará de notificar los inicios de sesión a través del servicio ssh. <p>
Registrará tanto los inicios como finales se sesión, enviando un mensaje a un bot de Telegram y registrando la entrada de log correspondiente.<p>
Como siempre y es habitual en mi, doy por hecho que la gente sabe lo que es un bot, crear bot, etc. y sino lo sabes.<p>
### Creamos bot
Para crear un bot, id a Telegram, buscar @BotFather el bot de bots :D<p>
Si no sabes qué pasos seguir ve a la documentación de Telegram, pero básicamente es, crear bot, elegir nombre al bot, usuario al bot.<p>
/newbot<p>
name for your bot: Notificaciones de inicio de sesión
username for yout bot: mimajobot ( botillobot ya existía)
Ahora tenemos la api key de nuestro bot. Si hacemos click sobre el usuario, @iniciosSesionBot nos abre directamente un chat con el bot, iniciar y start y listo para jugar
Crear scripts
Tenemos el de notificación al bot y el de configuración con el token y el usuario.
El script de configuración no tiene nada especial:
USERID=ID
KEY="token"
El id del usuario lo puede obtener ejecutando:
curl -s https://api.telegram.org/botTOKEN/getUpdates
