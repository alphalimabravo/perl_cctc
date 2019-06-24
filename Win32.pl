# Win32.pl
# This is a program written for a cybersecurity capstone course
# that demonstrates how to use Windows APIs with the Perl programming language
#
# Functions called: 
# LoginName - returns the username of the person running Perl
# NodeName - returns the NetBIOS name of the computer
# FsType - returns the type of file system used on the computer
# GetCwd - returns the current working directory
# GetOSName - returns the operating system name
# 
# Author: Alexis Berens
# 20 Jun 2019



# Populates variables with API function calls

use win32;
$login = Win32::LoginName();
$NetBIOS = Win32::NodeName();
$FileSystem = Win32::FsType();
$Directory = Win32::GetCwd();
$OS_Name = Win32::GetOSName();

# Prints output

print "User: $login\n";
print "Computer name: $NetBIOS\n";
print "File system: $FileSystem\n";
print "Current directory: $Directory\n";
print "Operating system: $OS_Name\n";