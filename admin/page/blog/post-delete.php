<?php  
if(isset($_GET["post-delete"])){
    $post_id = $_GET["post-delete"];
    mysqli_query($conn, "DELETE FROM post WHERE id = '$post_id'");
    header ("location:index.php?post");
    
}

    
?>