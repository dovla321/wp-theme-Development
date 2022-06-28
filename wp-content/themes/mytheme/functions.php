<?php 


function load_css(){

// BOOTSTRAP CSS
	wp_register_style('bootstrap',get_template_directory_uri() .'/css/bootstrap.min.css',array(),false,'all');

	wp_enqueue_style('bootstrap');

// MAIN CSS

	wp_register_style('main',get_template_directory_uri() .'/css/main.css',array(),false,'all');

	wp_enqueue_style('main');


}
add_action('wp_enqueue_scripts','load_css');


// LOAD JAVASCRIPT

function load_js(){

	wp_enqueue_script('jquery');

	wp_register_script('bootstrap',get_template_directory_uri() .'/js/bootstrap.min.js','jquery',false,true);

	wp_enqueue_script('bootstrap');
	
}

add_action('wp_enqueue_scripts','load_js');

// Theme Options

add_theme_support('menus');
add_theme_support('post-thumbnails');
add_theme_support('widgets');



// Menus
register_nav_menus( 
       
       array(

       	   'top-menu'=>'Top Menu Location',
       	   'mobile-menu'=>'Mobile Menu Location',
       	   'footer-menu'=>'Footer Menu Location',


       )

 );



// Custom image Sizes

add_image_size('blog-large',800,400,true);
add_image_size('blog-small',300,200,true);


// Register sidebars

function my_sidebars(){


  register_sidebar(
          

          array(

          	'name'=>'Page Sidebar',
          	'id'=>'page-sidebar',
          	'before_title'=>'<h4 class="widget-title">',
          	'after_title'=>'</h4>'


          )
  );

  register_sidebar(
          

          array(

          	'name'=>'Blog Sidebar',
          	'id'=>'blog-sidebar',
          	'before_title'=>'<h4 class="widget-title">',
          	'after_title'=>'</h4>'


          )
  );

}
add_action('widgets_init','my_sidebars');





// custom post type

function my_first_post_type(){

      $args=array(

         'labels'=>array(
                   
                   'name'=>'Cars',
                   'singular_name'=>'Car',

         ),
         'hierarchical'=> true,
         'public'=>true,
         'has_archive'=>true,
         'menu_icon'=>'dashicons-car',
         'supports'=>array('title','editor','thumbnail','custom-fields'),


      );
       
       register_post_type('cars',$args);


       

}
add_action('init','my_first_post_type');



function my_first_taxonomy(){

         $args=array(

            'labels'=>array(
                   
                    'name'=>'Brands',
                    
                    'singular_name'=>'Brand',

           ),
                    'public'=>'true',
                    'hierarchical'=>true,

         );

         register_taxonomy('brands', array('cars'),$args);

}
add_action('init','my_first_taxonomy');







add_action('wp_ajax_enquiry','enquiry_form');
add_action('wp_ajax_nopriv_enquiry','enquiry_form');

function enquiry_form(){


     if( !wp_verify_nonce($_POST['nonce'],'ajax-nonce')){

        wp_send_json_error('Nonce is incorrect',401);
        die();
     }




    $formdata=[];

    wp_parse_str($_POST['enquiry'], $formdata);


    // Admin email address

    $admin_email=get_option('admin_email');

   // Email headers

    $headers[]='Content-Type: text/html;charset=UTF-8';
    $headers[]='From: My Website <' . $admin_email . '>';
    $headers[]='Reply-to:' . $formdata['email'];

    // Who are we sanding email to?

    $send_to = $admin_email;


   //Subject

    $subject ="Enquiry from" . $formdata['fname'] . ' ' . $formdata['lname'];

    //Message

    $message='';

    foreach($formdata as $index => $field){

        $message .='<strong>'. $index . '</strong>:' . $field . '<br/>';
    }

    try{

        if (wp_mail($send_to, $subject, $message, $headers) ) {

            wp_send_json_success('Email sent');
        }
        else{
            wp_send_json_error('Email errorrrr');

        }
        
    }catch(Exception $e){

        wp_send_json_error($e->getMessage());
    }



    wp_send_json_success($formdata['fname']);
}





//Shortcode for latest cars

function my_shortcode($atts,$content=null, $tag=''){

    
     ob_start();

     set_query_var('attributes',$atts);

     get_template_part( 'includes/latest','cars');
     return ob_get_clean();
}
add_shortcode('latest_cars','my_shortcode');


//Shortcodes for phone and emaiil

function my_phone(){
    return '<a href="tel:063 446 274">063 446 274</a>';
}
add_shortcode('phone','my_phone');

function my_email(){
    
    return '<a href="#">myEmailmo@gmail.com</a>';

}
add_shortcode('email','my_email');