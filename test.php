<?php
call_user_func(
    function() {
        define('PACKAGE_JSON_PATH', __DIR__ . DIRECTORY_SEPARATOR . 'package.json');
        $fileText = file_get_contents(PACKAGE_JSON_PATH);
        
        $fileData = json_decode($fileText);
        if ($fileData == null) {
            die(PACKAGE_JSON_PATH . ' is corrupted.');
        }
        
        $included_files = $fileData->{'files'};
        for ($i = 0; $i < count($included_files); ++$i) {
            $fileName = (__DIR__ . DIRECTORY_SEPARATOR . $included_files[$i]);
            if (!is_file($fileName)) {
                die("$fileName is not found.");            
            }
        }
        
        echo "All files found!";
        return 0;
    }
);
?>