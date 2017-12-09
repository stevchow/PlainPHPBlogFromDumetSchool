<?php 

/** INPUT COMMENT **/
if(isset($_POST["submit"])){
    $post_id = $_POST["post_id"];
    $name = $_POST["name"];
    $comment = $_POST["comment"];
    $date = date("Y-m-d H:i:s");
    mysqli_query($conn, "INSERT INTO comment VALUES('','$post_id','$name','$comment','0','$date')");
    header ("location:index.php?detail=$post_id&success-comment#success");
}

/** DETAIL POST **/
$detail_id = $_GET["detail"];
$query = mysqli_query($conn,"SELECT post.*, author.author_name
                       FROM post, author
                       WHERE author.id = post.author_id AND post.id = '$detail_id' ");
                       
if(mysqli_num_rows($query)==0) header("location:news.php");
$row_detail = mysqli_fetch_array($query);


/** TAMPIL COMMENT **/
$comment = mysqli_query($conn,"SELECT * FROM comment WHERE post_id = '$detail_id'
                        AND STATUS = '1' ORDER BY id DESC ");

/** jumlah komentar **/
$data = mysqli_num_rows($comment);
?>


<div class="post">
	<div class="date1">
			<p>
				<?php echo tgl_indonesia($row_detail["date"])?>
			</p>
		</div>
		<h1><?php echo $row_detail["title"]?><span class="author">
        <a href="index.php?author=<?php echo $row_detail["author_id"]?>
            "><?php echo $row_detail["author_name"]?>
        </a>
        </span> </h1>
		<p>
			<?php echo $row_detail["description"]?>
		</p>
        
        <span style="float: left;"><?php echo $data?> Komentar</span>
        
        <div class="panel-body">
          <?php if(mysqli_num_rows($comment)){?>
            <?php while($row_comment = mysqli_fetch_array($comment)){?>
                <br />
                <strong><?php echo $row_comment["name"]?></strong>: <?php echo $row_comment["reply"]?>
                <br />
            <?php } ?>
          <?php } ?>
      </div> 
      
        <form method="post" id="success">
        
        <?php if(isset($_GET["success-comment"])){?>
                <div class="successcoment">
                  <br />
                  <p style="color: blue;">Terimakasih ! komentar anda sedang diproses</p>
                </div>
         <?php } ?>
        
            <br>
            <input type="text" name="name" value="" placeholder="your name" required>
            <br>
            <textarea name="comment" rows="7" cols="30" placeholder="type in your message here">
            </textarea>
            <br>
            
            <div class="kirim">
              <br />
              <button type="submit" name="submit">Kirim</button>
              <input type="hidden" name="post_id" value="<?php echo $detail_id?>"/>
            </div>
        </form>
        
           
        
    
		
		<span><a href="index.php?news" class="more">Back to News</a></span>
</div>