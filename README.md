TFTP (Trivial File Transfer Protocol) is an alternative protocol to FTP (File Transfer Protocol) but the lightweight one to transfer small-size files, such as system log, configuration, or device firmware.
With help on this project, you can build your TFTP server docker image.

Steps to create your docker container:
1) Build your docker image:
   $ sudo docker build --tag tftp .
2) Create volume to as tftp server storage:
   $ sudo docker volume create tftp_vol
3) Create docker container:
   $ sudo docker run -d --name tftp --restart always -p 69:69/udp --mount src=tftp_vol,dst=/var/lib/tftpboot tftp
 
