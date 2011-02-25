package Acme::Gane::Hakusan 0.01;
use 5.12.1;

use Module::Pluggable require => 1;
use Any::Moose;
extends 'Acme::Gane';

use UNIVERSAL::require;

sub model {
    my $selected = ucfirst $_[1];
    my ($model) = grep { /$selected/ } $_[0]->_get; 
    return $model;
}

sub models {
    my @models = $_[0]->_get;
    return map { $_->name . "\n" } @models;
}

sub _get {
    my $class = shift;
    my @models = $class->plugins();
    return @models;
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
