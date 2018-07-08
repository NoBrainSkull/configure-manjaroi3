#!/usr/bin/perl

use warnings;
use File::Copy;

my $HOME = $ENV{"HOME"};
print "Installing i3 configuration...";
replaceConfig("./config", "$HOME/.i3/config");
print " done!\n";
restartI3();

sub replaceConfig {
  my ($src, $to) = @_;
  my @dest_splited_path = split(/\//, $to);
  my $dest_folder = splice(@dest_splited_path, 0, -1);
  copy($to, $dest_folder) or die "Backup of $to Failed";
  copy($src, $to) or die "Copy of $src to $to Failed";
  copy($to, $dest_folder) or die "Backup of $to Failed";
}

sub restartI3 {
  print "Restarting i3...";
  system('i3-msg reload');
  print " done!";
}