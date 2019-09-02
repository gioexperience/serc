# serc

S.E.R.C. stay for Super Easy Remote Commander

for linux, is a remote command system (like ssh), but very very simple and with a simple security. You can execute shell command from a remote machine. Using netcat, he send TCP packet with a message to a server.

I'm not abelinato, I know there is ssh and the possibility to execute remote command with ssh... but in my experience and many tests, a single command that connect in ssh, and pass a command in remote console take almost 2second for execute (for example a simple "touch /home/pi/file")... SERC only 0.14secs. In my very little and closed applications, serc is more appreciated than ssh.

# install

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


