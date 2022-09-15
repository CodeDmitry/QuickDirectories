To set the path, add the following to ~/.bashrc or ~/.profile or both.

```sh
launch_quickdirs() {
    if [ -n $HOME ]; then
        source $HOME/QuickDirs/apps/startup/min-setup.sh;
        source $HOME/QuickDirs/apps/startup/core-app-setup.sh;
        source $HOME/QuickDirs/apps/startup/my-app-setup.sh;
    else
        echo "setup.sh> Please set your HOME variable.";
    fi
}
launch_quickdirs;
```

You can also just do:

```sh
cp setup.sh > /usr/bin/@qd-setup
chmod u+x setup.sh > /usr/bin/@qd-setup
```

and run

```sh
source @qd-setup 
```

when you want to start using quick directories.


