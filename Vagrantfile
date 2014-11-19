# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_version ">= 1.4.3"

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.define 'Jenkins' do
    # ensure the user/group matches the jenkins user
    config.vm.synced_folder ".", "/vagrant", :mount_options => ["uid=5678,gid=65534"]

    config.vm.network :forwarded_port, guest: 8080, host:9999

    config.vm.network "private_network", ip: '10.10.10.10'

    # provisioners
    config.vm.provision :shell, path: "provisioners/shell/jenkins.sh"
    #config.vm.provision :shell, path: "provisioners/shell/project.sh"
    #config.vm.provision :shell, path: "provisioners/shell/nodejs.sh"
    #config.vm.provision :shell, path: "provisioners/shell/appengine.sh"
  end

  config.vm.define 'Slave' do
    config.vm.provision :shell, path: 'provisioners/shell/slave.sh'
    config.vm.network "private_network", ip: '10.10.10.100'
  end
end
