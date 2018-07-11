#!/usr/bin/perl
use strict;
use warnings;
use File::Copy;

require '../utils.pl';

print "### Installing wallpapers. Thank you unsplash.com!";

my $HOME = $ENV{"HOME"};
my $directory = '.';

opendir (DIR, $directory) or die $!;

while (my $file = readdir(DIR)) {
  my $extension = file_extension($file);
  my $dest = "$HOME/Pictures/Wallpapers/";
  if ("$extension" eq 'jpg') {
    copy($file, "$dest/$file") or die "Failed to copy file $file to $dest"
  }
}
closedir(DIR);
