Write-Host "Installing Chocolatey..."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# Globally Auto confirm every action
choco feature enable -n allowGlobalConfirmation

Write-Host "Installing packages with Chocolatey..."

# License required for visualstudioprofessional2017
#choco install visualstudio2017professional --params "--productKey ****-****-****-****"
choco install visualstudio2017community
# Additional feature/s for visual studio required to compile C++ code
visualstudio2017-workload-nativedesktop
cinst visualstudio2017-workload-data --params "--add Microsoft.VisualStudio.Component.VC.CLI.Support"

choco install cmake
choco install git
#choco install tortoisegit
choco install jdk8
choco install nuget.commandline

# default IE sucks
choco install googlechrome
