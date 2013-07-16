<!DOCTYPE html>
<html lang="en">
<head>
	<?php echo $this->Html->charset(); ?>
	<title><?php echo SITE_NAME ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script language="javascript">
		var urlForJs="<?php echo SITE_URL ?>";
	</script>
	<?php
		echo $this->Html->meta('icon');

		echo $this->Html->meta(
		    'Author',
		    'MM Arif MZ'
		);

		echo $this->Html->meta(
		    'description',
		    'CloudCampus is a cloud based application to manage business data for university , college, school and kindergarden.'
		);

		echo $this->Html->meta(
		    'keywords',
		    'cloud campus, cloud campus management system, cloud solution, cloud management system'
		);

		/* Bootstrap CSS */
		#echo $this->Html->css('bootstrap.css?q='.QRDN); // default bootstrap theme
		echo $this->Html->css('bootstrap.bluewave.css?q='.QRDN); // blue + white theme
		#echo $this->Html->css('bootstrap.superhero.css?q='.QRDN); // dark green + orange theme
		echo $this->Html->css('bootstrap-responsive.css?q='.QRDN);
		
		/* Usermgmt Plugin CSS */
		echo $this->Html->css('/usermgmt/css/umstyle.css?q='.QRDN);
		
		/* Jquery UI CSS taken from http://jqueryui.com */
		echo $this->Html->css('/usermgmt/css/jquery-ui-1.10.2.custom.min');
		
		/* Jquery Datetime addon taken from http://trentrichardson.com */
		echo $this->Html->css('/usermgmt/css/jquery-ui-timepicker-addon');
		
		/* Jquery latest version taken from http://jquery.com */
		echo $this->Html->script('/usermgmt/js/jquery-1.9.1');
		
		/* Jquery UI JS taken from http://jqueryui.com */
		echo $this->Html->script('/usermgmt/js/jquery-ui-1.10.2.custom.min');
		
		/* Jquery Datetime addon taken from http://trentrichardson.com */
		echo $this->Html->script('/usermgmt/js/jquery-ui-timepicker-addon');

		/* Usermgmt Plugin JS */
		echo $this->Html->script('/usermgmt/js/umscript.js?q='.QRDN);

		/* Bootstrap JS */
		echo $this->Html->script('bootstrap.js?q='.QRDN);


		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="page-header">
		    	<h1><img class="hidden-phone" width="144" height="78" alt="" src="<?php echo SITE_URL;?>/img/logo.png">
		    		<a href="<?php echo SITE_URL;?>"><?php echo SITE_NAME ?></a><small> Management App</small></h1>
		    </div>
			<?php echo $this->element('Usermgmt.message'); ?>
			<?php echo $this->element('Usermgmt.message_validation'); ?>
			<?php echo $this->fetch('content'); ?>
			<div style="clear:both"></div>
		</div>
	</div>
</body>
</html>