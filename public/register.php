<?php
  $name=$_GET["name"];
  $email=$_GET["email"];
  $archive=$_GET["archive"];
  $file=$_GET["file"];
  $thanks_txt='Oh! :(... no has aceptado registrarte, pero te llevamos a la imagen de todas formas :) ';

  if ($archive == "archive") {
    $arch_file=str_replace('snap_shots','archive',$file);
    copy($file, $arch_file);
    $arch_meta  = fopen($arch_file . '.dat', "w");
    $txt = $name . "\n" . $email . "\n" . $archive . "\n" . $file;
    fwrite($arch_meta, $txt);
    fclose($arch_meta);
    $thanks_txt='Gracias por registrarte. En unos segundos podrás descargar la imágen.';
  }
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
      <p><?php echo $thanks_txt;?></p>
    </main>
  </body>
</html>
