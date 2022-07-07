Import-Module .\utilities.psm1

$hostsFilePath = "C:\0 - OAM - v1\Data\Hosts.xml"
$servers = get-hosts -hostsFilePath $hostsFilePath -hostType Server

$servers | % { $_.HostName }