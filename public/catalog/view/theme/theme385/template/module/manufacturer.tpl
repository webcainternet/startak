<div class="clear"></div>
<div class="box man" style="background-color: #FFFFFF; border-top: dotted 1px #DDDDDD;border-bottom: dotted 1px #DDDDDD;">
   <div class="box-heading">Encontre aqui as melhores marcas</div>
   <div class="box-man">
    <?php if ($manufacturers) { ?>
    <ul>
      <?php $i=0; foreach ($manufacturers as $manufacturer) { $i++;  ?>
      <li><a href="<?php echo $manufacturer['href']; ?>"><img src="<?php echo $manufacturer['image']; ?>" alt="<?php echo $manufacturer['name']; ?>" /></a></li>
        
        <?php if ($i==6) break; } ?>
    </ul>
    <?php } ?>
    <div class="clear"></div>
  </div>
</div>