class teamcity (
		$cacheDir        = $teamcity::params::cacheDir,
		$sourceTar       = $teamcity::params::sourceTar,
		$destTar         = $teamcity::params::destTar,
		$destUnzippedDir = $teamcity::params::destUnzippedDir,
	) inherits teamcity::params {

	file {$cacheDir :
		ensure => 'directory',
		#notify => Exec['unzip'],
	}

	file {$destTar :
		source => $sourceTar
	}

#	exec { 'unzip':
#		ensure => $destUnzippedDir
#		command => "7z -x o${destDir} ${destUnzippedDir}",
#		require => File[$destTar],
#	}

}