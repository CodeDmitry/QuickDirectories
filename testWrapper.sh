# | @file testWrapper.sh 
# | Responsible for running test.php, but enables us to
# |     change to something else other than PHP or change
# |     path of test.php without breaking familiarity.

if [[ $(command -v php) ]]; then
    echo "Running test.php";
    php test.php;
else
    echo 'Sorry, package integrity checking requires PHP to be installed.';
fi
