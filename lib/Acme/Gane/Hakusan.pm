package Acme::Gane::Hakusan 0.01;
use strict;
use warnings;

use Any::Moose;
extends 'Acme::Gane';

use UNIVERSAL::require;

sub model {
    $_[0]->_get($_[1]);
}

sub _get {
    my ( $class, $model ) = @_;
    my $module = join '::', __PACKAGE__, ucfirst $model;
    $module->require or die $@;
    return $module->new;
}

sub pkg_name {
    return __PACKAGE__;
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
