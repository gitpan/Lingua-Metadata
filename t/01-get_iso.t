use strict;
use warnings;

use Test::More tests => 5;
BEGIN { use_ok('Lingua::Metadata') };

is(Lingua::Metadata::get_iso("cs"), "ces");
is(Lingua::Metadata::get_iso("cs"), "ces");
is(Lingua::Metadata::get_iso(undef), undef);
is(Lingua::Metadata::get_iso("fsdfss"), '');




