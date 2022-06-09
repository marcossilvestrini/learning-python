#Vagrant Boxes
$debian = "F:/Projetos/alura/alura-python/vagrant/debian/"

#up debian
Set-Location $debian
vagrant up
Copy-Item .\.vagrant\machines\debian_python\virtualbox\private_key F:\Projetos\vagrant-pk\debian

#Fix powershell error
$Env:VAGRANT_PREFER_SYSTEM_BIN += 0

#open ssh tabs for conect
wt -p "Windows Powershell" -d $debian --title "Vagrant Debian" --tabColor '#a99300'
