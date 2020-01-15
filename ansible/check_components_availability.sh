#/bin/bash
ansible app -m shell -a 'ruby -v; bundler -v'
ansible db -m systemd -a name=mongod

