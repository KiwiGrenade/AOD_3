# ============================================================================
#  runSquare-C.rnd.p2p.pl
# ============================================================================

#  Author(s)       (c) 2005 Camil Demetrescu, Andrew Goldberg
#  License:        See the end of this file for license information
#  Created:        Nov 20, 2005

#  Last changed:   $Date: 2005/11/20 23:36:25 $
#  Changed by:     $Author: demetres $
#  Revision:       $Revision: 1.1 $

#  9th DIMACS Implementation Challenge: Shortest Paths
#  http://www.dis.uniroma1.it/~challenge9

#  Square-C family experiment driver
#  runs the p2p solver on instances in the Square-C family

#  Usage: > perl runSquare-C.rnd.p2p.pl
# ============================================================================

# param setup:
$START   = 0;       # max arc weight C goes from 4^$START to 4^$END
$END     = 15;
$TRIALS  = 1;       # number of trials per data point

$RESFILE   = "../results/Square-C.rnd.p2p.res";
$PREFIX    = "../inputs/Square-C/Square-C";
$SOLVER    = "../solvers/mlb-dimacs/mbp.exe";
$GRAPH     = "$PREFIX.%s.%s.gr";
$AUX       = "$PREFIX.%s.%s.p2p";

# header:
print "\n* 9th DIMACS Implementation Challenge: Shortest Paths\n";
print   "* http://www.dis.uniroma1.it/~challenge9\n";
print   "* Square-C family p2p core experiment\n";

# open result file
open FILE, ">$RESFILE" or die "Cannot open $RESFILE for write :$!";

# generation loop:
for ( $p = $START; $p < $END + 1 ; $p++ ) { 

    # run trials per data point
    for ( $trial = 0; $trial < $TRIALS; ++$trial) {
		
        $graphname = sprintf $GRAPH, $p, $trial;
        $auxname   = sprintf $AUX, $p, $trial;

		# run experiment and collect stdout
		$out = `$SOLVER $graphname $auxname`;
		print FILE $out;
	}
}

close FILE;


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
# License aSquare with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
# ============================================================================

