useradd -m -s /bin/bash jumpserver
echo "Enter password for new user jumpserver"
passwd jumpserver
echo "adding jumpserver to sudo user"
usermod -aG sudo jumpserver
