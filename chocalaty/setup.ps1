[CmdletBinding()]
param([switch] $Update = $false,
	[switch] $Dev = $false)
	
$BasePackages = 'googlechrome', 
		'Firefox', 
		'notepadplusplus'

$DevPackages =  'git', 
		'virtualbox',
		'vagrant',
		'ruby', 
		'nodejs', 
		'java.jdk', 
		'groovy', 
		'gradle', 
		'hg',
		'android-sdk'

$Packages = $BasePackages

If($Dev -eq $true){
	$Packages = $Packages + $DevPackages
} 

echo "hi $Dev"		
		
echo "installing Chocalatey packages"

ForEach($Package in $Packages){
	echo "installing $Package"
	If ($Update -eq $true){
		cinst $Package -force
	}
	Else {
		cinst $Package
	}
}

echo "all done"