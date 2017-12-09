<?php 

/** INPUT feedback **/
if(isset($_POST["submit"])){
    $feed_id = $_POST["feed_id"];
    $name = $_POST["name"];
    $email = $_POST["email"];
    $subject = $_POST["subject"];
    $feed = $_POST["feed"];
    $date = date("Y-m-d H:i:s");
    mysqli_query($conn, "INSERT INTO feedback VALUES('','$name','$email','$subject','$feed','$date')");
    header ("location:index.php?contact=$feed_id&success-feed#success");
}

/** DETAIL feed **/
$contact_id = $_GET["contact"];
$query = mysqli_query($conn,"SELECT *
                       FROM feedback
                       WHERE feedback.id = '$contact_id' ");
                       

?>

	<div class="section">
			<h1>Contact</h1>
			<p>
				You can replace all this text with your own text. Want an easier solution for a Free Website? Head straight to Wix and immediately start customizing your website! Wix is an online website builder with a simple drag & drop interface, meaning you do the work online and instantly publish to the web. All Wix templates are fully customizable and free to use. Just pick one you like, click Edit, and enter the online editor.
			</p>
            
            
            
            
            
			<form method="post" class="message" id="success">
            
                <?php if(isset($_GET["success-feed"])){?>
                    <div class="successfeed">
                      <br />
                      <p style="color: blue;">Thank you, you will get our answer ASAP !</p>
                    </div>
                <?php } ?>
            
				<input type="text" name="name" value="Name" onFocus="this.select();" onMouseOut="javascript:return false;"/>
				<input type="text" name="email" value="Email" onFocus="this.select();" onMouseOut="javascript:return false;"/>
				<input type="text" name="subject" value="Subject" onFocus="this.select();" onMouseOut="javascript:return false;"/>
				<textarea name="feed" ></textarea>
				<input type="submit" name="submit" value="Send"/>
                <input type="hidden" name="feed_id" value="<?php echo $contact_id?>"/>
			</form>
		</div>
		<div class="section contact">
			<p>
				For Inquiries Please Call: <span>877-433-8137</span>
			</p>
			<p>
				Or you can visit us at: <span>ZeroType<br> 250 Business ParK Angel Green, Sunville 109935</span>
			</p>
		</div>