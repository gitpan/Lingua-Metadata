use strict;
use warnings;

use Test::More tests => 5;
BEGIN { use_ok('Lingua::Metadata') };

my $cs_metadata = Lingua::Metadata::get_language_metadata("cs");
is($cs_metadata->{'iso 639-3'}, "ces");

my $ces_metadata = Lingua::Metadata::get_language_metadata("ces");
is($ces_metadata->{'iso 639-3'}, "ces");

my $unknown_metadata = Lingua::Metadata::get_language_metadata("dhjhfglj");
my %empty = ();
is_deeply($unknown_metadata, \%empty);

my $undef_metadata = Lingua::Metadata::get_language_metadata(undef);
is_deeply($undef_metadata, undef);


#is(Lingua::Metadata::get_language_metadata("ces"), "ces");
#is(Lingua::Metadata::get_iso(undef), undef);
#is(Lingua::Metadata::get_iso("fsdfss"), '');




