#!/usr/bin/env perl

#Author: Xingfu Wu
#MCS, ANL
# exe.pl: average the execution time in 5 runs
#
use Time::HiRes qw(gettimeofday); 

$A_FILE = "tmpoutfile.txt";
foreach $filename (@ARGV) {
 #  print "Start to preprocess ", $filename, "...\n";
   $ssum = 0.0;
   $nmax = 1;
   @nn = (1..$nmax);
   for(@nn) {
    #$retval = gettimeofday( ); 
    system("mpirun -np 1 $filename -m event > tmpoutfile.txt 2>&1");
    open (TEMFILE, '<', $A_FILE);
    while (<TEMFILE>) {
        $line = $_;
        chomp ($line);

        if ($line =~ /Runtime/) {
                ($v1, $v2) = split(': ', $line);
                printf("%.3f", $v2)
        }
   }
   close(TEMFILE);
    #$tt = gettimeofday( );
    #$ttotal = $tt - $retval;
    #$ssum = $ssum + $ttotal;
   }
   #$avg = $ssum / $nmax;
 #  print "End to preprocess ", $avg, "...\n";
 #printf("%.3f", $avg);
}
