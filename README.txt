Msatfinder README, Last Updated July 2006
Authors: Milo Thurston (mith@ceh.ac.uk) and Dawn Field
(dfield@ceh.ac.uk)
The latest version of this software is available at:

http://www.bioinf.ceh.ac.uk/msatfinder/downloads/msatfinder-latest.tar.gz
or
http://www.bioinf.ceh.ac.uk/msatfinder/downloads/msatfinder-latest.zip

This file describes the installation and usage of the msatfinder program
for the detection of microsatellite repeats. For full instructions,
please see the msatfinder user manual. Please send comments, suggestions,
or bug reports to the authors.


INSTALLATION

1.	Download the latest version of the msatfinder tar/zip file and unpack
it.

[~user] tar zxvf msatfinder-latest.tar.gz *
[~user] cd msatfinder-<version>

*or unzip msatfinder-latest.zip

2.	If you require that the program be available to all users, then 
copy the script to your preferred location, e.g.
 
[msatfinder-<version>] sudo cp msatfinder /usr/local/bin

3. Make sure the following dependencies are installed and configured on
your system, or on your PATH in the case of EMBOSS &c.:

Perl modules:
- Bioperl
- CGI
- Config::Simple
- File::Copy
- File::Basename
- Getopt::Std
- Term::ReadLine
- List::Util

Software:
EMBOSS (eprimer3)
Primer3_core

BASIC CONFIGURATION AND USAGE

To check that your package and all dependencies are installed and
configured correctly, test data is supplied (two baculovirus genomes in
Genbank format).

1. Read through the default values in msatfinder.rc, and change anything that
you think might require altering (e.g. types and thresholds of msats to be
searched for). This is probably not necessary for most searches.

2.	To run the search, type:

./msatfinder *gbk
or
./msatfinder *sprot

An example Swissprot and Genbank file is provided.

Output from this search will be found in the directories Fasta/,
Repeats/, Msat_tabs/, Flank_tabs/, and Primers/. An html index
containing hyperlinks to all the output files will be created as
Repeats/results.html. Open in your preferred web browser to view
the results.

For further details on how to set up searches of your own data, please see the 
Msatfinder user manual.

If you experience any problems running this software, please write to
the authors.
