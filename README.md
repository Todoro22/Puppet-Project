# Puppet Automation – Todoro's Project

## Overview

This repository is part of a graded Puppet lab project focused on automating system configuration and service management across multiple environments. The project includes three standalone and reusable Puppet modules for managing **SSH**, **NTP**, and **Apache** services on both **Ubuntu** and **CentOS** systems.

## Objectives

- Automate service installation and configuration with Puppet
- Use facts (via `facter`) to adapt configurations dynamically
- Organize code into reusable Puppet modules with clean separation of concerns
- Leverage Git branches and tags to simulate production/development workflows
- Serve a dynamic web page via Apache that displays system information

---

## Project Structure

Puppet-Project/
│
├── modules/
│ ├── todoro_ssh/ # SSH service module with EPP templating
│ ├── todoro_ntp/ # NTP service module
│ └── todoro_apache/ # Apache module with custom web interface
│
├── site.pp # Node definitions
└── README.md # This file 

## Git Branches

| Branch      | Purpose                                  |
|-------------|------------------------------------------|
| `main`      | Stable, production-ready version (tagged `v1.0`) |
| `develop`   | Ongoing development work                 |
| `ntp`       | Dedicated branch for NTP module          |
| `web`       | Special environment for Apache website   |

###  Tag

- **v1.0**: Final stable release with all three modules functional and validated

---

## Modules Overview

### `todoro_ssh`

- Configures `sshd_config` via EPP template
- Uses `facter` to switch port:
  - Port `23` if physical machine
  - Port `24` if virtual machine
- Enforces protocol version 2
- Enables service and applies security best practices

###  `todoro_ntp`

- Installs and enables the NTP service
- Ensures time synchronization is running correctly
- Compatible with both Ubuntu and CentOS

###  `todoro_apache`

- Installs Apache and serves on **port 84**
- Uses a custom template to configure virtual hosts
- Dynamically generates a `index.html` page displaying:
  - System uptime
  - Current time
  - OS and version
- Clean, minimalist CSS design for clarity

---

## Commands to Use the Modules

### 1. Clone the repo
```bash
git clone https://github.com/Todoro22/Puppet-Project.git
cd Puppet-Project


2. Apply a module locally


sudo puppet apply --modulepath=modules -e "include todoro_ssh"
sudo puppet apply --modulepath=modules -e "include todoro_ntp"
sudo puppet apply --modulepath=modules -e "include todoro_apache"



3. Apply an environment-based configuration


PUPPET_ENVIRONMENT=web puppet apply --modulepath=modules site.pp


## What I Learned


    How to create and structure Puppet modules from scratch

    The difference between .erb and .epp templates

    Using facter to adapt behavior based on system context

    Managing services, packages and files declaratively

    Using before, require, subscribe, and notify to control ordering

    Best practices in Git workflows: branching, merging, and tagging

    Serving dynamic content with Apache based on system facts

Time spent: around 8 focused hours of development, testing, and polishing.


This project was both a challenge and a deep dive into infrastructure automation.
It's not just a school project — it's the foundation of how I’ll build reliable, automated environments in the future.

    “Infrastructure that configures itself, documents itself.”

Thanks for reading.
— Todoro
