# TIP Labs

This is a bootstrap script for setting up DevStack with K8s for lab for TIP.

To run those script, it is required to have:

- OpenStack API access (from some Public Cloud provider)
- bare metal machine with Debian/Ubuntu accessible via SSH

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

## VPN

Needed extra config:

Front:

```
sudo ip route replace 10.20.20.0/24 via 10.0.0.2
sudo ip route replace 10.201.0.0/24 via 10.0.0.2 dev tun0
sudo ip route replace 192.168.122.0/24 via 10.0.0.2 dev tun0
```

Back:

```
sudo ip route replace 10.200.0.0/24 via 10.0.0.1 dev tun0
```
