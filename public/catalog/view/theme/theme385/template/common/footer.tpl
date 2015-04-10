<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
</section>
<footer>
	<div class="container" style="padding: 0px;">
		<div style="float: left; width: 25%; font-size: 22px; color: #FFFFFF;">Televendas: <span style="font-weight: bold;">0800 1001234</span></div>
		<div style="float: left; width: 61%; background-color: #f79748; ">Cadastre-se</div>
		<div style="float: left; width: 160px; text-align: center;">
			<img src="/image/data/logo_startak_252x108.png" width="140" style="width: 140px; margin-top: -20px; margin-bottom: 20px;">
		</div>
	</div>

	<div class="container" style="background-color: #FFFFFF; padding: 40px;">
		<div class="row">
			<?php if ($informations) { ?>
			<div class="col-sm-2">
				<h3><?php echo $text_information; ?></h3>
				<ul>
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
				</ul>
			</div>
			<?php } ?>
			<div class="col-sm-2">
				<h3><?php echo $text_service; ?></h3>
				<ul>
				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h3><?php echo $text_extra; ?></h3>
				<ul>
				<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
				<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
				<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
				<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h3><?php echo $text_account; ?></h3>
				<ul>
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h3>Siga-nos no Facebook</h3>
				<ul>
					<li><div class="ft-facebook">
                        <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fsubmarino&amp;width&amp;height=62&amp;colorscheme=light&amp;show_faces=false&amp;header=true&amp;stream=false&amp;show_border=true&amp;appId=319421398152485" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:62px;" allowtransparency="true"></iframe>                                
                    </div></li>
				</ul>
			</div>
			
		</div>
		
	</div>
	<div id="powered">
		<div class="container">
			<div class="row">
				<div class="col-sm-12" style="text-align: center;">
				<div>Todas as regras e promoções são válidas apenas para produtos vendidos e entregues pelo Submarino.
O valor de oferta do produto será garantido após a finalização da compra. Havendo divergência, prevalecerá o menor preço ofertado.</div>

				<div>B2W - Companhia Digital / CNPJ: 00.776.574/0006-60 / Inscrição Estadual: 492.513.778.117 / Endereço: Rua Sacadura Cabral, 102 - Rio de Janeiro, RJ - 20081-902 Atendimento ao cliente: atendimento.sub@submarino.com.br</div>

				<div style="margin-top: 20px;">
					<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
				</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>
</div>
</div>
</div>
</body></html>