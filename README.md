mac-ansible
===========

Project to rebuild Mac using ansible scripts.
Inspired by this
[blog post](https://adamj.eu/tech/2019/03/20/how-i-provision-my-macbook-with-ansible/).
and forked from his project.

I use it to quickly rebuild a vmware install of a dev machine.
I didn't have any background in ansbile so I needed a little more explanation on how it all worked...


After everything is setup:
to execute 
`ansible-playbook playbook.yml`

which calls the local_mac role, (modeled after adam_mac setup)

Getting Started 
---------------

(Original from before fork, still needs to be updated)



1. Install [homebrew](http://brew.sh/) with the command from the site
2. `brew install pyenv`
3. `pyenv install <latest_python_version>` (Check playbook up to date)
4. Make sure pyenv's python on path (it will be after my shell settings are in place from playbook)
5. `python -m venv venv`
6. `source venv/bin/activate`
5. `pip install ansible` (always the best way to install Ansible)
6. Then `./playbook.yml`

Fork! Copy! Adapt!
------------------

This is distributed under the Unlicense so you can do whatever you want with
it, see LICENSE.
