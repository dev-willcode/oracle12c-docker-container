# Docker container para Oracle 12c.

Contenedor de docker para lanzar la base de datos **Oracle 12c enterprise edition**, con la base de datos de prueba **HR**.

## 🚧 Instalación

1. Ejecutar el comando para levantar el servicio.

```sh
> docker-compose up
```

2. Comprobar el estado del contenedor hasta obtener **Up About a minute (healthy)**.

```sh
# comporbar el estado de los contenedores corriendo
> docker ps -a
```

3. Ingresar en modo terminal interactiva al contenedor usando **sqlplus**.

```sh
> docker exec -it oracledb bash -c "source /home/oracle/.bashrc; sqlplus"
```

4. Ejecutar las sentencias del script **_install_hr.sql_** para configurar la base de datos de prueba **HR**.

```sh
# para evitar errores de permisos, ingresar como usuario "/"
> Enter user-name: / as sysdba
```
