package Acme::Gane::Type::Wellington;
use Any::Moose;
use Acme::EyeDrops 'sightly';

with 'Acme::Gane::Type::Role';

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
print "Wellington\n";
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
