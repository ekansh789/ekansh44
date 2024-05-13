resource "null_resource" "execute-ansible" {
 triggers = {
    vm_public_ip = module.vm.public_ip
 }  
provisioner "local-exec" {
 command = "ansible-playbook -i '${module.vm.public_ip},' -u ekansh-linux-vm -b -e 'ansible_ssh_pass=Ekansh@123' ./ansible/ftp-server/tasks/main.yml"
 working_dir = path.module    
}


}