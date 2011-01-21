use 5.12.1;
use FindBin::libs;
use Acme::Gane;


#say Acme::Gane->brand('hakusan')->model_list;

say Acme::Gane->brand('hakusan')->model('weeps')->frame;
