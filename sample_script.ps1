# Sample script to fetch Windows Update Details

Get-CimInstance -ClassName Win32_Service |?{$_.Name -eq 'wuauserv'}|`
select @{name='Display Name';Expression={ $_.DisplayName}}`
,Name,@{name='Log on As';Expression={$_.Startname}},State,StartMode
