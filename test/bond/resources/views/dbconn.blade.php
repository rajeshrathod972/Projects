<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laravel and Mysql Connection</title>
</head>
<body>
    <div>
        <?php
            if(DB::connection()->getPdo()){
                echo "Successfully connected to Db and DB name is".DB::connection()->getDatabaseName();
            }
        ?>
    </div>
</body>
</html>