<?php
if(!empty($_POST)){
$postTitle = $_POST['postTitle'];
$postDescription = $_POST['postDescription'];
$targetDirectory = "img/";
$fileName = hash('sha256', $_FILES['file']['name'].microtime());
//$fileName = $_FILES['file']['name'];
//move_uploaded_file($_FILES['file']['tmp_name'], $targetDirectory.$fileName);
$gdImage = imagecreatefromgd($_FILES['file']['tmp_name']);
$finalUrl = "http://localhost/ProjektNaGita/img/".$fileName.".webp";
imagewebp($gdImage,$finalUrl );
$authorID=1;
$imageUrl = "http://localhost/ProjektNaGita/img/" .$fileName;
$db = new mysqli('localhost', 'root', '', 'posty');
$q = $db->prepare("INSERT INTO post (author, imgUrl, title) VALUES (?, ?, ?)");
$q->bind_param("iss", $authorID, $imageURL, $postTitle);
$q->execute();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dodaj nowy post</title>
</head>
<body>
    <form action="upload.php" method="post" enctype="multipart/form-data">
        <label for="postTitleInput">Tytuł posta:</label>
        <input type="text" name="postTitle" id="postTitleInput">
        <br>
        <label for="postDescriptionInput">Opis posta:</label>
        <input type="text" name="postDescription" id="postDescriptionInput">
        <br>
        <label for="fileInput">Obrazek:</label>
        <input type="file" name="file" id="fileInput">
        <br>
        <input type="submit" value="Wyslij!">
    </form>

</body>
</html>