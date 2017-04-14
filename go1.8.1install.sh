# エラーでスクリプトを中断
set -e
# 必要なツールをインストール
apt-get update -y
apt-get upgrade -y
apt-get install -y wget git 
# ダウンロード
wget https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz
# 解凍
tar -C /usr/local -xzf go1.8.1.linux-amd64.tar.gz
# 不必要なので削除
rm go1.8.1.linux-amd64.tar.gz
# パスを通す
echo "
export GOROOT=/usr/local/go
export PATH=\$PATH:\$GOROOT/bin
export GOPATH=\$HOME/Project/go
export PATH=\$PATH:\$GOPATH/bin
" >> ~/.bashrc
echo "Do 'source ~/.bashrc'"
