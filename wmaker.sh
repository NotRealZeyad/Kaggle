expect -c 'spawn apt-get install -y wmaker xterm
expect "Y/I/N/D/I/O"; send "Y\r"; interact'
