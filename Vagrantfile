# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "trusty64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  #config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-amd64-vagrant-disk1.box"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

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
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.

  config.vm.provider "virtualbox" do |vb|
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", path:"provision.sh"
    # export GOROOT=/usr/local/go
    # export PATH=$PATH:/usr/local/go/bin
  # config.vm.provision "shell", inline: <<-SHELL
    # locale-gen zh_TW.UTF-8
    ## sudo -u vagrant -H bash < <(curl -s https://raw.github.com/moovweb/gvm/master/binscripts/gvm-installer)
    # bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
    # source /home/vagrant/.gvm/scripts/gvm
    # sudo -u vagrant -H bash -c 'echo "source $HOME/.gvm/scripts/gvm" >> $HOME/.bashrc'
    # bash -c 'echo "source $HOME/.gvm/scripts/gvm" >> $HOME/.bashrc'
    # sudo -u vagrant -H bash -c 'source $HOME/.gvm/scripts/gvm; gvm install go1.4'
    # gvm install go1.4
    # sudo -u vagrant -H bash -c 'source $HOME/.gvm/scripts/gvm; gvm use go1.4 --default'
    # gvm use go1.4
    # sudo -u vagrant -H bash -c 'source $HOME/.gvm/scripts/gvm; gvm install go1.6'
    # gvm install go1.6
    # sudo -u vagrant -H bash -c 'source $HOME/.gvm/scripts/gvm; gvm use go1.6 --default'
    # gvm use go1.6
  # SHELL
end
