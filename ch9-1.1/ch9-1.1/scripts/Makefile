# ============================================================================
#  Makefile
# ============================================================================

#  Author:         (c) 2005-2006 Camil Demetrescu, Andrew Goldberg
#  License:        See the end of this file for license information
#  Created:        November 15, 2005
 
#  Last changed:   $Date: 2006/02/21 22:09:56 $
#  Changed by:     $Author: irene $
#  Revision:       $Revision: 1.8 $

#  9th DIMACS Implementation Challenge: Shortest Paths
#  http://www.dis.uniroma1.it/~challenge9

#  Usage: > make         (Creates all core families)
#  Usage: > make run     (Runs all experiments)
#  Usage: > make gen_gr  (Creates gr instances)
#  Usage: > make gen_ss  (Creates ss instances)
#  Usage: > make run_ss  (Runs ss experiments)
#  Usage: > make gen_p2p (Creates p2p instances)
#  Usage: > make run_p2p (Runs p2p experiments)
#  Usage: > make clean   (Deletes all core test instances and results)

all: gen_gr gen_ss gen_p2p
run: run_ss run_p2p

gen_gr:
	perl genUSA-road-d.gr.pl
	perl genUSA-road-t.gr.pl
	perl genRandom4-n.gr.pl
	perl genRandom4-C.gr.pl
	perl genLong-n.gr.pl
	perl genLong-C.gr.pl
	perl genSquare-n.gr.pl
	perl genSquare-C.gr.pl

gen_ss:
	perl genRandom4-n.ss.pl
	perl genRandom4-C.ss.pl
	perl genLong-n.ss.pl
	perl genLong-C.ss.pl
	perl genSquare-n.ss.pl
	perl genSquare-C.ss.pl
	perl genUSA-road-d.ss.pl
	perl genUSA-road-t.ss.pl

gen_p2p:
	perl genRandom4-n.rnd.p2p.pl
	perl genRandom4-n.loc.p2p.pl
	perl genRandom4-C.rnd.p2p.pl
	perl genRandom4-C.loc.p2p.pl
	perl genLong-n.rnd.p2p.pl
	perl genLong-n.loc.p2p.pl
	perl genLong-C.rnd.p2p.pl
	perl genLong-C.loc.p2p.pl
	perl genSquare-n.rnd.p2p.pl
	perl genSquare-n.loc.p2p.pl
	perl genSquare-C.rnd.p2p.pl
	perl genSquare-C.loc.p2p.pl
	perl genUSA-road-d.rnd.p2p.pl
	perl genUSA-road-d.loc.p2p.pl
	perl genUSA-road-t.rnd.p2p.pl
	perl genUSA-road-t.loc.p2p.pl

run_ss:
	perl runRandom4-n.ss.pl
	perl runRandom4-C.ss.pl
	perl runLong-n.ss.pl
	perl runLong-C.ss.pl
	perl runSquare-n.ss.pl
	perl runSquare-C.ss.pl
	perl runUSA-road-d.ss.pl
	perl runUSA-road-t.ss.pl

run_p2p:
	perl runRandom4-n.rnd.p2p.pl
	perl runRandom4-n.loc.p2p.pl
	perl runRandom4-C.rnd.p2p.pl
	perl runRandom4-C.loc.p2p.pl
	perl runLong-n.rnd.p2p.pl
	perl runLong-n.loc.p2p.pl
	perl runLong-C.rnd.p2p.pl
	perl runLong-C.loc.p2p.pl
	perl runSquare-n.rnd.p2p.pl
	perl runSquare-n.loc.p2p.pl
	perl runSquare-C.rnd.p2p.pl
	perl runSquare-C.loc.p2p.pl
	perl runUSA-road-d.rnd.p2p.pl
	perl runUSA-road-d.loc.p2p.pl
	perl runUSA-road-t.rnd.p2p.pl
	perl runUSA-road-t.loc.p2p.pl

clean:
	cd ../inputs; rm -rf Random4-n
	cd ../inputs; rm -rf Random4-C
	cd ../inputs; rm -rf Long-C
	cd ../inputs; rm -rf Long-n
	cd ../inputs; rm -rf Square-C
	cd ../inputs; rm -rf Square-n
	cd ../inputs; rm -rf USA-road-d
	cd ../inputs; rm -rf USA-road-t
	cd ../results; rm *.res


#  Copyright (C) 2005-2006 Camil Demetrescu, Andrew Goldberg

#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.

#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.

#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA 
