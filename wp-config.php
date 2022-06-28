<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'test-projekat' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'I?KOgbYR:2U1v+.gd2qVR%rN?)9Tu+*R>Z4_CgeK.)OC|6k&(5d>[q>1]dO];Drk');
define('SECURE_AUTH_KEY',  '%x$uY?_tDl0LwZD%`B0I$!)va6|dm6d3}os}d{Rj6TnyGdNL#.x6A~Dpj|1bj|!>');
define('LOGGED_IN_KEY',    '8*7xn$JuSCm |2+Qv9Zq-wYWfH,eVE8x8%UxT`[.~|8rb.KqnVCFnQA/GA[|(W00');
define('NONCE_KEY',        'h:`%cs2q`gg-hdS@J2/W=YKLpzSC4`zn+l1$OG&gKx|Rl;?x(o=jhQ9T-WPC($d)');
define('AUTH_SALT',        'Jirw[{ca.Pt!VU1tW-7R>OLUhH>p^_`% k)=G$6+#]_>Oz9s&J7G}dBs{Ks;%HR7');
define('SECURE_AUTH_SALT', 'P389nZi*hKYl+62AIuCrZb1>#2z u`1o)9@h{J0.`U5@WxE;K(iJpY]~Qp&Jl{ld');
define('LOGGED_IN_SALT',   'mtA@<nw~zweZEOh+:D?YO}K-$&E/+n=]D;|(]7>6L5*fSRn=8SIsrgwXARY:t+ s');
define('NONCE_SALT',       '=beRM#^M:8|Ty^gplsRP?)xFOkB#v+3I$ybqdj+6SaY$jLbyZC)s@:!JjRE]>Z7+');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
