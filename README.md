## Overview

This is a Vagrant + Chef repo to easily boot-up a guests Linux
environment for the Cebu Code Camp participants.

You may fork this, and make your own modification, if you want to run
your own copy.

This uses DigitalOcean, so an active account and an API key is
required.

## Adding users

If you want to have an account on this instance, please let us know,
so we can add give you your own username. You will need to provide us
with an SSH public key, so we can attach it to your shell account.

## To setup

First clone this into your local machine. You'll need a working ruby +
rvm installation to use this. I hard-coded it to use ruby-2.2.4. You
can easily install this binary using rvm.

You will also need to install Vagrant. Go to their website to
download:

  http://vagrantup.com/

After clone, do a bundle:

```
bundle
```

You will need to place a config file that contains the DO parameters
in your home directly.

```
~/.ccc_guests.yml
```

Which contains the following entries

```
do:
  token: [api token]
  size: 8GB # or any other VM size
  region: [region code] # e.g. sgp1
  private_key: [location of your private key file]
```

After you have the config, then it's time to boot-up the instance:

```
vagrant up
```

Sit back, relax, since it takes a while to complete.

Once done, you can SSH as root:

```
vagrant ssh
```

Or, if you have added yourself as either a core user or one of the
guest user, then you can login normally via ssh, as:

```
ssh <username>@<do_leased_ip>
```

If accessing via this, you'll need to get the IP address of the new
instance, and also configure your SSH client to use the private key
that corresponds to the public key set in the core users Chef's data bag.

## Help

If you want to talk about this, or need help using this, please let us
know, by visiting our Gitter [#loft chatroom](https://gitter.im/cebucodecamp/loft).
