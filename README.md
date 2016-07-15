# chef-setup

This project allows us to have a quick installation of a chef server.
You should download the rpms first, in order to bootstrap a vagrant box totally offline.

Checkout my blog post [Do it with Chef] (https://realworlditblog.wordpress.com/2016/07/06/do-it-with-chef/)

The project contains 2 main folders
- software : Where you should put the rpms
- vagrant : Where the Vagrantfile and some config files are located

### The box

The vagrant setup uses a custom made vagrant box that is provisioned with the lates OEL 7.2.
It's a multimachine Vagrantfile with two virtual machines.

You can start them with:
`$ vagrant up client`
or
`$ vagrant up server`

Easy!

## The RPMS

You can download the RPMs at:

- [Chef Server] (https://downloads.chef.io/chef-server/redhat/)
- [Chef Manage] (https://downloads.chef.io/chef-manage/redhat/)

## More

Check my [blog](http://realworlditblog.wordpress.com "real world IT") for more posts.