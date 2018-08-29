<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'db_magicbeans');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'administrador');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', 'Ulycha_M4gic');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'qKiQSa/PHlhPUdC!;+29l6lrbP_qe[zIj$xOOQ]E<YJe>%0>;y+?6L ]R2S/|l9>');
define('SECURE_AUTH_KEY',  'u15,(H](3&ef?+bkRw*xA_#@XnVEfQ:hm)%6k3ctX<|i[6 XN#$M~04nj~MYl9Q7');
define('LOGGED_IN_KEY',    'HHTn@F1b*TRg Z-U7wH1PNSCw1I^4+d/!,19_w %C?g7Y6(1l$KIA?O~`/i5N V|');
define('NONCE_KEY',        'n6~8rsCGl5BXnIo8RG~$zmhP$45JC0rQ]#6Ty1ZKq}eqyhG(t+xK~.hdLP6cPOY-');
define('AUTH_SALT',        '.j31}wmO]pEm-{:jLI:.Ocy<U9XMERF2p3uN1%dWly}fe`##;!9PsIP[{T^D7_}@');
define('SECURE_AUTH_SALT', 'wXg9eMgItQ^Qi&n2cSGtKCioqVlM2qc~#BZ7Ezp;,lJQy#[T]bUe*Uj1:=Y8Aj_!');
define('LOGGED_IN_SALT',   'MhE8-!EM&]{$Hu:5{$f[I=iVrwaK,Bw51_[yx4{3q^xa;t, Bv>|K[B(h2Wy6)g ');
define('NONCE_SALT',       '%D~4QgRTej9KJUfk?l^=|Cl+hd(k%dob4_^:itPtVJz`Bp,#>&zhZ@TpH2LV5}bT');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix  = 'mb_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
