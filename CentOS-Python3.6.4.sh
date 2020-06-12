#coding:utf-8


export LANG=UTF-8
export LANGUAGE=UTF-8

yum groupinstall -y "Development tools"
yum install -y nano sqlite-devel screen ncurses-devel ncurses-libs zlib-devel mysql-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel openssl-devel

wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz && tar xvJf Python-3.8.2.tar.xz && mkdir /usr/local/python3 && cd Python-3.8.2

./configure --prefix=/usr/local/python3
make && make install

mv /usr/bin/python /usr/bin/python_bak
ln -s /usr/local/python3/bin/python3 /usr/bin/python
PATH=$PATH:$HOME/bin:
PATH=$PATH:$HOME/bin:/usr/local/python3/bin
