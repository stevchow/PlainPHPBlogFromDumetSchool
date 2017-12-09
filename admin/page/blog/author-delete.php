<?php  
if(isset($_GET["author-delete"])){
    $id_author = $_GET["author-delete"];
    mysqli_query($conn, "DELETE FROM author WHERE id = '$id_author'");
    header ("location:index.php?author");
    
}

    
?>