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
      <h1>Archivo #Selfie_v2</h1>
      <p>Las personas que decidan participar en el archivo aceptan que el autor:</p>
      <ul>
         <li>Publique las imágenes en esta web solo durante la exposición en ideoGrama.</li>
         <li>Contactar por email para enviar noticias sobre su obra.</li>
         <li>En caso de nuevos usuos siempre se pedirá permiso explicito.</li>
      </ul>

      <?php
        $fileList = glob('*.jpg');

        foreach($fileList as $filename){
           echo '
              <p>
                  <img alt="Selfie_v2" src="'.$filename.'"/><br />
                  <a href="delete.php?'.$filename.'"
              </p>';
        }
      ?>
    </main>
  </body>
</html>
