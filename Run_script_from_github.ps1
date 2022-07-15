<#  This script will help create a raw URL that helps to grab content from the online git hub repository 
===============================================================================================================
Example url - https://github.com/AnshulAwasthi21/pers_ref/blob/main/sample_script.ps1
url to use with the Invoke method cmdlet - https://raw.githubusercontent.com/AnshulAwasthi21/pers_ref/main/sample_script.ps1
#>

$githubscript = Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/AnshulAwasthi21/pers_ref/main/sample_script.ps1'

# The variable $ps1content will contain the script content
$ps1content = ($githubscript).Content

#In order to execute the script directly from the github repo run the below cmdlet 

Invoke-Expression $ps1content
