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
         <li>En caso de nuevos usos, siempre se pedirá permiso explícito.</li>
      </ul>

      <?php
        $fileList = glob('*.jpg');

        // sort files by last modified date
        usort($fileList, function($x, $y) {
            return filemtime($x) < filemtime($y);
        });

        foreach($fileList as $filename){
           echo '
              <p>
                  <img alt="Selfie_v2" src="'.$filename.'"/><br />
                  <a href="delete.php?file='.$filename.'">Quiero borrar esta imagen.</a>
              </p>';
        }
      ?>
    </main>
  </body>
</html>
