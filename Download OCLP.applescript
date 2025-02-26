# Applescript create by chris1111
# Copyright (c) 2025 chris1111 All rights reserved.
#
# Credit: Apple
# Version "1.0" by chris1111
# Vars

set Tag to text returned of (display dialog "
 - - - - - - - - - - - - - - - - - - - - 
 Download OpenCore-Legacy-Patcher
   - - - - - - - - - - - - - - - - - - - - 
	
⬇ ︎Type the Tag number for your release: 
Then press the (OK) button 

Latest Release Tag is (2.2.0)

Other working Tag for OpenCore-Patcher.pkg
2.1.2 / 2.1.1 / 2.1.0 / 2.0.1 / 2.0.0 / 1.5.0
 

It will be downloaded on 
/Desktop/Download_OCLP/(Your Tag number)
- - - - - - - - - - - - - - - - - - - - " default answer "2.2.0" with icon note buttons {"Cancel", "OK"} default button {"OK"})
set progress description to "OpenCore-Legacy-Patcher
======================================
Download OpenCore-Patcher.pkg from Github 
======================================
"

set progress total steps to 7

set progress additional description to "Analyse URL"
delay 2
set progress completed steps to 1

set progress additional description to "Connecting to Github"
delay 2
set progress completed steps to 2

set progress additional description to "Connecting OK"
delay 2
set progress completed steps to 3

set progress additional description to "Downloading Package"
delay 1
set progress completed steps to 4

set progress additional description to "Downloading OpenCore-Patcher.pkg ➦ " & Tag & ""
set theSourceCode to do shell script "mkdir -p $HOME/Desktop/Download_OCLP/" & Tag & ""
delay 1
--curl cmd
set theSourceCode to do shell script "curl -L  https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/" & Tag & "/OpenCore-Patcher.pkg -o $HOME/Desktop/Download_OCLP/" & Tag & "/OpenCore-Patcher.pkg"
set progress completed steps to 5

set progress additional description to "Download in Progress Wait . . . ."
delay 0.5
set progress completed steps to 6

set progress additional description to "Download in Progress ➤ ➤ 90%"
delay 1
set progress completed steps to 7
set progress additional description to "
Downloading Completed ➤ ➤ 100%"
delay 3
do shell script "open $HOME/Desktop/Download_OCLP/" & Tag & ""
return Tag