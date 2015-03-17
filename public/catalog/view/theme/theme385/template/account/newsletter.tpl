<?php echo $header; ?>
<?php echo $column_left; ?>
		<div class="<?php if ($column_left or $column_right) { ?>col-sm-9<?php } ?> <?php if (!$column_left & !$column_left) { ?>col-sm-12  <?php } ?> <?php if ($column_left & $column_right) { ?>col-sm-6<?php } ?>" id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="box-container">
	  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="newsletter">
		<div class="content">
		  <table class="form">
			<tr>
				<td>
					<label class="inline"><?php echo $entry_newsletter; ?></label>
					<?php if ($newsletter) { ?>
					<label class="radio inline">
						<input type="radio" name="newsletter" value="1" checked="checked" />
						<?php echo $text_yes; ?>&nbsp;
					</label>
					<label class="radio inline">
						<input type="radio" name="newsletter" value="0" />
						<?php echo $text_no; ?>
					</label>
					<?php } else { ?>
					<label class="radio inline">
						<input type="radio" name="newsletter" value="1" />
						<?php echo $text_yes; ?>&nbsp;
					</label>
					<label class="radio inline">
						<input type="radio" name="newsletter" value="0" checked="checked" />
						<?php echo $text_no; ?>
					</label>
					<?php } ?>
				</td>
			</tr>
		</table>
		</div>
		<div class="buttons">
		  <div class="left"><a href="<?php echo $back; ?>" class="button-back-left"><i class="fa fa-reply"></i><?php echo $button_back; ?></a></div>
		  <div class="right"><a onclick="$('#newsletter').submit();" class="button-cont-right"><?php echo $button_continue; ?><i class="fa fa-arrow-circle-right"></i></a></div>
		</div>
	  </form>
  </div>
  <?php echo $content_bottom; ?></div>

<?php echo $column_right; ?>
				
<?php echo $footer; ?>