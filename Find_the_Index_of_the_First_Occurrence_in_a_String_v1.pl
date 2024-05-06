#!/bin/perl -w

use strict;
use feature 'say';

sub Find_the_Index_of_the_First_Occurrence_in_a_String{
	my $needle = shift;
	my $haystack = shift;
	my @haystack = split('', $haystack);

	foreach (0 .. $#haystack - length($needle)){
		if (join('', @haystack[$_ .. ($_ + length($needle) - 1)]) eq $needle){
			return $_
		}	
	}	
	return -1
}

say(Find_the_Index_of_the_First_Occurrence_in_a_String('sad', 'sadbutsad'));
say(Find_the_Index_of_the_First_Occurrence_in_a_String('leeto', 'leetcode'));
