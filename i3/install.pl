#!/usr/bin/perl

use warnings;
use File::Copy;

require "../utils.pl";

print "### Installing I3 configuration";

my $HOME = $ENV{"HOME"};
replaceConfig("./config", "$HOME/.i3/config");
restartI3();
