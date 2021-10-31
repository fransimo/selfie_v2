<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Selfie_v2 - download</title>
    <meta content="width=device-width, initial-scale=1, user-scalable=no" name="viewport"/>
    <link href="style.css" rel="stylesheet">
  </head>
  <body>
    <main>
      <p>Puedes descargar la imagen sin más, pero si quieres participar en el archivo, por favor rellena los datos.</p>
      <form action="register.php">
        <label for="name">Nombre:</label><input type="text" id="name" name="name"><br />
        <label for="email">email:</label><input type="text" id="email" name="email"><br />
        <input type="checkbox" id="archive" name="archive" value="archive">
          <label for="archive">Acepto formar parte del archivo.</label><br>
        <input type="hidden" id="file" name="file" value="<?php echo $_GET["id"]; ?>">
        <input type="submit" value="Guradar mis datos y descargar.">
      </form>
      <a download="selfie_v2.jpg" target="_blank" href="<?php echo $_GET["id"]; ?>" title="Selfie_v2">
        <p>¡Solo descargar!</p>
        <img alt="Selfie_v2" src="<?php echo $_GET["id"]; ?>">
      </a>
    </main>
  </body>
</html>
