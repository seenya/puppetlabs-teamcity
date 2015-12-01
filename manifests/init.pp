class teamcity inherits teamcity::params {

	file {$cacheDir :
		ensure => 'directory',
	}

	file {$destTar :
		source => $sourceTar
	}

}