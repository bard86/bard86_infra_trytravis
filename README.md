# bard86_infra
bard86 Infra repository

##### Connect to someinternalhost through bastion host
#
`ssh -i ~/.ssh/appuser -J appuser@35.228.188.53 appuser@10.166.0.3`

##### Connect to someinternalhost through bastion host using alias
#
add to `~/.ssh/config`:

>Host bastion
HostName 35.228.188.53
IdentityFile ~/.ssh/appuser
User appuser

>Host someinternalhost
HostName 10.166.0.3
IdentityFile ~/.ssh/appuser
Port 22
User appuser
ProxyCommand ssh -q -W %h:%p bastion

use command `ssh someinternalhost` to connect
