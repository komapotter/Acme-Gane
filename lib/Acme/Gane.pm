package Acme::Gane;
use strict;
use warnings;
our $VERSION = '0.01';

use UNIVERSAL::require;

sub type {
    $_[0]->_get($_[1] || 'Wellington');        
}

sub _get {
    my ( $class, $type ) = @_;
    my $module = "Acme::Gane::Type::$type";
    $module->require or die $@;
    return $module->new;
}

1;
__END__

=head1 NAME

Acme::Gane -

=head1 SYNOPSIS

  use Acme::Gane;

=head1 DESCRIPTION

Acme::Gane is

=head1 AUTHOR

komapotter E<lt>tora.05.036jp@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
