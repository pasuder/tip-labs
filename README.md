# TIP Labs

This is a bootstrap script for setting up DevStack with K8s for lab for TIP.

Related to slides from [lecture](https://pasuder.github.io/about/slides/tip).

## Tags

- `prepare` - to prepare bare metal for virtual machines
- `boot` - to boot virtual machine for DevStack with K8s installation
- `install` - to install DevStack with K8s

```bash
ansible-playbook -i inventory/hosts <type>.yml --tags all,prepare
ansible-playbook -i inventory/hosts <type>.yml --tags all,boot
ansible-playbook -i inventory/hosts <type>.yml --tags all,install
ansible-playbook -i inventory/hosts <type>.yml
```
