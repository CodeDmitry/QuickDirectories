# runs all setups


if [ -n $HOME ]; then
    source $HOME/QuickDirs/apps/startup/min-setup.sh
    source $HOME/QuickDirs/apps/startup/core-app-setup.sh
    source $HOME/QuickDirs/apps/startup/my-app-setup.sh
else
    echo "setup.sh> Please set your HOME variable.";
    echo "setup.sh> shutting down."
    exit;
fi

