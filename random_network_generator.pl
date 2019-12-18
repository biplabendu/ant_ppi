#!/usr/bin/perl
use warnings;
use strict;
use feature qw{ say };

use List::Util qw{ shuffle };

open my $fh_list, '<', shift or die $!;
chomp( my @words = sort <$fh_list> );

open my $fh_ban, '<', shift or die $!;
my %ban;
while (<$fh_ban>) {
    chomp;
    my ($ban1, $ban2) = sort split /-/;
    undef $ban{"$ban1-$ban2"};
}

my @all;
for my $i1 (0 .. $#words) {
    for my $i2 ($i1 + 1 .. $#words) {
        my $pair = [ $i1, $i2 ];
        push @all, $pair unless exists $ban{"$words[$i1]-$words[$i2]"};
    }
}

my @solutions;
my %used;
#Number of required solution/network can be set here!
while (@solutions < 30) {
#Number of required interactions in the solutions can be set here!
    my $solution = join ' ', sort +(shuffle(0 .. $#all))[0 .. 99];
    redo if exists $used{$solution};

    undef $used{$solution};
    push @solutions, [
        map join('-', @words[
            @{ $all[$_] }[int rand 2 ? (0, 1) : (1, 0)]
        ]), split ' ', $solution
    ];
}

say join "\n", @$_, '---' for @solutions;