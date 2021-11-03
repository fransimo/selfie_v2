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
      <p>Por favor, confirma tu dirección de email.</p>
      <form action="delete.php">
        <label for="email">email:</label><input type="email" id="email" name="email"><br />

        <input type="hidden" id="file" name="file" value="<?php echo $_GET["file"]; ?>">
        <br />
        <input type="submit" class="button" value="Borrar imágen.">
      </form>
      <?php  else: ?>
      <?php
        $image=$_GET["file"];
        $file=$_GET["file"].'.dat';
        $email=$_GET["email"];
        $lines = file($file);
        if ($email == trim($lines[1])) {
          echo "<p>Imagen borrada.<p>";
          rename($image, $image.".deleted");
        } else {
          echo '<p>El email NO coincide. La imágen no se borará.</p>
                <p>
                <a href = "mailto:contact@fransimo.info?subject = Borrar imagen '.$image.'&body = He tenido un problema al querrer borrar la imagen'.$image.'">
                Enviar correo al autor.
                </a></p>
          ';
        }

      ?>
      <?php endif?>
    </main>
  </body>
</html>
