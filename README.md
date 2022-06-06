# Vagrantfiles for Plesk

Vagrantfiles for creation of virtual machines with Plesk (mostly for development and evaluation purposes).

# How to Run

Here is an example on how to run the virtual machine:

```shell
~$ cd latest ; vagrant up
```

# How to Build

If you want to build an image from scratch, `Vagrantfile.virtualbox.dev` can be used:
```shell
~$ cd latest ; VAGRANT_VAGRANTFILE=Vagrantfile.virtualbox.dev vagrant up
```
# Access

Login URL: [http://localhost:8880](http://localhost:8880)

Credentials: `admin` / `changeme1Q**`
