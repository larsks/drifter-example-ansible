This is a sample configuration for use with the [Drifter][] OpenStack
provisioning tool.

[drifter]: https://github.com/larsks/drifter

## About this configuration

This Drifter configuration demonstrates the use of [cloud-init][] and
[Ansible][] to configure your OpenStack instances.

[cloud-init]: https://help.ubuntu.com/community/CloudInit
[ansible]: http://ansible.cc/

Ansible is unique in the configuration-management space in that it
does not require any software to be installed on your target systems:
it operates completely over ssh, and pushes scripts that it needs to
operate to the remote system.

## How it works

With this model, Drifter is responsible for setting up security groups
and bringing up instances OpenStack.  We then take advantage of the
`ansible_hosts` subcommand -- or the higher-level `provision` wrapper
-- to provide Ansible with information about our instances.  Ansible
then uses a "playbook" (`playbook.yml`) to configure the instances.

## The Ansible playbook

The top-level `playbook.yml` includes four other playbooks located in
the `playbooks` directory:

- `playbooks/facts.yml` does not perform any configuration actions; it
  simply collects information ("facts") about remote hosts.
- `playbooks/common.yml` installs packages on all the nodes in the
  cluster.
- `playbooks/frontend.yml` performs configuration tasks specific to
  the cluster master.
- `playbooks/register.yml` causes the backends to register themselves
  with the dynamic proxy running on the cluster master.
 
