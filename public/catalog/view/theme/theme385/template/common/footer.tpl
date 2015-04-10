<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
</section>
<footer>
	<div class="container" style="padding: 0px;">
		<div style="float: left; width: 25%; font-size: 22px; color: #FFFFFF;">Televendas: <span style="font-weight: bold;">0800 1001234</span></div>
		<div style="float: left; width: 61%;">
			<div style="margin-top: -15px;">
					
					<input type="search" name="search" placeholder="Receba nossas novidades..." value=""  style="float: left; padding: 10px; height: 45px; width: 600px; margin-left: 40px;">

					<div class="button-search" style="float: left; background-color: #f79748; padding: 10px; padding-top: 0px;">
						<img src="/image/data/search-icon-hi.png" style="margin-top: 10px;">
					</div>
			</div>
		</div>
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
				<div style="width: 70%; font-size: 8px; margin: auto; margin-top: 0px;">STARTAK.COM.BR É UMA EMPRESA QUE PERTENCE AO GRUPO DG5 DIGITAL COMÉRCIO ELETRÔNICO LTDA| CNPJ: 20.412.983/0001-80| TODOS OS DIREITOS RESERVADOS. OS PREÇOS ANUNCIADOS NESTE SITE OU VIA E-MAIL PROMOCIONAL PODEM SER ALTERADOS SEM PRÉVIO AVISO. O STARTAK.COM.BR NÃO É RESPONSÁVEL POR ERROS DESCRITIVOS. AS FOTOS CONTIDAS NESTA PÁGINA SÃO MERAMENTE ILUSTRATIVAS DO PRODUTO E PODEM VARIAR DE ACORDO COM O FORNECEDOR/LOTE DO FABRICANTE. ESTE SITE TRABALHA 100% EM CRIPTOGRAFIA SSL.</div>

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