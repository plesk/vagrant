# Vagrantfiles for Plesk

Vagrantfiles for creation of virtual machines with Plesk (mostly for development purposes).

# How to Build

Here is an example on how to build the virtual machine:

    cd 12.5 ; vagrant up

If you want to build an image from scratch, Vagrantfile.dev can be used:

    cd preview ; VAGRANT_VAGRANTFILE=Vagrantfile.dev vagrant up

# Access

Login URL: [https://localhost:8880](https://localhost:8880)

Credentials: admin / changeme
