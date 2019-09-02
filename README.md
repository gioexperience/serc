# serc

S.E.R.C. stay for Super Easy Remote Commander

for linux, is a remote command system (like ssh), but very very simple and with a simple security. You can execute shell command from a remote machine. Using netcat, he send TCP packet with a message to a server.

```
sudo apt-get install -y php netcat git-core
cd ~
git clone "https://github.com/gioexperience/serc.git"
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
sudo ~/serc/install.sh
```

## security

On your server you must create a random password with

```sudo serc createauth```

This command create a file /etc/serc.password with a random password in md5. This file must be the same in server and in client pc. You can copy and paste

## usage

for start server and listen on port 61710

```serc server```

for send remote command, for example create a file in the remote raspberry

```serc send 192.168.0.2 "touch /home/pi/test.tmp"```
	
for create a new random file password (remember to copy to server and client)

```sudo serc createauth```

for kill all instance of serc, and netcat to free ports

```sudo serc kill```


