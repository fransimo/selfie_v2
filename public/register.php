<?php
  $name=$_GET["name"];
  $email=$_GET["email"];
  $archive=$_GET["email"];
  $file=$_GET["file"];

  $arch_file=str_replace('snap_shots','archive',$file);
  copy($file, $arch_file);
  $arch_meta  = fopen($arch_file . '.dat', "w");
  $txt = $name . "\n" . $email . "\n" . $archive . "\n" . $file;
  fwrite($arch_meta, $txt);
  fclose($arch_meta);
?>
<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Selfie_v2 - register OK</title>
    <meta content="width=device-width, initial-scale=1, user-scalable=no" name="viewport"/>
    <link href="style.css" rel="stylesheet">
    <meta http-equiv="refresh" content="5; URL=<?php echo $file;?>" />
  </head>
  <body>
    <main>
      <p>Gracias por registrarte.</p>
    </main>
  </body>
</html>
