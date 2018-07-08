#!/usr/bin/perl

use warnings;
use File::Copy;

require "../utils.pl";

print "### Configuration startup... ";

my $HOME = $ENV{"HOME"};
replaceConfig("./.startup.sh", "$HOME/.startup.sh");
replaceConfig("./.zshrc", "$HOME/.zshrc");

print "done."