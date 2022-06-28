/*
Template Name:Team123


*/

<?php get_header();?>
<section class="page-wrap">
	<div class="container">


		 <section class="row">
       	

       	<div class="col-lg-9">

		<h1><?php echo single_cat_title();?></h1>

		<h3><?php the_field('color');?></h3>

		
		

        <?php get_template_part('includes/section','archive');?>

        <?php previous_posts_link();?>
        <?php next_posts_link();?>

        </div>


        </section>
        
	</div>
