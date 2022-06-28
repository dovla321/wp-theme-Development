<?php
/**
 * @ Author: Bill Minozzi
 * @ Copyright: 2020 www.BillMinozzi.com
 * @ Modified time: 2021-03-02 12:38:04
 */
global $wptools_checkversion;
global $wptools_tab;
$active_tab = $wptools_tab;
if (!defined('ABSPATH')) {
  die('We\'re sorry, but you can not directly access this file.');
}
?>
<h2 class="nav-tab-wrapper">
  <a href="admin.php?page=wptools_options31&tab=dashboard" class="nav-tab">Dashboard</a>
  <a href="admin.php?page=wptools_options31&tab=requirements" class="nav-tab">Server Check & Requirements</a>
  <a href="admin.php?page=wptools_options31&tab=tools" class="nav-tab">More Tools</a>
</h2>
<?php

  echo '<div id="wptools-dashboard-left">'; 

if($wptools_tab == 'dashboard')
   require_once(WPTOOLSPATH . 'dashboard/dashboard.php');
elseif($wptools_tab == 'tools')
   require_once(WPTOOLSPATH . 'dashboard/freebies.php');
else
   require_once(WPTOOLSPATH . 'dashboard/requirements.php');

?>

   </div> <!-- "wptools-dashboard-left"> -->

   <div id="wptools-dashboard-right">
   <div id="wptools-containerright-dashboard">
       <?php require_once(WPTOOLSPATH . "dashboard/mybanners.php"); ?>
   </div>
   </div> <!-- "wptools-dashboard-right"> -->

<?php
return;
?>