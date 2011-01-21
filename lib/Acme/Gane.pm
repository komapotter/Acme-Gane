package Acme::Gane;
use strict;
use warnings;

our $VERSION = '0.04';

use Any::Moose;
use UNIVERSAL::require;

use Path::Class qw/dir/;
use Cwd;

sub brand {
    $_[0]->_get($_[1]);        
}

sub _get {
    my ( $class, $brand ) = @_;
    my $module = join '::', __PACKAGE__, ucfirst $brand;
    $module->require or die $@;
    return $module->new;
}

sub model_list {
    my $class = shift ;
    my $dir = dir(Cwd::getcwd(), 'lib', join '/', (split '::', $class->pkg_name));
    my @list = map { (my $file = $_->basename ) =~ s/\.pm//; uc $file } grep { ! /Role/ } $dir->children;
    return "@list";
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
