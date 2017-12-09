<?php 
ob_start(); #buffer pada header untuk menangani error header ketika proses pengiriman data
session_start();
include "include/config.php";
include "include/header.php";
include "function/function.php";
date_default_timezone_set("Asia/Jakarta");

?>

	 <?php if(isset($_GET["home"])){include "include/adbox.php";} ?>
	<div id="contents">
		<?php 
        if(isset($_GET["about"])){include "pages/about.php";}
        elseif(isset($_GET["contact"])){include "pages/contact.php";}
        elseif(isset($_GET["features"])){include "pages/features.php";}
        elseif(isset($_GET["news"]) || isset($_GET["page"])){include "pages/news.php";}
        elseif(isset($_GET["author"])|| isset($_GET["page-author"])) {include "include/author.php";}
        elseif(isset($_GET["detail"])){include "pages/detail.php";}
        else {include "pages/home.php"; }
        
        
        ?>
	</div>
 <?php include "include/footer.php"; ?>
 
</body>
</html>

<?php

mysqli_close($conn);
ob_end_flush();
?>