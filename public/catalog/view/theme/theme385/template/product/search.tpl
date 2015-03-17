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
	  <b style=" padding-bottom:7px; display:block;"> <?php echo $text_critea; ?></b>
	   <div class="content">
	<div>
		<h3><?php echo $entry_search; ?></h3>
		<div class="form-group">
			<?php if ($search) { ?>
			<input type="text" name="search" value="<?php echo $search; ?>" />
			<?php } else { ?>
			<input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
			<?php } ?>
		</div>
		<div class="form-group">
			<select name="category_id">
				<option value="0"><?php echo $text_category; ?></option>
				<?php foreach ($categories as $category_1) { ?>
				<?php if ($category_1['category_id'] == $category_id) { ?>
				<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
				<?php } ?>
				<?php foreach ($category_1['children'] as $category_2) { ?>
				<?php if ($category_2['category_id'] == $category_id) { ?>
				<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
				<?php } ?>
				<?php foreach ($category_2['children'] as $category_3) { ?>
				<?php if ($category_3['category_id'] == $category_id) { ?>
				<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
				<?php } ?>
				<?php } ?>
				<?php } ?>
				<?php } ?>
			</select>
		</div>
		<div class="form-group">
				<div class="checkbox">
				<label for="sub_category">
				<?php if ($sub_category) { ?>
				<input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
				<?php } else { ?>
				<input type="checkbox" name="sub_category" value="1" id="sub_category" />
				<?php } ?>
				<?php echo $text_sub_category; ?></label>
				</div>
		</div>
		<div class="form-group">
			<div class="checkbox">
				<label for="description">
				<?php if ($description) { ?>
					<input type="checkbox" name="description" value="1" id="description" checked="checked" />
					<?php } else { ?>
					<input type="checkbox" name="description" value="1" id="description" />
					<?php } ?>
				<?php echo $entry_description; ?>
				</label>
			</div>
		</div>
	</div>
	
	
  </div>
	  <div class="buttons">
		<div class="right"><a id="button-search" class="button"><span><?php echo $button_search; ?></span></a></div>
	  </div>
  </div>
  <h2><?php echo $text_search; ?></h2>
  <?php if ($products) { ?>
  <div class="product-filter">
	<div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>
		<div class="sort"><?php echo $text_sort; ?>
	  <select onchange="location = this.value;">
		<?php foreach ($sorts as $sorts) { ?>
		<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
		<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
		<?php } else { ?>
		<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
		<?php } ?>
		<?php } ?>
	  </select>
	</div><div class="limit"><?php echo $text_limit; ?>
	  <select onchange="location = this.value;">
		<?php foreach ($limits as $limits) { ?>
		<?php if ($limits['value'] == $limit) { ?>
		<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
		<?php } else { ?>
		<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
		<?php } ?>
		<?php } ?>
	  </select>
	</div>
 <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  </div>
 
  <div class="product-grid">
	<ul class="row">
		<?php $i=0; foreach ($products as $product) { $i++; ?>
		<?php 
			if ($i%3==1) {
				$a='first-in-line';
			}
			elseif ($i%3==0) {
				$a='last-in-line';
			}
			else {
				$a='';
			}
		?>
		<li class="col-sm-4 <?php echo $a?>">
			<div class="padding">
	  <?php if ($product['thumb']) { ?>
	  <div class="image"><a href="<?php echo $product['href']; ?>"><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
	  <?php } ?>
	  <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
	  <div class="description"><?php echo $product['description']; ?></div>
	  <?php if ($product['price']) { ?>
	  <div class="price">
		<?php if (!$product['special']) { ?>
		<?php echo $product['price']; ?>
		<?php } else { ?>
   <span class="price-new"><?php echo $product['special']; ?></span>      <span class="price-old"><?php echo $product['price']; ?></span>
		<?php } ?>
		<?php if ($product['tax']) { ?>
		<br />
		<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
		<?php } ?>
	  </div>
	  <?php } ?>
	  <div class="cart-button">
				<div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" title="<?php echo $button_cart; ?>"><i class="fa fa-shopping-cart"></i><span><?php echo $button_cart; ?></span></a></div>
				<div class="wishlist"><a class="tooltip-1 " title="<?php echo $button_wishlist; ?>"  onclick="addToWishList('<?php echo $product['product_id']; ?>');"><i class="fa fa-star"></i></a></div>
				<div class="compare"><a class="tooltip-1" title="<?php echo $button_compare; ?>"  onclick="addToCompare('<?php echo $product['product_id']; ?>');"><i class="fa fa-bar-chart-o"></i></a></div>
				<div class="clear"></div>
			</div>
		  <div class="rating">
		  <?php if ($product['rating']) { ?>
		  <img height="13" src="catalog/view/theme/theme385/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
		  <?php } ?>
		  </div>
		  </div>
		</li>
		<?php } ?>
	 </ul>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php }?>
  <?php echo $content_bottom; ?></div>

<?php echo $column_right; ?>
  
<script type="text/javascript"><!--
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

function display(view) {
	if (view == 'list') {
		$('.product-grid ').attr('class', 'product-list');
		$('.product-list ul').removeClass('row');
		$('.product-list ul li').removeClass('col-sm-4');
		$('.product-list ul li').each(function(index, element) {
			html = '';
					html += '<div class="row">';
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image col-sm-3">' + image + '</div>';
			}
			html += '<div class="left col-sm-9">';
				html += '<div class="name">' + $(element).find('.name').html() + '</div>';
				html += '<div class="description">' + $(element).find('.description').html() + '</div>';
				var price = $(element).find('.price').html();
				if (price != null) {
					html += '<div class="price">' + price  + '</div>';
				}
				html += '<div class="cart-button">';
				html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
				html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
				html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
				html += '<div class="clear">' + $(element).find('.clear').html() + '</div>';
				html += '</div>';
				var rating = $(element).find('.rating').html();
				if (rating != null) {
					html += '<div class="rating">' + rating + '</div>';
				}
				html += '</div>';
				html += '</div>';
			

						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <div id="list_b"><i class="fa fa-list"></i></div> <a id="grid_a" onclick="display(\'grid\');"><i class="fa fa-th"></i></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		$('.product-grid ul').addClass('row');
		$('.product-grid ul li').addClass('col-sm-4');
		$('.product-grid ul li').each(function(index, element) {
			html = '';
					
			var image = $(element).find('.image').html();
			html += '<div class="padding">';
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			html += '<div class="left">';
		
			
			
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			
			html += '<div class="cart-button">';
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '<div class="clear">' + $(element).find('.clear').html() + '</div>';
			html += '</div>';
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
			
			html += '</div></div>';
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a id="list_a" onclick="display(\'list\');"><i class="fa fa-list"></i></a>  <div id="grid_b"><i class="fa fa-th"></i></i></div>');
		
		$.totalStorage('display', 'grid');
	}
	if ($('.container').width() > 800) {
	// tooltip demo
		$('.tooltip-toggle').tooltip({
		selector: "a[data-toggle=tooltip]"
		})
		$('.tooltip-1').tooltip({
			placement:'bottom'
		})
		$('.tooltip-2').tooltip({
			placement:'top'
		})
		}
	
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('grid');
}
//--></script> 
<?php echo $footer; ?>