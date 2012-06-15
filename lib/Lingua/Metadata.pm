use strict;
use warnings;
package Lingua::Metadata;

use LWP::Simple;

# ABSTRACT: turns baubles into trinkets

use constant SERVICE_URL => 'http://w2c.martin.majlis.cz/language/';

our %cache_iso = ();


sub get_iso
{
    my $label = shift;
    
    if ( ! defined($label) ) {
        return undef;
    }
    
    if ( ! defined($cache_iso{$label}) ) {
        print STDERR "Query - $label\n";
        my $url = SERVICE_URL . '?alias=' . $label;
        $cache_iso{$label} = get($url);
    }
    
    return $cache_iso{$label};    
}

1;

__END__
=pod

=head1 NAME

Lingua::Metadata - turns baubles into trinkets

=head1 VERSION

version 0.001

=head1 SYNOPSIS

=head1 METHODS

=head2 get_iso ($langage)

Returns an ISO 639-3 code for language. 

It returns undef, if the service is down or undef is passed as an argument.
It returns empty string, if the language couldn't be converted.
It returns ISO 639-3 otherwise.

=head1 AUTHOR

Martin Majlis <martin@majlis.cz>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Martin Majlis.

This is free software, licensed under:

  The (three-clause) BSD License

=cut

