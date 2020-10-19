# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "geerlingguy/ubuntu1804"

  config.vm.hostname = "vagrant-reversing"

#  config.vm.network "forwarded_port", guest: 8000, host: 8080, host_ip: "127.0.0.1", auto_connect: true
#  config.vm.network "forwarded_port", guest: 8089, host: 8089, host_ip: "127.0.0.1", auto_connect: true
  config.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "512"
      vb.cpus = "1"
   end

end
