const { environment } = require('@rails/webpacker')

//Use boostrap
// $: 'jquery/src/jquery',
//			jQuery: 'jquery/src/jquery'',

//use bootstrap
const webpack = require('webpack')
environment.plugins.prepend
(
	'Provide', new webpack.ProvidePlugin
	(
		{
			$: 'jquery',
			jQuery: 'jquery',
			Popper: ['popper.js', 'default']
		}
	)
)

module.exports = environment
