# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :precise do |precise_config|
    precise_config.vm.box = "pgprecise"
    precise_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    precise_config.vm.provision :shell, :path => "shell/precise.sh"
  end
end
