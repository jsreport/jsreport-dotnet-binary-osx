﻿#download the binary from github and zip it as expected by c#
wget https://github.com/jsreport/jsreport/releases/download/2.7.1/jsreport-osx.tar.gz 
tar -xzf jsreport-osx.tar.gz 
mv jsreport jsreport.exe 
zip jsreport-new.zip ./jsreport.exe
mv jsreport-new.zip jsreport.zip
rm jsreport-osx.tar.gz
rm license.txt
rm jsreport.exe

# the test in travis unfortunatelly still fails on version `GLIBCXX_3.4.20' not found 
