# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.username = "vagrant"

  config.vm.provider :vmware do |v, override|
    v.gui = true
  end
end
