package Acme::Gane::Hakusan::Plugin::Weeps 0.01;
use utf8;
use Any::Moose;

extends 'Acme::Gane::Hakusan';
with 'Acme::Gane::Role';

sub name { 'WEEPS' }

sub frame_shape {
    my $shape = <<'END';
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
END
}

sub frame_source {
    my $source = <<"END";
print "WEEPS: plastic JPY31,000(tax in) 6COLORS\n";
END
}

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
