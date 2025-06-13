# Puppet Bonus: SSH Module Using Hiera 

This bonus module demonstrates how to use **Hiera** with Puppet to cleanly separate data from logic.

## Purpose

Instead of hardcoding variables in manifests (`params.pp`), Hiera allows us to move them to external YAML files. This makes configuration:

- More modular
- Easier to maintain
- Adaptable to different environments

## Structure

todoro_hiera_bonus/
├── hiera.yaml
├── data/
│ └── common.yaml


The actual Puppet class (`todoro_ssh_hiera`) is located in the standard module path:


modules/
└── todoro_ssh_hiera/
├── manifests/init.pp
└── templates/sshd_config.epp



## Parameters managed with Hiera

From `data/common.yaml`:

```yaml
todoro_ssh::ssh_port: 24
todoro_ssh::ssh_service: 'ssh'


# How to apply this module 

sudo puppet apply \
  --hiera_config todoro_hiera_bonus/hiera.yaml \
  --modulepath=modules \
  -e "include todoro_ssh_hiera"


## License

This project is licensed under the **MIT License**.  
You are free to use, modify, and distribute it with proper attribution.
