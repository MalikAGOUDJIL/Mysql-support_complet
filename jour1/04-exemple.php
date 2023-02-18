<?php 
    $connexionBdd = new PDO("...");
    $stdh = $connexionBdd->prepare("SELECT * FROM articles");
    $stdh->execute();
    $data = $stdh->fetchAll(); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php foreach ($data as $article) : ?>
        <article>
            <h2><?= $article[0] ?></h2>
            <p><?= $article[1] ?></p>
            <p>Auteur : <?= $article[2] ?></p>
            <p>publié le : <?= $article[3] ?></p>
        </article>
    <?php endforeach ?>
</body>
</html>