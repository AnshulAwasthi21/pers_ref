<#  This script will help create a raw URL that helps to grab content from the online git hub repository 
===============================================================================================================
Example url - https://github.com/AnshulAwasthi21/pers_ref/blob/main/sample_script.ps1
url to use with the Invoke method cmdlet - https://raw.githubusercontent.com/AnshulAwasthi21/pers_ref/main/sample_script.ps1
#>

# Provide the git hub url to grab a script from a public repository 
$url = 'https://github.com/AnshulAwasthi21/pers_ref/blob/main/sample_script.ps1' 

# Raw url builder
$rawurl = $url.Replace('github.com','raw.githubusercontent.com').Replace('blob/','')

$rawscripturl = Invoke-WebRequest -Uri "$rawurl"

# The variable $ps1content will contain the script content
$ps1content = ($rawscripturl).Content

#In order to execute the script directly from the github repo 
Invoke-Expression $ps1content
