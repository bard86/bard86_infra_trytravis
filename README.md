# bard86_infra
bard86 Infra repository
  
##### Connect to someinternalhost through bastion host  
`ssh -i ~/.ssh/appuser -J appuser@35.228.188.53 appuser@10.166.0.3`

##### Connect to someinternalhost through bastion host using alias  
add to `~/.ssh/config`:  

```console
Host bastion
HostName 35.228.188.53
IdentityFile ~/.ssh/appuser
User appuser
```

```console
Host someinternalhost
HostName 10.166.0.3
IdentityFile ~/.ssh/appuser
Port 22
User appuser
ProxyCommand ssh -q -W %h:%p bastion
```

use command `ssh someinternalhost` to connect  
  
##### Install VPN server & and connect by openVPN  
install vpn server executing script `vpn/setupvpn.sh`  
use `vpn/cloud-bastion.ovpn` configuration file for openVPN connect  
  
IP for test:  
  
bastion_IP = 35.228.188.53  
someinternalhost_IP = 10.166.0.3  
  
##### Test app deploy  
create bucket for store startup script `gsutil mb gs://otus-devops-denis-barsukov-bucket/`  
copy startup_script.s to bucket `gsutil cp .\startup_script.sh gs://otus-devops-denis-barsukov-bucket/`  
  
Firewall rules:  
```console
gcloud compute firewall-rules create default-puma-server\
  --allow tcp:9292 \
  --target-tags=puma-server
```
  
Instance:  
```console
gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=f1-micro \
  --tags puma-server \
  --restart-on-failure \
  --metadata startup-script-url=gs://otus-devops-denis-barsukov-bucket/startup_script.sh
```
  
Startup script output is written to the following log file `/var/log/syslog`  
Test url: http://35.228.226.232:9292/  
  
testapp_IP = 35.228.226.232  
testapp_port = 9292  

