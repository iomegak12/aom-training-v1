param(
    [string] $hostName,
    [string] $keyFilePath,
    [string] $userName
)

$session = New-PSSession -HostName $hostName -UserName $userName -KeyFilePath $keyFilePath -SSHTransport

$session

Invoke-Command $session -ScriptBlock {
    sudo apt-get update

    curl -sSL https://get.docker.com | sudo bash -E -

    sudo usermod -aG docker vmadmin
}

Remove-PSSession $session