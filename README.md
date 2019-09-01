# serc

```
sudo apt-get install -y git-core
cd ~
git clone https://github.com/gioexperience/serc.git'
cd serc
chmod +x install.sh
sudo ~/serc/install.sh
```


## for update from git-hub

```
cd ~/serc
git reset --hard
git pull
chmod +x ~/serc/install.sh
```

## usage


#for listen on port 61710

serc server			


#for send remote command, for example create a file in the remote raspberry

serc send 192.168.0.2 "touch /home/pi/test.tmp"
	

