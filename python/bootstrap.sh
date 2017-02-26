echo "apt-get update..."
sudo apt-get update

echo "install git..."
sudo apt-get install git -y

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
pyenv install `pyenv install -l |grep anaconda |tail -n1`
pyenv rehash
pyenv global `pyenv install -l |grep anaconda |tail -n1`

