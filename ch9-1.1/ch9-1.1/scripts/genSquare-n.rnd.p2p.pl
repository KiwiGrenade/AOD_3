# ============================================================================
#  genSquare-n.p2p.pl
# ============================================================================

#  Author(s)       (c) 2005 Camil Demetrescu, Andrew Goldberg
#  License:        See the end of this file for license information
#  Created:        Nov 9, 2005

#  Last changed:   $Date: 2006/02/21 16:47:46 $
#  Changed by:     $Author: demetres $
#  Revision:       $Revision: 1.4 $

#  9th DIMACS Implementation Challenge: Shortest Paths
#  http://www.dis.uniroma1.it/~challenge9

#  Random point-to-point query generator for the Square-n family
#  Creates a suite of point-to-point shortest path
#  problem-specific auxiliary files.

#  Usage: > perl genSquare-n.rnd.p2p.pl
# ============================================================================

# param setup:

$NUMQUERY = 1000;    # num queries
$START    = 14;      # num nodes goes from 2^$START to 2^$END
$END      = 21;      # please adjust this limit to fit your available mem
$SEED     = 971;     # seed of pseudo-random generator
$TRIALS   = 1;       # number of trials per data point

$DIR     = "../inputs/Square-n";
$FORMAT   = "$DIR/Square-n.%s.%s.p2p";


# header:
print "\n* 9th DIMACS Implementation Challenge: Shortest Paths\n";
print   "* http://www.dis.uniroma1.it/~challenge9\n";
print   "* Random query generator for the Square-n family\n";


# creates directory (if does not exist)
system "mkdir -p $DIR";


# generation loop:
for ( $p = $START; $p < $END + 1 ; $p++ ) { 

    #init seed
    srand ($SEED);

    # compute actual number of nodes 
    # (for odd values of p $n won't be a power of 2)
    $idealn = (1<<$p);
    $height = int(sqrt($idealn));
    $width  = int($idealn / $height);
    $n = $height * $width;

    $str = $p % 2 ? "n=$n < $idealn=2^$p" : "n=$n=2^$p";
    print "\n>> Generating p2p instances for data point [$str]\n";

    # generate trials per data point
    for ( $trial = 0; $trial < $TRIALS; ++$trial) {

        $pathname = sprintf $FORMAT, $p, $trial;
        $trialseed = int(rand(0x7FFFFFFF));
        printf "   - Generating file %s [seed %-10s] ...",$pathname, $trialseed;

        # open file in write mode
        open FILE, ">$pathname" or die "Cannot open $pathname for write :$!";

        # write file header
        print FILE "c 9th DIMACS Implementation Challenge: Shortest Paths\n";
        print FILE "c http://www.dis.uniroma1.it/~challenge9\n";
        print FILE "c Square-n family p2p problem aux file\n";
        print FILE "c\n";
        print FILE "p aux sp p2p $NUMQUERY\n";
        print FILE "c graph contains $n nodes\n";
        print FILE "c file contains $NUMQUERY query pairs\n";
        print FILE "c\n";

        # write $NUMSRC random node pairs to the file
        for ( $i = 0; $i < $NUMQUERY; ++$i ) {
            $src  = 1 + int(rand($n));            
            $dest = 1 + int(rand($n));            
            print FILE "q $src $dest\n";
        }

        # close file
        close FILE;
        
        print " [DONE]\n";
    }
}


# ============================================================================
# Copyright (C) 2005 Camil Demetrescu, Andrew Goldberg

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.

# You should have received a copy of the GNU General Public
# License along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
# ============================================================================

