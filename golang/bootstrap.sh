echo "apt-get update..."
sudo apt-get update

echo "install git..."
sudo apt-get install git -y

echo "install golang..."
sudo apt-get install golang-go -y
sudo apt-get install mercurial -y

mkdir /home/ubuntu/dev
echo 'export PATH=$PATH:/usr/local/go/bin' >> .bashrc
echo 'export GOPATH=/home/ubuntu/dev' >> .bashrc

go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet
go get github.com/golang/lint/golint
go get github.com/go-martini/martini

echo "install postgresql..."
sudo apt-get install -y postgresql libpq-dev
cat /etc/passwd | grep postgres
psql --version
