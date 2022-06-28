<?php
		               $args=array(
		                  'theme_location'=>'primary',
		                  'before_'=>'primary',
		                  
		                  
		               );
		            ?>
                    <?php wp_nav_menu('primary');?>
















                    /////



                    <?php get_header();?>


<!---team background------------------------>


<div class="team-background-img">
   <div class="team-main-heading1" data-aos="fade-left">
      <h1>Das <span>Fibuweiser-Team</span> stellt sich vor</h1>
   </div>
</div>

<!---team heading------------------------>


<div class="container">
 <div class="das-team-heading">
    <div class="das-team-wrap">
       <p data-aos="fade-right">Fibuweiser</p>
       <h2 data-aos="fade-left">Das Team</h2>
       <p class="team-gray-txt" data-aos="fade-right">Von unserem Hauptsitz in Wien Liesing aus betreuen wir mit umfassenden Leistungen in der Geschäsbuchhaltung
       bzw. Finanzbuchhaltung zahlreiche Klienten im Wiener Zentralraum und St. Pölten. Durch unseren angestrebten
         zweiten Standort in Gmunden am Traunsee in Oberösterreich können wir unsere Klienten bis nach Salzburg begleiten.
       Optimale Aufgabenverteilung und Abstimmung ermöglichen uns ausreichend Zeit für die persönliche Betreuung
       jedes einzelnen Klienten – und das unabhängig von der Größe!</p>
    </div>
 </div>
</div> 
<!---team members------------------------>

		
		

        <?php get_template_part('includes/section','archive');?>

        <?php previous_posts_link();?>
        <?php next_posts_link();?>

        </div>


        </section>
        
	</div>



</section>

<?php get_footer();?>