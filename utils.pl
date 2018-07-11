sub replaceConfig {
  my ($src, $to) = @_;
  my @dest_splited_path = split(/\//, $to);
  my $dest_folder = splice(@dest_splited_path, 0, -1);
  copy($to, $dest_folder);
  copy($src, $to) or die "Copy of $src to $to Failed";
  copy($to, $dest_folder) or die "Backup of $to Failed";
}

sub restartI3 {
  print "Restarting i3...";
  system('i3-msg reload');
  print " done!";
}

sub file_extension {
  my ($filename) = @_;
  my @fragments = split(/\./, $filename);
  my $len = length(@fragments);
  my ($first) = @fragments;
  if(defined $first && length(@fragments) > 0){
    return splice(@fragments, -1);
  }
  else {
    return '';
  }
}

1;