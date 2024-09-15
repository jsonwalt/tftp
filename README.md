TFTP (Trivial File Transfer Protocol) is an alternative protocol to FTP (File Transfer Protocol), but it is a lightweight one for transferring small-size files, such as system logs, configuration, or device firmware.
With the help of this project, you can build your TFTP server docker image.

Steps to create your docker container:
1) Build your docker image:
   $ sudo docker build --tag tftp .
2) Create volume to as tftp server storage:
   $ sudo docker volume create tftp_vol
3) Create docker container:
   $ sudo docker run -d --name tftp --restart always -p 69:69/udp --mount src=tftp_vol,dst=/var/lib/tftpboot tftp

OR SIMPLY:
1) pull the image from docker hub:
   $ docker pull jsonwalt/tftp
2) Create volume to as tftp server storage:
   $ sudo docker volume create tftp_vol
3) Create docker container:
   $ sudo docker run -d --name tftp --restart always -p 69:69/udp --mount src=tftp_vol,dst=/var/lib/tftpboot jsonwalt/tftp

