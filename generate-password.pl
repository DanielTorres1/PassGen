#!/usr/bin/env perl
use strict; 
use warnings;
use Data::Dumper;
no warnings 'uninitialized';
 
my $fullname = $ARGV[0]; # format --> daniel torres sandi

$fullname =~ s/\n//g; 
$fullname =~ s/á/a/g; 
$fullname =~ s/é/e/g; 
$fullname =~ s/í/i/g; 
$fullname =~ s/ó/o/g; 
$fullname =~ s/ú/u/g;
$fullname =~ s/ñ/n/g;  

#print $fullname,"\n";
my $name;
my $lastname1;
my $lastname2;

my @fullname_array = split(";",$fullname);

if ($fullname_array[3] eq '')
{
	$name = lc($fullname_array[0]);
	$lastname1 = lc($fullname_array[1]);
	$lastname2 = lc($fullname_array[2]);
}
else
{
	$name = lc($fullname_array[0]);
	$lastname1 = lc($fullname_array[2]);
	$lastname2 = lc($fullname_array[3]);
}

my $initial1 = unpack('A1',$name);
my $initial2 = unpack('A1',$lastname1);
my $initial3 = unpack('A1',$lastname2);

# Daniel Torres Sandi


my $username1 = $initial1.$initial2.$initial3;# dts

my $username2 = $initial1.".".$lastname1;# d.torres
my $username3 = $initial1.$lastname1; #dtorres

my $username4 = $name.".".$initial2; #daniel.t
my $username5 = $name.$initial2; # danielt

my $username6 = $name.".".$lastname1; #daniel.torres
my $username7 = $name.$lastname1; # danieltorres

print  "$name\n";
print  "$username1\n";
print  "$username2\n";
print  "$username4\n";
print  "$username5\n";
print  "$username6\n";
print  "$username7\n";
print  "$lastname1\n";
print  "$username3\n";
