# Tarea_Node
Creación de un servicio Linux de un servidor con Node.js y Express.js 

## Pasos
1. Crear proyecto node con `npm init -y`
2. Crear archivo index.js
3. Instalar express con `npm install express`
4. Crear un servidor con express
5. Crear el archivo .service en /lib/systemd/system con `sudo touch /lib/systemd/system/hello_world.service`
6. Editar el archivo .service con `sudo nano /lib/systemd/system/hello_world.service` y agregar lo siguiente:
```
[Unit]
Description=LTPS NodeJS Test Application
After=network-online.target

[Service]
Restart=on-failure
WorkingDirectory=/home/alej/Documentos/Tarea_Node
ExecStart=node /home/alej/Documentos/Tarea_Node/index.js

[Install]
WantedBy=multi-user.target
```
7. Reiniciar el servicio con `sudo systemctl daemon-reload`
8. Habilitar el servicio con `sudo systemctl enable hello_world.service`
9. Reiniciar el servicio con `sudo systemctl restart hello_world.service`
10. Verificar el estado del servicio con `sudo systemctl status hello_world.service`
11. Verificar el servicio en el navegador con `http://localhost:3000/`