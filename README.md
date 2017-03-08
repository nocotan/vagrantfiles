# vagrantfiles

### Config

#### set memory
```
vm.customize ["modifyvm", :id, "--memory", "1024"]
```

#### port forwarding
```
sudo vim /etc/hosts
127.0.0.1 localhost -> 0.0.0.0 localhost
```
