if [[ $(command -v php) ]]; then
    echo "running test.php";
    php test.php;
else
    echo 'cannot check integrity of package without php :(';
fi