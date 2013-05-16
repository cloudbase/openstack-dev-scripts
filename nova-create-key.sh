test -d ~/.ssh || mkdir ~/.ssh
nova keypair-add key1 > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

