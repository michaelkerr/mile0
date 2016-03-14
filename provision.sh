sudo apt-get update
sudo apt-get install curl git mercurial make binutils bison gcc build-essential -y
sudo apt-get -y upgrade
bash < <(curl -O -s https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz)
sudo tar -C /usr/local -xzf go1.6.linux-amd64.tar.gz
echo "export GOROOT=/usr/local/go" >> ~/.profile
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
rm -rf go1.6.linux-amd64.tar.gz
