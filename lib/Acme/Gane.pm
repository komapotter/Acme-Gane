package Acme::Gane 0.02;
use strict;
use warnings;

use Any::Moose;
use UNIVERSAL::require;

sub brand {
    $_[0]->_get($_[1]);        
}

sub _get {
    my ( $class, $brand ) = @_;
    my $module = join '::', "Acme::Gane", ucfirst $brand;
    $module->require or die $@;
    return $module->new;
}

no Any::Moose;
__PACKAGE__->meta->make_immutable;

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
