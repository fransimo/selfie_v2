<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Selfie_v2 Archive</title>
    <meta content="width=device-width, initial-scale=1, user-scalable=no" name="viewport"/>
    <link href="../style.css" rel="stylesheet">
  </head>
  <body>
    <main>
      <p>Text</p>
      <?php
        $fileList = glob('*.jpg');

        foreach($fileList as $filename){
           //Simply print them out onto the screen.
           echo $filename, '<br>';
        }
      ?>
    </main>
  </body>
</html>
