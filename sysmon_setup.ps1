# Download from url and write to C:\.
# When executed, will download Sysmon and configuration XML, unzip Sysmon, and start it.
# Automatically keeps up to date with latest versioning. Commenting out powershell.exe will allow you to edit scripts prior to execution.
#
# Author: Jeff Starke

$url1 = "https://download.sysinternals.com/files/Sysmon.zip"
$file1 = "C:\Sysmon.zip"

$url2 = "https://raw.githubusercontent.com/Starke427/Sysmon-Configs/master/sysmon_config.xml"
$file2 = "C:\sysmon_config.xml"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url1, $file1)
(New-Object -TypeName System.Net.WebClient).DownloadFile($url2, $file2

Expand-Archive -LiteralPath C:\Sysmon.zip -DestinationPath C:\Sysmon
C:\Sysmon\Sysmon.exe -accepteula -h sha256 -n -l -i C:\sysmon_config.xml
