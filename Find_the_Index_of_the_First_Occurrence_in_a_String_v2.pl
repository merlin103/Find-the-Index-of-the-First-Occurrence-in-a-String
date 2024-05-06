#!/bin/perl -w

use strict;
use feature 'say';

sub Find_the_Index_of_the_First_Occurrence_in_a_String{
	my $needle = shift;
	my $haystack = shift;

	foreach (0 .. length($haystack) - length($needle)){
		if (substr($haystack, $_, length($needle)) eq $needle){
			return $_
		}	
	}	
	return -1
}

say(Find_the_Index_of_the_First_Occurrence_in_a_String('sad', 'sadbutsad')); # 0
say(Find_the_Index_of_the_First_Occurrence_in_a_String('leeto', 'leetcode')); # -1
say(Find_the_Index_of_the_First_Occurrence_in_a_String('sad', 'butsadsad')); # 3
