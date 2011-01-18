package Acme::Gane::Hakusan::Role 0.01;
use utf8;
use Any::Moose '::Role';

use Encode;

requires qw(frame);

has 'is_clearglass' => (is => 'rw', isa => 'Bool', default => sub { 1 });
has 'is_sunglass' => (is => 'rw', isa => 'Bool', default => sub { 0 });
has 'is_tiger' => (is => 'rw', isa => 'Bool', default => sub { 0 });

1;
