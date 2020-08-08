Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "./", "/vagrant"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provision :shell, path: "vagrant_provision.sh"
  
  config.vm.provider "virtualbox" do |vb|
    vb.name = "Bustroker.AnonymousWhatsapp"     
    vb.memory = 2048
  end
end
