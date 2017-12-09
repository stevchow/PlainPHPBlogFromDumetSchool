<?php
if(isset($_POST["submit"])){
    $name = $_POST ["name"];
    mysqli_query($conn, "INSERT INTO author VALUES ('','$name')");
    header("location:index.php?author");
}

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
                                <input class="form-control" type="text" name="name" />
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