echo 安装zsh
sudo apt-get install zsh

echo 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"        #使用curl安装oh-my-zsh

#echo step1：下载启动补全插件
#git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions   #自动补全
echo step1：下载高亮插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting  #代码高亮插件

chmod u=rwx,g=rx,o=rx ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo 安装incr
mkdir ~/.oh-my-zsh/custom/plugins/incr/
sudo cp -f incr-0.2.zsh ~/.oh-my-zsh/custom/plugins/incr/incr-0.2.zsh
echo step2：修改rc文件
cp -f .zshrc ~/.zshrc
echo step3：重启rc文件
source ~/.zshrc
