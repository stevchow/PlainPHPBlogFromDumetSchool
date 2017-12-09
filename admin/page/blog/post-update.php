<?php
/** update data **/
if(isset($_POST["update"])){
    $id_post = $_POST["id_post"];
    $author_id = $_POST["author_id"];
    $title = $_POST["title"];
    $description = $_POST["description"];
    
    $file_name = $_FILES["file"]["name"];
    $tmp_name = $_FILES["file"]["tmp_name"];
    if($file_name=="" || empty($file_name)){
        mysqli_query ($conn, "UPDATE post SET author_id = '$author_id', title = '$title',
                    description = '$description' 
                    WHERE id = '$id_post'");
    } else {
        mysqli_query ($conn, "UPDATE post SET author_id = '$author_id', title = '$title',
                    description = '$description' 
                    WHERE id = '$id_post'");
    }
    header ("location:index.php?post");
    
}

/** TAMPILKAN DATA PADA FORM **/
$post_id = $_GET ["post-update"];
$edit = mysqli_query($conn, "SELECT * FROM post WHERE id = $post_id");
$row_edit = mysqli_fetch_array($edit);

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
                                        <option <?php echo $row_edit["author_id"]==$row_cat["id"] ? "selected='selected'" : "" ?>
                                        value="<?php echo $row_cat["id"]?>"> <?php echo $row_cat["author_name"]?> </option>
                                    <?php } ?>
                                <?php } ?>
                                </select>
                            </div>
                            
                            
                            
                            <div class="form-group">
                                <label>Title</label>
                                <input class="form-control" type="text" name="title" value="<?php echo $row_edit["title"]?>" />
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control" rows="3" name="description"><?php echo $row_edit["description"]?>"</textarea>
                            </div>
                            <button type="submit" name="update" class="btn btn-success">update</button>
                            <button type="reset" class="btn btn-warning">Reset</button>
                            <input type="hidden" name="id_post" value="<?php echo $row_edit["id"]?>"/>
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