![raspap-ansible-repo](https://repository-images.githubusercontent.com/356614013/8d3a6f80-a38f-11eb-9fd2-f43310fce18c)

# raspap-ansible

Ansible playbook for provisioning RaspAP

## Prerequisites

### Ansible

```bash
# install ansible
sudo apt update
sudo apt install software-properties-common python3-pip
pip3 install ansible

# [OPTIONAL] install sshpass if login to raspberry pi is made with password instead of ssh key
sudo apt install sshpass
```

### Inventory

In `inventory` folder:

- `hosts`: default configuration will handle only one Raspberry Pi, so optionally add Raspberry Pi(s) that will be configured, with incremental numbers (e.g. raspberrypi01, raspberrypi02, ...)
- `host_vars`: for all hosts in `hosts` create a `raspberrypiXX.yaml` with inside its `ansible_host: <ip_address>`
- `group_vars`: choose between `ansible_ssh_pass` or `ansible_ssh_private_key_file` and give it the correct value, then configure the other parameters to match the desired configuration

## Configure RaspAP

To configure RaspAP in the chosen Raspberry Pi(s):

```bash
ansible-playbook site.yaml
```

To rollback what `site.yaml` did:

```bash
ansible-playbook site-rollback.yaml
```
