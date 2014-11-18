# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_version ">= 1.4.3"

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.define 'Jenkins' do
    config.vm.network :forwarded_port, guest: 8080, host:9999

    # provisioners
    config.vm.provision :shell, path: "provisioners/shell/jenkins.sh"
    #config.vm.provision :shell, path: "provisioners/shell/project.sh"
    #config.vm.provision :shell, path: "provisioners/shell/nodejs.sh"
    #config.vm.provision :shell, path: "provisioners/shell/appengine.sh"
  end

  config.vm.define 'Slave' do

  end
end
