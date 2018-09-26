[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
(new-object System.Net.WebClient).DownloadFile('https://github.com/jsreport/jsreport/releases/download/2.2.0/jsreport-osx.tar.gz','jsreport-osx.tar.gz')
7z x "jsreport-osx.tar.gz" -so | 7z x -aoa -si -ttar
ren jsreport jsreport.exe
Compress-Archive -LiteralPath jsreport.exe  -CompressionLevel Optimal -DestinationPath jsreport.zip 
del jsreport.exe
del jsreport-osx.tar.gz