#/bin/sh
cp sylius/config/container/parameters.yml.dist sylius/config/container/parameters.yml
wget http://getcomposer.org/composer.phar
php composer.phar install --prefer-dist
cd vagrant
vagrant up
echo 'sudo echo "172.33.33.66 multisylius.virt" >> /etc/hosts and open in browser http://multisylius.virt/dev.php'

