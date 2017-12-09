<?php 
ob_start();
session_start();
if(!isset($_SESSION['admin_id'])) header ("location:login.php");
include "../include/config.php";
include "../function/function.php";
?>

<!DOCTYPE html>
<html>
<?php include("include/head.php") ?>
<body>
    <div id="wrapper">
        <?php include("include/header.php") ?>
        <div id="page-wrapper">
            <?php
            if (isset($_GET["author"])) include("page/blog/author.php");
            else if (isset($_GET["author-delete"])) include("page/blog/author-delete.php");
            else if (isset($_GET["author-update"])) include("page/blog/author-update.php");
            else if (isset($_GET["post"])) include("page/blog/post.php");
            else if (isset($_GET["post-delete"])) include("page/blog/post-delete.php");
            else if (isset($_GET["post-update"])) include("page/blog/post-update.php");
            else if (isset($_GET["feedback"])) include("page/blog/feedback.php");
            else if (isset($_GET["comment"])) include("page/blog/comment.php");
            else if (isset($_GET["comment-delete"])) include("page/blog/comment-delete.php");
            else if (isset($_GET["comment-update"])) include("page/blog/comment-update.php");
            else if (isset($_GET["comment-approve"])) include("page/blog/comment-approve.php");
            else if (isset($_GET["user"])) include("page/user/index.php");
            else if (isset($_GET["administrator"])) include("page/administrator/index.php");
            else if (isset($_GET["administrator-delete"])) include("page/administrator/delete.php");
            else if (isset($_GET["administrator-update"])) include("page/administrator/update.php");
            else include("page/home/index.php");
            ?>
        </div>
    </div>
    <?php include("include/footer.php") ?>
</body>
</html>

<?php 
mysqli_close ($conn);
ob_end_flush();
?>