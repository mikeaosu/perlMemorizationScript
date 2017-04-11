#!/usr/bin/perl
#
#<one line to give the program's name and a brief idea of what it does.>
#    Copyright (C) <year>  <name of author>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#Also add information on how to contact you by electronic and paper mail.
#
#$path=`pwd`;
#$path=~s/\n/\//g;

if(@ARGV > 0){
  $fn=$ARGV[0];
}
else{
  die "Must supply a file.\n";
}

print "Loading file: ".$fn."\n";

open (FILE,"$fn");
@lines=<FILE>;
close(FILE);

for($i=0;$i<@lines;$i++) {
  $lines[$i]=~ s/\n//g;
  @result = split(/\#/,$lines[$i]);
  print $i+1;
  print ". ";
  print "$result[0]\n";
  $foo = <STDIN>;
  print "$result[1]\n";
  }

