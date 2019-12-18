#!/usr/bin/perl

undef $/;
$_ = <>;
$n = 0;

for $match (split(/(?=---)/)) 
{
      open(O, '>solution' . ++$n);
      print O $match;
	 # print  O $match &&= $match !~ /(?=---)/;
	  close(O);
}

