@echo off

set url_storage=https://terraformteststoracc.blob.core.windows.net/
set container_name=web
set user=soporte@audisoft.com
set password=8rSYHVBGLQIoymHQb9um+
set source=C:\Users\soporte\Documents\AudiSoft\repos\test-terraform-upload\

echo "Loggin In... %user%"
call az login -u %user% -p %password%
pause 

echo "Uploading files to the %container_name% container"
call az storage blob upload-batch -s %source% -d %url_storage%%container_name%

exit