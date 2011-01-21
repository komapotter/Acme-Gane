package Acme::Gane::Role 0.01;
use utf8;
use Any::Moose '::Role';
use Acme::EyeDrops 'sightly';

use Encode;

requires qw(frame_shape frame_source);

#has 'is_sunglass' => (is => 'rw', isa => 'Bool', default => sub { 0 });

sub frame {
    my $self = shift;
    return sightly({
        ShapeString => $self->frame_shape,
        SourceString => $self->frame_source,
        Regex => 1,
        InformHandler => sub{},
    });
}

1;
