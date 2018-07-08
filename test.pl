#!/usr/bin/perl
use warnings;
use strict;
use File::Copy;

my $path = "This/is/a/path";
my @test = split(/\//, $path);

my @result = splice(@test, 0, -1);

print @result;







# use strict;
# use warnings;

# use Config::Any;

# my @files = (
#   './i3/config'
# );

# my $config = Config::Any->load_files({files => \@files });