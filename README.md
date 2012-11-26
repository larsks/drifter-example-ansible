This is an example configuration for use with [Drifter][], a
Vagrant-inspired provisioning tool for use with [OpenStack][].

[drifter]: https://github.com/larsks/drifter
[openstack]: http://www.openstack.org/

# What you'll find here

- `project.yml` is the Drifter configuration file for this project.
- `playbook.yml` is the Ansible playbook used to provision the
  instances created by Drifter.
- `files` is a directory containing files that will be installed
  by Ansible as part of the provisioning process.

