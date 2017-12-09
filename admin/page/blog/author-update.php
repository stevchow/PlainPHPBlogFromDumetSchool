<?php
if(isset($_POST["update"])){
    $author_id = $_POST["id_author"];
    $name = $_POST["name"];
    mysqli_query ($conn, "UPDATE author SET author_name = '$name'
                    WHERE id = '$author_id'");
    header ("location:index.php?author");
}

/** TAMPILKAN DATA pada form **/
$id_author = $_GET["author-update"];
    $edit = mysqli_query($conn, "SELECT * FROM author WHERE id = '$id_author'");
    $row_edit = mysqli_fetch_array($edit);

$author = mysqli_query($conn, "SELECT * FROM author ORDER BY id DESC")

?>


<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Blog &raquo; Author</h1>
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
                        <form role="form" action="" method="post">
                            <div class="form-group">
                                <label>Name</label>
                                <input class="form-control" type="text" name="name" value="<?php echo $row_edit["author_name"]?>" />
                            </div>
                            <button type="submit" name="update" class="btn btn-success">update</button>
                            <button type="reset" class="btn btn-warning">Reset</button>
                            <input type="hidden" name="id_author" value="<?php echo $row_edit["id"]?>"/>
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
                                <th>Name</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php if(mysqli_num_rows($author)) {?>
                            <?php while($row_author = mysqli_fetch_array($author)){?>
                            <tr>
                                <td><?php echo $row_author["author_name"]?></td>
                                <td class="center"><a href="index.php?author-update=<?php echo $row_author["id"]?>" class="btn btn-primary btn-xs" type="button">Update</a></td>
                                <td class="center"><a href="index.php?author-delete=<?php echo $row_author["id"]?>" class="btn btn-primary btn-xs" type="button">Delete</a></td>
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