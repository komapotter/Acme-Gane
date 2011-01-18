package Acme::Gane::Hakusan::Weeps 0.01;
use utf8;
use Any::Moose;
use Acme::EyeDrops 'sightly';

with 'Acme::Gane::Hakusan::Role';

sub frame {
    my $shape = <<'SHAPE';
   #######                                                    
 ############   #  #                                          
############### #######                                       
################ ##   ###    ###########                      
###### ##  #  ###       ##################                    
 ####           ###      ####  #  # ##########                
 ###            ##############          ##########     # #    
  ##            ########## ###           ##################   
  ##             ######### ###            ############ ##  #  
  ##             ##   ###    #             ############    #  
  #              ##     #                   ########      ##  
   #             ##    ##                   ######         #  
   #             #     ##                   #####         #   
   #            ##     ##                   ###               
    #           ##      #                   ###               
    #           ##      ##                  ##                
     #          #       ##                 ###                
      ##       ##        #                 ##                 
       ########          ##                ##                 
           #              #               ##                  
                           #              #                   
                            #            ##                   
                             ##         ##                    
                               ##########                     
                                     #                        
SHAPE
    my $source = <<"END";
print "WEEPS: plastic JPY31,000(tax in) 6COLORS\n";
END

    return sightly({
        ShapeString => $shape,
        SourceString => $source,
        Regex => 1,
        InformHandler => sub{},
    });
}

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
