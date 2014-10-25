# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
NODE_NAME = "vagrant.sec"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.define 'sec' do |sec| 
    sec.vm.hostname = NODE_NAME
    sec.vm.network "private_network", ip: "22.22.22.22"

    sec.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.customize ['modifyvm', :id, '--memory', '4096']
      vb.customize ['modifyvm', :id, '--name',   NODE_NAME ]
    end

    sec.vm.provision "ansible" do |ansible| 
      ansible.playbook = "playbooks/sec.yml"
      ansible.verbose  = "vv" 
      ansible.tags     = "sec"
    end
  end
end
