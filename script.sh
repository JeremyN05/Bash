echo "Elige un grupo: sysadmin, dev_admin, devs, office"

read grupos

echo "Ingrese el nombre del usuario"

read usuario

sudo useradd -m -s /bin/bash -G "$grupos" "$usuario"

sudo passwd "$usuario"

groups "$usuario" 
