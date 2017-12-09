<?php 


$post = mysqli_query ($conn,"SELECT * FROM post ORDER BY id ASC");



$feedback = mysqli_query ($conn,"SELECT *
                         FROM feedback
                         ORDER BY feedback.id DESC");



?>


<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Blog &raquo; Feedback</h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Feedback Data
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>name</th>
                                <th>email</th>
                                <th>subject</th>
                                <th>feed</th>
                                <th>Datetime</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php if(mysqli_num_rows($feedback)>0){?>
                            <?php while($row_feedback = mysqli_fetch_array($feedback)){ ?>
                            <tr>
                                <td><?php echo $row_feedback["name"]?></td>
                                <td><?php echo $row_feedback["email"]?></td>
                                <td><?php echo $row_feedback["subject"]?></td>
                                <td><?php echo $row_feedback["feed"]?></td>
                                <td><?php echo $row_feedback["date"]?></td>
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