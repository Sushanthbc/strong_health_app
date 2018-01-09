# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure('2') do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = 'centos/7'
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false
  # Create a forwarded port mapping which allows access to a specific port
  # config.ssh.forward_agent = true
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '1024'
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision 'shell', inline: <<-SHELL
    # Possible fix for ssh
    echo installing git and vim
    su - vagrant -c 'yum -y install git'
    su - vagrant -c 'yum -y install vim'
    echo installing Ruby 2.4.2 via RVM
    su - vagrant -c 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3' >/dev/null 2>&1
    su - vagrant -c 'curl -sSL https://get.rvm.io | bash' >/dev/null 2>&1
    su - vagrant -c 'rvm rvmrc warning ignore allGemfiles' >/dev/null 2>&1
    su - vagrant -c 'source /home/vagrant/.profile'
    su - vagrant -c 'source /home/vagrant/.rvm/scripts/rvm'
    su - vagrant -c 'rvm install ruby-2.4.2'
    echo installing Nodejs
    su - vagrant -c 'curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -'
    su - vagrant -c 'yum -y install nodejs'
    echo installing Development Tools
    su - vagrant -c 'yum -y install 'Development Tools''
    echo installing yarn
    su - vagrant -c 'wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo'
    su - vagrant -c 'yum -y update'
    su - vagrant -c 'yum -y install yarn'
  SHELL
end
