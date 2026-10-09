fx_version 'cerulean'
game 'common'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
node_version '22'

name 'oxmysql'
author 'Overextended'
version '2.14.3'
license 'LGPL-3.0-or-later'
repository 'https://github.com/communityox/oxmysql.git'
description 'FXServer to MySQL communication via node-mysql2'

dependencies {
    '/server:12913',
}

client_script 'ui.lua'
server_script 'dist/build.js'

provide 'mysql-async'
provide 'ghmattimysql'

convar_category 'OxMySQL' {
	'Configuration',
	{
		{ 'Connection string', 'mysql_connection_string', 'CV_STRING', 'mysql://user:password@localhost/database' },
		{ 'Debug', 'mysql_debug', 'CV_BOOL', 'false' }
	}
}
