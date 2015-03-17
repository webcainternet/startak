<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="col-sm-12">
	<div class="warning"><?php echo $error_warning; ?></div>
  </div>
<?php } ?>
<?php echo $column_left; ?>
		<div class="<?php if ($column_left or $column_right) { ?>col-sm-9<?php } ?> <?php if (!$column_left & !$column_left) { ?>col-sm-12  <?php } ?> <?php if ($column_left & $column_right) { ?>col-sm-6<?php } ?>" id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="box-container">
	  <p><?php echo $text_account_already; ?></p>
	  <p><?php echo $text_signup; ?></p>
	  <form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="register">
		<h2><?php echo $text_your_details; ?></h2>
		<div class="content">
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_firstname; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="firstname" value="<?php echo $firstname; ?>" />
					<?php if ($error_firstname) { ?>
					<span class="error hel-block"><?php echo $error_firstname; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_lastname; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="lastname" value="<?php echo $lastname; ?>" />
					<?php if ($error_lastname) { ?>
					<span class="error help-block"><?php echo $error_lastname; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_email; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="email" value="<?php echo $email; ?>" />
					<?php if ($error_email) { ?>
					<span class="error help-block"><?php echo $error_email; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_telephone; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="telephone" value="<?php echo $telephone; ?>" />
					<?php if ($error_telephone) { ?>
					<span class="error help-block"><?php echo $error_telephone; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><?php echo $entry_fax; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="fax" value="<?php echo $fax; ?>" />
				</div>
			</div>
		</div>
		<h2><?php echo $text_your_address; ?></h2>
		<div class="content">
			<div class="form-group">
				<label class="control-label col-sm-5"><?php echo $entry_company; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="company" value="<?php echo $company; ?>" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><?php echo $entry_website; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="website" value="<?php echo $website; ?>" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_address_1; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="address_1" value="<?php echo $address_1; ?>" />
					<?php if ($error_address_1) { ?>
					<span class="error help-block"><?php echo $error_address_1; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><?php echo $entry_address_2; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="address_2" value="<?php echo $address_2; ?>" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_city; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="city" value="<?php echo $city; ?>" />
					<?php if ($error_city) { ?>
					<span class="error help-block"><?php echo $error_city; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="postcode" value="<?php echo $postcode; ?>" />
					<?php if ($error_postcode) { ?>
					<span class="error help-block"><?php echo $error_postcode; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_country; ?></label>
				<div class="col-sm-7">
					<select name="country_id">
						<option value="false"><?php echo $text_select; ?></option>
						<?php foreach ($countries as $country) { ?>
						<?php if ($country['country_id'] == $country_id) { ?>
						<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
						<?php } ?>
						<?php } ?>
					</select>
					<?php if ($error_country) { ?>
						<span class="error help-block"><?php echo $error_country; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_zone; ?></label>
				<div class="col-sm-7">
					<select class="q1" name="zone_id">
				</select>
				<?php if ($error_zone) { ?>
				<span class="error help-block"><?php echo $error_zone; ?></span>
				<?php } ?>
				</div>
			</div>
		</div>
		<h2><?php echo $text_payment; ?></h2>
		<div class="content">
			<div class="form-group">
				<label class="control-label col-sm-5"><?php echo $entry_tax; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="tax" value="<?php echo $tax; ?>" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><?php echo $entry_payment; ?></label>
				<div class="col-sm-7">
					<?php if ($payment == 'cheque') { ?>
					<input type="radio" name="payment" value="cheque" id="cheque" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="payment" value="cheque" id="cheque" />
					<?php } ?>
					<label for="cheque"><?php echo $text_cheque; ?></label>
					<?php if ($payment == 'paypal') { ?>
					<input type="radio" name="payment" value="paypal" id="paypal" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="payment" value="paypal" id="paypal" />
					<?php } ?>
					<label for="paypal"><?php echo $text_paypal; ?></label>
					<?php if ($payment == 'bank') { ?>
					<input type="radio" name="payment" value="bank" id="bank" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="payment" value="bank" id="bank" />
					<?php } ?>
					<label for="bank"><?php echo $text_bank; ?></label>
				</div>
			</div>
			<div class="form-group payment" id="payment-cheque" >
				<label class="control-label col-sm-5"><?php echo $entry_cheque; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="cheque" value="<?php echo $cheque; ?>" />
				</div>
			</div>
			<div class="form-group payment" id="payment-paypal" >
				<label class="control-label col-sm-5"><?php echo $entry_paypal; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="text" name="paypal" value="<?php echo $paypal; ?>" />
				</div>
			</div>
			<div id="payment-bank" class="payment">
				<div class="form-group">
					<label class="control-label col-sm-5"><?php echo $entry_bank_name; ?></label>
					<div class="col-sm-7">
						<input class="q1" type="text" name="bank_name" value="<?php echo $bank_name; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-5"><?php echo $entry_bank_branch_number; ?></label>
					<div class="col-sm-7">
						<input class="q1" type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-5"><?php echo $entry_bank_swift_code; ?></label>
					<div class="col-sm-7">
						<input class="q1" type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-5"><?php echo $entry_bank_account_name; ?></label>
					<div class="col-sm-7">
						<input class="q1" type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-5"><?php echo $entry_bank_account_number; ?></label>
					<div class="col-sm-7">
						<input class="q1" type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" />
					</div>
				</div>
			</div>
		</div>
		<h2><?php echo $text_your_password; ?></h2>
		<div class="content">
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_password; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="password" name="password" value="<?php echo $password; ?>" />
					<?php if ($error_password) { ?>
					<span class="error help-block"><?php echo $error_password; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5"><span class="required">*</span> <?php echo $entry_confirm; ?></label>
				<div class="col-sm-7">
					<input class="q1" type="password" name="confirm" value="<?php echo $confirm; ?>" />
					<?php if ($error_confirm) { ?>
					<span class="error help-block"><?php echo $error_confirm; ?></span>
					<?php } ?>
				</div>
			</div>
		</div>
		<?php if ($text_agree) { ?>
		<div class="buttons">
		  <div class="checkbox">
			<label>
				<?php if ($agree) { ?>
				<input type="checkbox" name="agree" value="1" checked="checked" />
				<?php } else { ?>
				<input type="checkbox" name="agree" value="1" />
				<?php } ?>
				<?php echo $text_agree; ?>
			</label>
			<a onclick="$('#register').submit();" class="button-cont-right fright"><?php echo $button_continue; ?><i class="fa fa-arrow-circle-right"></i></a>
		  </div>
		</div>
		<?php } else { ?>
		<div class="buttons">
			<a onclick="$('#register').submit();" class="button-cont-right fright "><?php echo $button_continue; ?></a>
		</div>
		<?php } ?>
	  </form>
  </div>
  <?php echo $content_bottom; ?></div>

<?php echo $column_right; ?>

<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=affiliate/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/theme385/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';
					
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}
	
					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('input[name=\'payment\']').bind('change', function() {
	$('.payment').hide();
	
	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').fancybox({
		
	});
});
//--></script> 
<?php echo $footer; ?>