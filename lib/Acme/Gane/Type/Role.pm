package Acme::Gane::Type::Role;
use utf8;
use Any::Moose '::Role';

use Encode;

requires qw(frame);

has 'is_clearglass' => (is => 'rw', isa => 'Bool', default => sub { 0 });
has 'is_sunglass' => (is => 'rw', isa => 'Bool', default => sub { 0 });

sub say {
    my ($self, $text) = @_;
    print encode_utf8("$text\n");
}

1;
