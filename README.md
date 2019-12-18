# ap-awx-docker
Ansible playbook to install and configure AWX when using "docker-compose"

## Localhost preps requirements

- Ansible needs to be installed on the host running the playbook (using ansible-2.9)

```console
make all
```

## Define where AWX will be installed (localhost or remote)

### localhost

```console
ansible-playbook awx-fetch.yml -e awx_env_depl=localhost -D
```

### remote host

```console
ansible-playbook awx-fetch.yml -e awx_env_depl=remote -D
```

Create a file inside `inventories` with the `awx` group (ex: `inventories/scaleway`)
```
[awx]
bionic ansible_ssh_host=xxx.xxx.xxx.xx ansible_user=root ansible_python_interpreter=/usr/bin/python3
buster ansible_ssh_host=xxx.xxx.xxx.xx ansible_user=root ansible_python_interpreter=/usr/bin/python3
stretch ansible_ssh_host=xxx.xxx.xxx.xx ansible_user=root
xenial ansible_ssh_host=xxx.xxx.xxx.xx ansible_user=root ansible_python_interpreter=/usr/bin/python3
```

## run playbook

```console
ansible-playbook awx-docker.yml -D
```
