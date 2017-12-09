<?php

if(isset($_POST["submit"])){
    $author_id = $_POST ["author_id"];
    $title = $_POST ["title"];
    $description = $_POST ["description"];
    $date = date("Y-m-d H:i:s");
    
    $file_name = $_FILES ["file"]["name"];
    $tmp_name = $_FILES ["file"]["tmp_name"];
    move_uploaded_file($tmp_name, "../images/".$file_name);
    mysqli_query($conn, "INSERT INTO post VALUES ('','$author_id','$title','$description','$date')");
    header ("location:index.php?post");
}

$author = mysqli_query ($conn, "SELECT * FROM author ORDER BY id ASC");

$post = mysqli_query ($conn, "SELECT post.* , author.author_name
                        FROM post, author
                        WHERE post.author_id = author.id
                        ORDER BY post.id DESC");
?>


<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Blog &raquo; Post</h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Input Data
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <form role="form" action="" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                            <label>author</label>
                                <select class="form-control" name="author_id">
                                    <option value=""> - choose - </option>
                                <?php if(mysqli_num_rows($author)){?>
                                    <?php while($row_cat = mysqli_fetch_array($author)){?>
                                        <option value="<?php echo $row_cat["id"]?>"> <?php echo $row_cat["author_name"]?> </option>
                                    <?php } ?>
                                <?php } ?>
                                </select>
                            </div>
                            
                            
                            
                            <div class="form-group">
                                <label>Title</label>
                                <input class="form-control" type="text" name="title" />
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control" rows="3" name="description"></textarea>
                            </div>
                            <button type="submit" name="submit" class="btn btn-success">Save</button>
                            <button type="reset" class="btn btn-warning">Reset</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                List Data
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>Author</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php if(mysqli_num_rows($post)){?>
                            <?php while ($row_post = mysqli_fetch_array($post)){?>
                            <tr>
                                <td><?php echo $row_post ["author_name"]?></td>
                                <td><?php echo $row_post ["title"]?></td>
                                <td><?php echo $row_post ["description"]?></td>
                                <td class="center"><a href="index.php?post-update=<?php echo $row_post ["id"]?>" class="btn btn-primary btn-xs" type="button">Update</a></td>
                                <td class="center"><a href="index.php?post-delete=<?php echo $row_post ["id"]?>" class="btn btn-primary btn-xs" type="button">Delete</a></td>
                            </tr>
                            <?php } ?>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>