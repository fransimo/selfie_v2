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
      <?php if( ! $_GET["email"] ) : ?>
      <p>Por favor confirma tu dirección de email.</p>
      <form action="delete.php">
        <label for="email">email:</label><input type="email" id="email" name="email"><br />

        <input type="hidden" id="file" name="file" value="<?php echo $_GET["file"]; ?>">
        <br />
        <input type="submit" class="button" value="Guradar mis datos y descargar.">
      </form>
      <?php  else: ?>
      <?php
        echo "había email";
      ?>
      <?php endif?>
    </main>
  </body>
</html>
