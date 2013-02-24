# Learning Chef (Sandbox)

This is my chef sandbox, this repository host code of my crash course trying
to understand and make Chef-Solo work with Vagrant.

The work done here is a mashup of [Chef documentation](https://learnchef.opscode.com/),
[Peepcode screencast](https://peepcode.com/products/chef-i) and recently
[rubygems-aws](https://github.com/rubygems/rubygems-aws) recipes.

I've added to the mix [Berkshelf](http://berkshelf.com/) so I can manage the
recipes without downloading them into my repository.

I haven't scratched the surface of Chef, heck, most likely I have no idea what
I'm doing :smiley:

## Objectives

Not only be able to understand the mixture of concepts of Chef (recipe, role,
knife, data_bags, attributes, templates, ough) but also be able to get my
own customized environment.

At this time I'm mixing everything into one single box (`app_db`) but ideally
it should be able to scale and configure different apps servers from db servers.

## Questions I have

- I want to run multiple applications on the same box, should I define each
  one as a recipe?

- Each application should have it's own database

I saw [database](http://community.opscode.com/cookbooks/database) cookbook
might offer what I need, but still don't know how to use it (goes along the
application? should be a data_bag or attributes?)

- Applications should be using Nginx + Puma (sockets)

I want each application uses Puma so rolling deploys can be achieved. (While
I know unicorn does, I'm not a fan of it, Puma model works better to me).

## Getting Started

This repository uses [Bundler](http://gembundler.com/) to manage the Ruby
dependencies

    gem install bundler
    bundle install

Once all the gems (berkshelf, vagrant, chef) are installed, you can install
the cookbooks:

    berks install

All those will be installed in `~/.berkshelf`

Now, you can start the `app_db` box with chef-solo:

    vagrant up app_db

And provision it every time:

    vagrant provision app_db

## Copyright

As mentioned before: none of the ideas here are originally mine, I bluntly
stole code from everywhere (thanks Google!), so feel free to use it as you
please, but don't sue me if things don't work.
