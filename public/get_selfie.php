<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Selfie_v2 - download</title>
    <link href="style.css" rel="stylesheet">
  </head>
  <body>
    <main>
      <a download="selfie_v2.jpg" href="<?php echo $_GET["id"]; ?>" title="Selfie_v2">
        <p>Click to download!</p>
        <img alt="Selfie_v2" src="<?php echo $_GET["id"]; ?>">
      </a>
    </main>
  </body>
</html>
