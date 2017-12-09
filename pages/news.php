<?php
/** paging post**/
$per_page = 4;
$cur_page = 1;
if (isset($_GET["page"])){
    $cur_page = $_GET["page"];
    $cur_page = ($cur_page > 1) ? $cur_page : 1; 
}

$total_data = mysqli_num_rows (mysqli_query($conn,"SELECT * FROM post"));
$total_page = ceil($total_data/$per_page);
/**ceil = pembulatan keatas**/
$offset = ($cur_page - 1) * $per_page;


/** tampilkan data post **/
$query = mysqli_query($conn, "SELECT post.*, author.author_name
FROM post, author 
WHERE author.id = post.author_id
ORDER BY id DESC
LIMIT $per_page OFFSET $offset");

/** TAMPIL COMMENT di samping **/
$comment = mysqli_query($conn,"SELECT * FROM comment WHERE STATUS = '1' ORDER BY id DESC limit 4");

?>
<h1>News</h1>
<?php if(mysqli_num_rows($query)){?>
 <?php while($row=mysqli_fetch_array($query)){?>
	<div class="main">
    	<ul class="news">
    		<li>
    			<div class="date">
    				<p>
    					<?php echo $row["date"]?>
    				</p>
    			</div>
                
                
    			<h2><?php echo $row["title"]?>
                    <span>
                        <a href="index.php?author=<?php echo $row["author_id"]?>"  class="author" >
                             <?php echo $row["author_name"]?> 
                        </a> 
                        <span style="font-size: 12px;"><?php echo tgl_indonesia($row["date"])?></span>
                    </span>
                </h2>
                
                
    			<p>
                    <?php echo $row["description"]?>
                    <span><a href="index.php?detail=<?php echo $row["id"]?>" class="more">Read More</a></span>
    			</p>
    		</li>
    	</ul>
    </div>
  <?php } ?>       
 <?php } ?>
		<div class="sidebar">
			<h1>Recent Comment</h1>
			<ul class="posts">
			<?php if(mysqli_num_rows($comment)){?>
                <?php while($row_comment = mysqli_fetch_array($comment)){?>
                  <li class="list-group-item">
                    <strong><?php echo $row_comment["name"]?></strong>: <?php echo $row_comment["reply"]?>
                  </li>
                <?php } ?>
            <?php } ?>
			</ul>
		</div>
  
  <?php if(isset($total_page)){?>
    <?php if($total_page > 1){?>    
      <div class="pagination" style="text-align: center; color: orangered; font-size: 25px;">
      
        <?php if($cur_page > 1) {?>
         <a href="index.php?page=<?php echo $cur_page - 1 ?>" >
         <span >Prev</span>
         </a>
          <?php }else{?>
                <span class="disabled">Prev</span>
          <?php }?>
          
          
          <?php if ($cur_page < $total_page){?>
              <a href="index.php?page=<?php echo $cur_page + 1 ?>" >
                <span>Next</span>
              </a>
                <?php }else{?>
                    <span class="disabled">Next</span>
          <?php } ?>
          
      </div>
    <?php } ?>
<?php } ?>