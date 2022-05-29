#!/bin/bash

cat <<'eof' > /etc/webmin/miniserv.conf
port=10000                                                                                              
root=/usr/share/webmin                                                                                  
mimetypes=/usr/share/webmin/mime.types                                                                  
addtype_cgi=internal/cgi                                                                                
realm=Webmin Server                                                                                     
logfile=/var/webmin/miniserv.log                                                                        
errorlog=/var/webmin/miniserv.error                                                                     
pidfile=/var/webmin/miniserv.pid                                                                        
logtime=168                                                                                             
ssl=0                                                                                                   
no_ssl2=1                                                                                               
no_ssl3=1                                                                                               
no_tls1=1                                                                                               
no_tls1_1=1                                                                                             
ssl_honorcipherorder=1                                                                                  
no_sslcompression=1                                                                                     
env_WEBMIN_CONFIG=/etc/webmin                                                                           
env_WEBMIN_VAR=/var/webmin                                                                              
atboot=1                                                                                                
logout=/etc/webmin/logout-flag                                                                          
listen=10000                                                                                            
denyfile=\.pl$                                                                                          
log=1                                                                                                   
blockhost_failures=5                                                                                    
blockhost_time=60                                                                                       
syslog=1                                                                                                
ipv6=1                                                                                                  
session=1                                                                                               
premodules=WebminCore                                                                                   
server=MiniServ/1.991                                                                                   
userfile=/etc/webmin/miniserv.users                                                                     
keyfile=/etc/webmin/miniserv.pem                                                                        
passwd_file=/etc/shadow                                                                                 
passwd_uindex=0                                                                                         
passwd_pindex=1                                                                                         
passwd_cindex=2                                                                                         
passwd_mindex=4                                                                                         
passwd_mode=0                                                                                           
preroot=authentic-theme                                                                                 
passdelay=1                                                                                             
cipher_list_def=1                                                                                       
failed_script=/etc/webmin/failed.pl                                                                     
logout_script=/etc/webmin/logout.pl                                                                     
login_script=/etc/webmin/login.pl                                                                       
sudo=1                                                                                                  
error_handler_403=403.cgi                                                                               
error_handler_404=404.cgi                                                                               
error_handler_401=401.cgi
eof
