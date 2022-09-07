#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
#include "metals.inc"
#include "glass.inc"
#include "woods.inc"
#include "shapes3.inc"
#include "math.inc"       
#include "transforms.inc"



   

light_source {
  <-10,30,10>                     // light's position (translated below)
  color rgb <1,1,1>       // light's color
  spotlight                // this variation
  cylinder
  translate <0, 0, 0> // <x y z> position of light
  point_at <10, 0,-10>      // direction of spotlight
  radius 2                // hotspot (inner, in degrees)
  falloff 5               // intensity falloff radius (outer, in degrees)
}

light_source {
  <10, 30, 0>                     // light's position (translated below)
  color rgb <1,1,1>       // light's color
  spotlight               // this kind of light source
  cylinder                // this variation
  translate <0, 0, 0> // <x y z> position of light
  point_at <-10, 0, 10>      // direction of spotlight
  radius 5                // hotspot (inner, in degrees)
  falloff 50               // intensity falloff radius (outer, in degrees)
} 

   
sky_sphere{ pigment { gradient <0,1,0>
                      color_map { [0.00 rgb <0.4,0.5,0.5>]
                                  [0.25 rgb <0.0,0.1,0.4>]
                                  [0.35 rgb <0.0,0.1,0.4>]
                                  [0.05 rgb <0.4,0.5,0.5>] 
                                } scale 2         
                    } } 

plane { <0,-20,0> 1 
                texture{ T_Wood23    
                normal { wood 0.5 scale 0.05 turbulence 0.1 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              }} 



           


#declare Korpus =
union {

/*Кузов*/ 
 box { <-23, 6, -9>,< 20.00, 15, 9>   
                                  texture { pigment{ White_Marble } 
                                  finish { phong 1 } 
                                  rotate<0,0,20> scale 5
                                  }
                 }



/*Катки*/    
#declare X1 =
box { <20.90, 9.5, -11.8>,< 21.15, 4, 11.8>  
                                               pigment{  rgb <0.2,0.2,0.2> } 
                                                
                                               
 

                                                   
            translate<-21,-4.5,0>  rotate<0,0,0> translate<21,4.5,-0.05>}

#declare X2 =
object {X1 translate<-21,-4.5,0>  rotate<0,0,30> translate<22.3,4.5,-0.05>}

#declare X3 =
object {X1 translate<-21,-4.5,0>  rotate<0,0,60> translate<23.3,5.5,-0.05>}    
    
#declare X4 =
object {X1 translate<-21,-4.5,0>  rotate<0,0,90> translate<23.3,7,-0.05>} 

#declare X5 =
object {X1 translate<-21,-4.5,0>  rotate<0,0,-30> translate<19.7,5,-0.05>} 

#declare X6 =
object {X1 translate<-21,-4.5,0>  rotate<0,0,-60> translate<19.5,6.3,-0.05>}   


#declare C1 =
union {
        difference {
            cylinder { <4.5,5,-12>,<4.5,5,12>,3.5 
                            texture{ pigment{ gradient <1,1,1>
                            color_map{
                                [ 0.0 color Gray ]
                                [ 0.5 color rgb<0.2,0.2,0.2> ]
                                [ 0.5 color rgb<0,0,0> ]
                                [ 1.0 color Gray ]
                               } 
                             scale 0.7
                           } 
                           finish  { phong 1 reflection 0.10 }rotate<90,40,0>
                 } 


                      } 
            cylinder { <4.5,5,-12.5>,<4.5,5,12.05>,0.7  
                                  texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.0> }
                                  finish { diffuse 0.1 reflection 0.1  
                                  specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }                       
                                                      
                       }
                       scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              } translate<-4.5,-5,0> rotate<0,0,-1800> translate<4.5,5,0>
             }  
#declare C1Z =
union {
        difference {
            cylinder { <9.5,5,-10.5>,<9.5,5,10.5>,3.5
                                               texture{ pigment{ hexagon color White color Gray rgbf <0.4, 0.4, 0.4, 0.0> }   
                                               finish { diffuse 0.1 phong 1 reflection 0.1 roughness 0.3 }
                                               rotate<0,0,-40> scale 0.74 translate<0,0,0>
                                 }

            } 
            cylinder { <9.5,5,-10.55>,<9.5,5,10.55>0.7 
                                         texture{ pigment{ rgbf <0.8, 0.8, 0.8, 0.0> }
                                         finish { diffuse 0.1 reflection 0.1  
                                         specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }  
             }
             scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              } translate<-9.5,-5,0> rotate<0,0,-1800> translate<9.5,5,0>
             }             
#declare C2 =
union {
        difference {
            cylinder { <14.3,5,-12>,<14.3,5,12>,3.5 
                                        
                    
                                         texture{ pigment{ gradient <1,1,1>
                                         color_map{
                                            [ 0.0 color Gray ]
                                            [ 0.5 color rgb<0.2,0.2,0.2> ]
                                            [ 0.5 color rgb<0,0,0> ]
                                            [ 1.0 color Gray ]
                                             } 
                                            scale 0.7
                                             } 
                                            finish  { phong 1 reflection 0.10 }rotate<90,40,0>
                                             } 

              } 
            cylinder { <14.3,5,-12.5>,<14.3,5,12.05>,0.7   
                                         texture{ pigment{ rgbf <0.8, 0.8, 0.8, 0.0> }
                                         finish { diffuse 0.1 reflection 0.1  
                                         specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }  
            
            }
             scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              } translate<-14.3,-5,0> rotate<0,0,-1800> translate<14.3,5,0>
             }
#declare C2Z =
union {
        difference {
            cylinder { <-1,5,-10.5>,<-1,5,10.5>,3.5 
                                         texture{ pigment{ hexagon color White color Gray rgbf <0.4, 0.4, 0.4, 0.0> }   
                                         finish { diffuse 0.1 phong 1 reflection 0.1 roughness 0.3 }
                                         rotate<0,0,20> scale 0.74 translate<0,0,0>
                                 }
            } 
            cylinder { <-1,5,-10.55>,<-1,5,10.55>,0.7  
                                         texture{ pigment{ rgbf <0.8, 0.8, 0.8, 0.0> }
                                         finish { diffuse 0.1 reflection 0.1  
                                         specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }  
            
            }
             scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              } translate<1.5,-5,0> rotate<0,0,-1800> translate<-1.5,5,0>
             }
#declare C3 =
union {  
        object {X1}
        object {X2}
        object {X3}
        object {X4} 
        object {X5}
        object {X6}
        cylinder { <21,7,-12.5>,<21,7,12.05>,0.7  
                                              texture{ pigment{ gradient <1,1,1>
                                         color_map{
                                            [ 0.0 color Gray ]
                                            [ 0.5 color rgb<0.2,0.2,0.2> ]
                                            [ 0.5 color rgb<0,0,0> ]
                                            [ 1.0 color Gray ]
                                             } 
                                            scale 0.7
                                             } 
                                            finish  { phong 1 reflection 0.10 }rotate<90,40,0>
                                             }
                 }
        difference {
            cylinder { <21,7,-12>,<21,7,12>,3.5 
                                               texture{ pigment{ gradient <1,1,1>
                                         color_map{
                                            [ 0.0 color Gray ]
                                            [ 0.5 color rgb<0.2,0.2,0.2> ]
                                            [ 0.5 color rgb<0,0,0> ]
                                            [ 1.0 color Gray ]
                                             } 
                                            scale 0.7
                                             } 
                                            finish  { phong 1 reflection 0.10 }rotate<90,40,30>
                                             }
                     } 
            cylinder { <21,7,-12.5>,<21,7,12.05>,2  
                                               texture{ pigment{ rgbf <0.8, 0.8, 0.8, 0.0> }
                                               finish { diffuse 0.1 reflection 0.1  
                                               specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }  
             
             }
             scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              }translate<-21,-7,0> rotate<0,0,-1800> translate<21,7,0>
             }
#declare C6 =
union {
        difference {
            cylinder { <-21,7.3,-12>,<-21,7.3,12>,2   
                                               texture{ pigment{ gradient <1,1,1>
                                         color_map{
                                            [ 0.0 color Gray ]
                                            [ 0.5 color rgb<0.2,0.2,0.2> ]
                                            [ 0.5 color rgb<0,0,0> ]
                                            [ 1.0 color Gray ]
                                             } 
                                            scale 0.7
                                             } 
                                            finish  { phong 1 reflection 0.10 }rotate<90,40,0>
                                             }
            }  
            cylinder { <-21,7.3,-12.05>,<-21,7.3,12.05>,0.5   
                                               texture{ pigment{ rgbf <0.8, 0.8, 0.8, 0.0> }
                                               finish { diffuse 0.1 reflection 0.1  
                                               specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }  
            
            }
             scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              }  translate<21,-7.3,0> rotate<0,0,-1800> translate<-21,7.3,0>
             }
#declare C3Z =
union {
        difference {
            cylinder { <-11,5,-10.5>,<-11,5,10.5>,3.5 
                                               texture{ pigment{ hexagon color White color Gray rgbf <0.4, 0.4, 0.4, 0.0> }   
                                               finish { diffuse 0.1 phong 1 reflection 0.1 roughness 0.3 }
                                               rotate<0,0,-70> scale 0.74 translate<0,0,0>
                                 }
            } 
            cylinder { <-11,5,-10.55>,<-11,5,10.55>,0.7   
                                               texture{ pigment{ rgbf <0.8, 0.8, 0.8, 0.0> }
                                               finish { diffuse 0.1 reflection 0.1  
                                               specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }  
            }
             scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              } translate<11.5,-5,0> rotate<0,0,-1800> translate<-11.5,5,0>
             }
#declare C4 =
union {
        difference {
            cylinder { <-6.5,5,-12>,<-6.5,5,12>,3.5 
                                               texture{ pigment{ gradient <1,1,1>
                                         color_map{
                                            [ 0.0 color Gray ]
                                            [ 0.5 color rgb<0.2,0.2,0.2> ]
                                            [ 0.5 color rgb<0,0,0> ]
                                            [ 1.0 color Gray ]
                                             } 
                                            scale 0.7
                                             } 
                                            finish  { phong 1 reflection 0.10 }rotate<90,40,0>
                                             }
            } 
            cylinder { <-6.5,5,-12.5>,<-6.5,5,12.05>,0.7   
                                               texture{ pigment{ rgbf <0.8, 0.8, 0.8, 0.0> }
                                               finish { diffuse 0.1 reflection 0.1  
                                               specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }  
            }
             scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              }translate<6.5,-5,0> rotate<0,0,-1800> translate<-6.5,5,0>
             }
#declare C5 =
union {
        difference {
            cylinder { <-16,5,-12>,<-16,5,12>,3.5 
                                               texture{ pigment{ gradient <1,1,1>
                                         color_map{
                                            [ 0.0 color Gray ]
                                            [ 0.5 color rgb<0.2,0.2,0.2> ]
                                            [ 0.5 color rgb<0,0,0> ]
                                            [ 1.0 color Gray ]
                                             } 
                                            scale 0.7
                                             } 
                                            finish  { phong 1 reflection 0.10 }rotate<90,40,0>
                                             }
            } 
            cylinder { <-16,5,-12.5>,<-16,5,12.05>,0.7   
                                               texture{ pigment{ rgbf <0.8, 0.8, 0.8, 0.0> }
                                               finish { diffuse 0.1 reflection 0.1  
                                               specular 0.0 roughness 0.003 phong 1 phong_size 400}
               }  
            }
             scale <1,1,1> rotate<0,0,0> translate<0,0,0>
              }translate<16.5,-5,0> rotate<0,0,-1800> translate<-16.5,5,0>
             }             
box { <20, 15, -8.5>,< 27, 12, 8.5>   

                                               texture { pigment{ White_Marble  } 
                                               finish { diffuse 0.6 reflection 0.0  
                                               specular 0.2 roughness 0.003 phong 0 phong_size 600}
                                               scale 5 
                                               } 
               translate<-23.5,-12.5,0> rotate<0,0,-20> translate<21,9,0> 
    }
#declare Catok =
union {
        
        difference { object {C1}
                    box { <-20, 0, -9>,< 23.00, 10, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}}
        difference { object {C2}
                    box { <-20, 0, -9>,< 23.00, 10, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}}
        difference { object {C3}
                    box { <-20, 0, -9>,< 25.00, 12, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}}
        difference { object {C4}
                    box { <-20, 0, -9>,< 23.00, 10, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}}
        difference { object {C5}
                    box { <-20, 0, -9>,< 23.00, 10, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}} 
        difference { object {C6}
                    box { <-20, 0, -9>,< 23.00, 10, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}}
        difference { object {C1Z}
                    box { <-20, 0, -9>,< 23.00, 10, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}}
        difference { object {C2Z}
                    box { <-20, 0, -9>,< 23.00, 10, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}}
        difference { object {C3Z}
                    box { <-22, 0, -9>,< 23.00, 10, 9> texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                       finish { diffuse 0.1 reflection 0.2  
                                                       specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }}}          
      }
     
Catok      
      
      
      
      
      
/*Гусли*/      
/*

#declare GRight = 
    union {
                union {
                         difference {
                             cylinder { <20.7,7,-8>,<20.7,7,-12.4>,4 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                                    } 
                             cylinder { <20.7,7,-7.5>,<20.7,7,-15.8>,3.7  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                             }
                             box { <20, 15,-7.5>,< 15, 3, -14>  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                             }
                             rotate<0,0,0> translate<0,0,0>
                              }
                              }
                box { <18.3, 12, -8>,< 22.2, 11.5, -12>   
                                                     texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }  
                      translate<-23.5,-12.5,0> rotate<0,0,30> translate<21,12.1,0> 
                 }
                box { <-13.5, 12, -8>,< 22.5, 11.5, -12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }  
                          translate<-23.5,-12.5,0> rotate<0,0,0> translate<18.5,9.8,0> 
                 }
                box { <-18.10, 11, -8>,< -21.10, 11.5, -12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                 translate<20.05,-11,10> rotate<0,0,-15> translate<-20.3,9.3,-10> }
                
                union {
                     difference {
                         cylinder { <-20.7,7.2,-8>,<-20.7,7.2,-12>,2.8 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                         } 
                         cylinder { <-20.7,7.2,-7.5>,<-20.7,7.2,-15.5>,2.3   pigment{ color rgb<0.5, 1, 0.5>}}
                         box { <-21, 15,-7.5>,< -15, 3, -14>  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                         }
                     rotate<0,0,0> translate<0,0,0>
                          }
                         }
               
                box { <-16, 11, -8>,< -21.10, 11.5, -12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                translate<20.05,-11,10> rotate<0,0,-40> translate<-20.6,3.9,-10> }
                
                box { <-17.10, 1, -8>,< 16.5, 1.5, -12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                  translate<0,0,0> rotate<0,0,0> translate<0,0,0> }
            
                box { <15.5, 1.5, -12>,< 20, 2, -8>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }  
                  translate<-17.75,-1.75,10> rotate<0,0,26> translate<18.5,2.2,-10> }}
                               
             
#declare GLeft = 
 union {
           object{  Segment_of_CylinderRing( 3.6, // major radius,
                                  3.4, // minor radius,  
                                  3.8, // height H,
                                  250  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                            rotate<90,0,-140> translate<21.5,7,8.6>
            }  
          box { <18.3, 12, 8>,< 22.2, 11.5, 12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }  
                      translate<-23.5,-12.5,0> rotate<0,0,30> translate<21,12.1,0> 
                 }
          box { <-13.5, 12, 8>,< 22.5, 11.5, 12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }  
                          translate<-23.5,-12.5,0> rotate<0,0,0> translate<18.5,9.8,0> 
                 }
          box { <-18.10, 11, 8>,< -21.10, 11.5, 12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                  translate<20.05,-11,-10> rotate<0,0,-15> translate<-20.3,9.3,10> }
 
          union {
                     difference {
                         cylinder { <-20.7,7.2,8>,<-20.7,7.2,12>,2.8
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                         } 
                         cylinder { <-20.7,7.2,7.5>,<-20.7,7.2,15.5>,2.3  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                         }
                         box { <-21, 15,7.5>,< -15, 3, 14>  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                         }
                     rotate<0,0,0> translate<0,0,0>
                          }
                         }
          box { <-16, 11, 8>,< -21.10, 11.5, 12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }  
                  translate<20.05,-11,-10> rotate<0,0,-40> translate<-20.6,3.9,10> }

          box { <-17.10, 1, 8>,< 16.5, 1.5, 12>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                  translate<0,0,0> rotate<0,0,0> translate<0,0,0> }
            
          box { <15.5, 1.5, 12>,< 20, 2, 8>   
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
                  translate<-17.75,-1.75,-10> rotate<0,0,26> translate<18.5,2.2,10> }
                 } */
//GLeft
//GRight 




/*
 #declare Gus_Spline =
  spline {
    cubic_spline
   
    
    0, <-8, 0, 0>
    1, <-5, -1.2, 0>
    2, <-2, -1.2, 0>
    3, <1, -1.2, 0>
    4, <4, -1.2, 0> 
    5, <7, -1.2, 0>
    6, <10, -1.2, 0>
    7, <13, -1.2, 0>
    8, <16, -1.1, 0>
    9, <18, -0.5, 0>
    10, <20, -0.1, 0>
    11, <22, -0.8, 0>
    12, <24, 0, 0>
    13, <23, 0, 0>
    14, <20, 0, 0>
    15, <20, 0, 0>
    16, <20, 0, 0>
    17, <20, 0, 0>
    18, <20, 0, 0>
    19, <20, 0, 0>
    20, <20, 0, 0>
    21, <20, 0, 0>
    22, <20, 0, 0>
    23, <20, 0, 0>
    24, <20, 0, 0>
    25, <20, 0, 0>
    26, <20, 0, 0>
    27, <20, 0, 0>
     28, <20, 0, 0>
     29, <20, 0, 0>
     30, <20, 0, 0>
     31, <20, 0, 0>
     32, <20, 0, 0>
    33, <20, 0, 0>
     34, <-15.6, -1.2, 0>
     35, <-12.6, -1.2, 0>
     36, <-9.6, -1.2, 0>
     37, <-6.6, -1.2, 0>
     38, <-8, 0, 0>
    
  } 

   //на движение 
#declare Left_Spline_Gus =
union{
 #local Nr = 0;   
 #local EndNr = 38;
#while (Nr< EndNr) 
object { Gus1
     
	                    texture{ pigment{ rgbf <0.98, 0.98, 0.98, 0.9> }
                        finish { diffuse 0.1 reflection 0.2  
                        specular 0.8 roughness 0.0003 phong 1 phong_size 400}
               }
        translate Gus_Spline(Nr) 
        
        
         
               
         
         #if (Nr = 8)
               translate<-16, 1.1, 0>  rotate<0,0,15> translate<16,-1.1,0> 
          #end  
         #if (Nr = 9)
               translate<-18, 0.5, 0>  rotate<0,0,10> translate<18.5,-0.5,0> 
          #end
         #if (Nr = 10)
               translate<-20, 0, 0>  rotate<0,0,-10> translate<20,-0.2,0> 
          #end
         #if (Nr = 10 + 1)
               translate<-22, 0.8, 0>  rotate<0,0,-35> translate<22,-0.8,0>
         #end
         #if (Nr = 10 + 2)
               translate<-22, 0, 0>  rotate<0,0,-94> translate<22.7,1.1,0>
         #end 
         #if (Nr = 10 + 3)
               translate<-23, 0, 0>  rotate<0,0,-130> translate<22.4,-2.4,0>
         #end 
         #if (Nr = 10 + 4)
               translate<-20, 0, 0>  rotate<0,0,-160> translate<21.4,-3.4,0>
         #end
         #if (Nr = 10 + 5)
               translate<-20, 0, 0>  rotate<0,0,-160> translate<19.4,-4.1,0>
         #end
         #if (Nr = 10 + 6)
               translate<-20, 0, 0>  rotate<0,0,-160> translate<17,-4.9,0>
         #end
         #if (Nr = 10 + 7)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<15,-5.4,0>
         #end
         #if (Nr = 10 + 8)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<12,-5.4,0>
         #end
         #if (Nr = 10 + 9)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<9,-5.4,0>
         #end 
         #if (Nr = 20)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<6,-5.4,0>
         #end 
         #if (Nr = 21)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<3,-5.4,0>
         #end
         #if (Nr = 22)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<0,-5.4,0>
         #end
          #if (Nr = 23)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<-3,-5.4,0>
         #end
         #if (Nr = 24)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<-6,-5.4,0>
         #end
         #if (Nr = 25)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<-9,-5.4,0>
         #end
         #if (Nr = 26)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<-12,-5.4,0>
         #end 
         #if (Nr = 27)
               translate<-20, 0, 0>  rotate<0,0,-180> translate<-15,-5.4,0>
         #end
         #if (Nr = 28)
               translate<-20, 0, 0>  rotate<0,0,-210> translate<-16.6,-5.2,0>
         #end
         #if (Nr = 29)
               translate<-20, 0, 0>  rotate<0,0,-220> translate<-18.8,-3.8,0>
         #end
         #if (Nr = 30)
               translate<-20, 0, 0>  rotate<0,0,-235> translate<-20.4,-2.4,0>
         #end
         #if (Nr = 31)
               translate<-20, 0, 0>  rotate<0,0,70> translate<-21,-1.8,0>
         #end
         #if (Nr = 32)
               translate<-20, 0, 0>  rotate<0,0,4> translate<-21.4,-1.4,0>
         #end
         #if (Nr = 33)
               translate<-20, 0, 0>  rotate<0,0,0> translate<-18.6,-1.2,0>
         #end 
         
       } 

 #local Nr = Nr + 1;
#end
rotate<0,0,0> 
translate<0,9,11>
}
   
Left_Spline_Gus
     

object {Left_Spline_Gus   translate<0, 0, -22>}
*/

/*Передний Нбл и Вбл*/

box { <27.5, 15, -8>,< 28, 10.5, 8>   
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }  
               translate<-27.5,-13.5,0> rotate<0,0,-10> translate<24.2,8,0> 
    }  


#declare NBL1 = 
 union {

box { <24, 6.7, -1>,< 25, 6.5, -1.5>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   } 
    }
box { <24, 6.7, -2.5>,< 25, 6.5, -3>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   } 
    }
box { <24, 6.7, -4>,< 25, 6.5, -4.5>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   } 
    }  
box { <24, 6.7, -5.5>,< 25, 6.5, -6>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 0.5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   }  
    } 
box { <24, 6.7, -7>,< 25, 6.5, -7.5>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 0.5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   }  
    }
box { <24, 6.7, 0>,< 25, 6.5, 0.5>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 0.5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   }  
    }
box { <24, 6.7, 1.5>,< 25, 6.5, 2>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 0.5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   }  
    }
box { <24, 6.7, 3>,< 25, 6.5, 3.5>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 0.5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   } 
    }
box { <24, 6.7, 4.5>,< 25, 6.5, 5>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 0.5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   }  
    } 
box { <24, 6.7, 6>,< 25, 6.5, 6.5>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 0.5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   }  
    }    
box { <24, 6.7, 7.5>,< 25, 6.5, 8>   

                                                   texture { T_Copper_4A  pigment{ rgbf <0.1, 0.1, 0.1, 0.0>}
                                                   normal { wood 0.2 scale 0.5 turbulence 0.1 rotate<0,0,0> }
                                                   finish { phong 0 }
                                                   }  
    }                         
    }
 
 
#declare NBL = 
 union {
            object {NBL1 translate<-0.2,0,-0.25>}
            object {NBL1 translate<-0.3,-0.6,-0.25>}
            object {NBL1 translate<-0.2,1.2,-0.25>}
            object {NBL1 translate<-0.4,-1.2,-0.25>}
            object {NBL1 translate<-0.2,0.65,-0.25>}
            object {NBL1 translate<0,1.8,-0.25>}
            object {NBL1 translate<0.2,2.4,-0.25>}}
NBL



 
#declare WBL =
union {
 
box { <19.7, 11, 9>,< 25, 11.3, 13.7>   
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
        translate<-22.25,-11,-11.1> rotate<0,0,-20> translate <22.25,10.7,10>
                                                   
    }
box { <19.7, 11, -9>,< 25, 11.3, -13.7>   
      
      translate<-22.25,-11,11.1> rotate<0,0,-20> translate <22.25,10.8,-10>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
    }}
    
WBL    
    
    
/*Борта*/    
                 
#declare Bort = 
union {

box { <20.5, 11, 9>,< -22.5, 11.3, 13.2>   
      
      translate<0,-11.15,-11.1> rotate<35,0,0> translate <-0.6,11.5,10.8>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }   
    }
box { <20.5, 11, -9>,< -22.5, 11.3, -13.2>   
      
      translate<0,-11.15,11.1> rotate<-35,0,0> translate <-0.6,11.5,-10.8>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
    }

box { <19.8, 13, 9>,< 19.5, 11, 11>   
       translate<-19.65,-9.5,-10> rotate<35,0,0> translate <19.69,9.3,8>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }  
    }

box { <19.8, 13, -9>,< 19.5, 11, -11>   
       translate<-19.65,-9.5,10> rotate<-35,0,0> translate <19.69,9.3,-8>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
    }
    }
Bort  
/*Задние щитки гусиницам*/

#declare Zshit = 
union {

box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,-30> translate <-23.6,11,10.2>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
    }
box { <-23.2, 13, 9>,< -23.1, 11, 11.1>   
       translate<-19.65,-9.5,-10> rotate<35,0,0> translate <19.75,9.3,8>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
    }

box { <-24.4, 13, -9>,< -24.2, 9.8, -13.2>   
       translate<24.3,-12,11.5> rotate<0,0,-30> translate <-23.6,10.5,-10.5>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
    }
box { <-23.2, 13, -9>,< -23.1, 11, -11.1>   
       translate<-19.65,-9.5,10> rotate<-35,0,0> translate <19.75,9.3,-8>
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
    }
    }
Zshit    
    
/*Баки*/  

#declare Baki = 
union {

        union {         
                cylinder { <-23.8,6.3,2.5>,<-23.8,15.7,2.5>, 0.6  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
                }
                cylinder { <-23.8,6.3,2.5>,<-23.8,15.3,2.5>, 1.2 
                                                   texture{ pigment{ rgbf <0.48, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                }
                difference {
                            cylinder { <-23.8,6.3,2.5>,<-23.8,15.3,2.5>, 1.8 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
                            }
                            cylinder { <-23.8,6.4,2.5>,<-23.8,15.5,2.5>, 1.6 
                                                   texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                            }
                }
                }
        union {         
                cylinder { <-23.8,6.3,-2.5>,<-23.8,15.7,-2.5>, 0.6 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
                }
                cylinder { <-23.8,6.3,-2.5>,<-23.8,15.3,-2.5>, 1.2 
                                                   texture{ pigment{ rgbf <0.48, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                }
                difference {
                            cylinder { <-23.8,6.3,-2.5>,<-23.8,15.3,-2.5>, 1.8 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
                            }
                            cylinder { <-23.8,6.4,-2.5>,<-23.8,15.5,-2.5>, 1.6 
                                                   texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                            }
                }
                }
       }
               
Baki


/*Мелкие детали корпуса*/

#declare DetaliKorp = 
union { 
        /*Пулемет*/ 
        difference {    
                    cylinder { <22.5,13.6,-4>,<23,13.6,-4>, 0.25
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                    }
                    cylinder { <22,13.6,-4>,<23.5,13.6,-4>, 0.2 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                    }    
                    }
        cylinder { <17,13.6,-4>,<22.5,13.6,-4>, 0.2 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }
        box { <18.00, 13.3, -4.6>,< 21, 13.9, -3.4> 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }
        difference {
                    sphere { <19.8,13.5,-4>, 1.25 
                                                   texture{ pigment{ rgbf <0.98, 0.98, 0.98, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                    }
                    box { <18.00, 13.2, -4.8>,< 22, 14, -3.2> 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                    }
                    }
        /*Окно Мехвода*/
        box { <18, 14.5, 5>,< 20.3, 13.7, 2> 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   rotate<0,0,20> scale 5
                                  }
        }
        difference {
                        box { <18.00, 14.3, 5.5>,< 20.2, 12.5, 1.5> 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   rotate<0,0,20> scale 5
                                  }
                        }
                        box { <18., 13.4, 4.6>,< 20.3, 13.1, 2.5> 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                        }
                   } 
        /*Передние Люки*/
       union { 
        cylinder { <17,15.3,4.5>,<17,14,4.5>, 2
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 2 
                                                   }
        }
        cylinder { <17,15.4,4.5>,<17,14,4.5>, 1.7 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 1 
                                                   }
        }
        box { <16.8,14,4.7>,<17.2,15.6,6> 
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }}    
                    
       union {             
        cylinder { <17,15.3,4.5>,<17,14,4.5>, 1.6 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 2 
                                                   }
        }
        cylinder { <17,15.4,4.5>,<17,14,4.5>, 1.3 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 1 
                                                   }
        }
        box { <16.8,14,4.7>,<17.2,15.6,6> 
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }            
        translate<-17,-14,-4.5> rotate<0,130,0> translate <17,14,-5>}            
        
        
        /*Передний фонарь*/
        #declare Fonar =
         union { 
        // sphere { <20.3,13.6,-1>, 0.25 pigment{ color rgb<1.00, 0.55, 0.00>}}
 //Источник света на корпусе
 light_source {
  <0, 0, 0>                     // light's position (translated below)  
  
  color rgb <1,1,1>       // light's color
   translate <20,13.75,-1> // <x y z> position of light
  looks_like { sphere { 0*x, 0.3 pigment { Yellow } } }
 }
         difference {
                cylinder { <19.5,13.6,-1>,<20.5,13.6,-1>, 0.5 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 1 
                                                   }
                }
                cylinder { <19.5,13.6,-1>,<21,13.6,-1>, 0.3 
                                                   texture{ pigment{ rgbf <0.48, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                }    
                }}    
                    
        Fonar            
         /*Ящик передний*/
        union {            
         box { <16,14,0>,<18,15.5,-3> 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 1 
                                                   }
         }
         box { <15.9,14,-1.4>,<18.1,15.6,-1.6> 
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         }           
              }      
                    
        /*Топор*/
       union {             
       cylinder { <19.5,15,-6>,<19.5,15,-8.5>,0.1 
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
       }
       box {  <19.5,15.1,-8.4>, <19.2,15,-8> 
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
       }
       box {  <19.3,15.1,-8.4>, <19,15,-7.8> 
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
       }
       cylinder { <19.5,15,-7.5>,<19.5,15,-7>,0.15 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
       }             
       }  
       
       
                  
       /*Боковые трубы Левые*/
      
        cylinder { <-8,15.1,6.9>,<11,15.1,7>, 0.10  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }
        cylinder { <6,15.1,7>,<7,15.1,7>, 0.20  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }
        cylinder { <-5,15.1,7>,<-4,15.1,7>, 0.20  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }
        object{  Segment_of_CylinderRing( 0.3, // major radius,
                                  0.1, // minor radius,  
                                  0.1, // height H,
                                  320  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<0,0,180> translate<11,15.2,7>}
      
       
       
       
        cylinder { <-8,15.1,7.6>,<11,15.1,7.9>, 0.10  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }
        
        object{  Segment_of_CylinderRing( 0.3, // major radius,
                                  0.1, // minor radius,  
                                  0.1, // height H,
                                  320  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        } 
        cylinder { <6,15.1,7.8>,<7,15.1,7.84>, 0.20  
                                                   texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }
        cylinder { <-5,15.1,7.5>,<-4,15.1,7.55>, 0.20  
                                                   texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }
       
       
       
      object{  Segment_of_CylinderRing( 3, // major radius,
                                  2.8, // minor radius,  
                                  0.1, // height H,
                                  -60  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<0,-90,0> translate<-8,15,4>
      } 
       
       
     object{  Segment_of_CylinderRing( 2.6, // major radius,
                                  2.4, // minor radius,  
                                  0.1, // height H,
                                  270  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<0,20,0> translate<-12.8,15,6.4>  }             
       
     cylinder { <-8,15.1,7.6>,<-12.1,15.1,8.8>, 0.10  
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
     }         
                    
    
    
    
    
    
    
    
     /*Bоковые трубы правые*/
   
    cylinder { <-15,15.1,-6.9>,<11,15.1,-7>, 0.10  
                                                   texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
    }
   
     object{  Segment_of_CylinderRing( 0.3, // major radius,
                                  0.1, // minor radius,  
                                  0.1, // height H,
                                  320  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<0,0,180> translate<11,15.2,-7>}
   
     object{  Segment_of_CylinderRing( 3, // major radius,
                                  2.8, // minor radius,  
                                  0.1, // height H,
                                  200  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<0,95,0> translate<-14.4,15,-4>
      } 
   
    
     object{  Segment_of_CylinderRing( 2.6, // major radius,
                                  2.4, // minor radius,  
                                  0.1, // height H,
                                  200  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<0,-70,0> translate<-14.4,15,-3.6>
      }
      
      
     object{  Segment_of_CylinderRing( 2.2, // major radius,
                                  2, // minor radius,  
                                  0.1, // height H,
                                  200  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<0,110,0> translate<-14.4,15,-4>
      }
    
    
     object{  Segment_of_CylinderRing( 2.2, // major radius,
                                  2, // minor radius,  
                                  0.1, // height H,
                                  200  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<0,-50,0> translate<-14.4,15,-4>
      }
    
    
     cylinder { <6,15.1,-7>,<7,15.1,-7>, 0.20 
                                                   texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
     }
    
     cylinder { <-6,15.1,-7>,<-7,15.1,-7>, 0.20 
                                                   texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
     }
    
     cylinder { <-14,15.1,-6>,<-15,15.1,-6>, 0.20  
                                                   texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
     }
    
    
/*Задний люк*/

  union { 
        cylinder { <-20,15.3,0>,<-20,14,0>, 2 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
        }
        cylinder { <-20,15.4,0>,<-20,14,0>, 1.7 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
        }
        box { <-19.8,14,0.5>,<-20.2,15.5,1.5> 
                                                   texture{ pigment{ rgbf <0.28, 0.28, 0.28, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
        }}      
    
    
/*Выхлопные люки*/
   
   
   
union {


/*Левый*/

 box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-19.5,14.5,6.2>
                                                   
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
      }
 
 box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-20,14.5,6.2>
      
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
      }
 
  box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-20.5,14.5,6.2>
      
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
      } 
                
  box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-21,14.5,6.2>
      
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
      } 
                
  box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-21.5,14.5,6.2>
      
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
      }
                 
 difference {
           box { <-19.5,14,3.5>,<-22.2,15.1,8> 
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
           }
           box { <-19.7,14,3.7>,<-22,15.5,7.8> 
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
           }}
       
/*Правый*/
 

 box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-19.5,14.5,-5.3>
     
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
     }
 
 box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-20,14.5,-5.3>
      
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
      }
 
  box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-20.5,14.5,-5.3>
      
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
      } 
                
  box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-21,14.5,-5.3>
     
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
     } 
                
  box { <-24.4, 13, 9>,< -24.2, 9.8, 13.2>   
       translate<24.3,-12,-11.5> rotate<0,0,35> translate <-21.5,14.5,-5.3>
      
                                                   texture{ pigment{ rgbf <0.18, 0.18, 0.18, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
      }
                 
 difference {
           box { <-19.5,14,-3.5>,<-22.2,15.1,-8> 
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
           }
           box { <-19.7,14,-3.7>,<-22,15.6,-7.8> 
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
           }}

/*Правый обвес*/

cylinder { <-17,14,-9.1>,<16,14,-9.1>, 0.10  
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
}

object{  Segment_of_CylinderRing( 1, // major radius,
                                  0.8, // minor radius,  
                                  0.1, // height H,
                                  50  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
         rotate<-90,0,140> translate<-17,13.1,-9.1>}

object{  Segment_of_CylinderRing( 2.3, // major radius,
                                  2.1, // minor radius,  
                                  0.1, // height H,
                                  120  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<90,0,200> translate<-19.2,15.2,-9.1>}


object{  Segment_of_CylinderRing( 0.3, // major radius,
                                  0.1, // minor radius,  
                                  0.1, // height H,
                                  320  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
         rotate<90,0,-50> translate<-21.3,14.5,-9.1>}

object{  Segment_of_CylinderRing( 0.3, // major radius,
                                  0.1, // minor radius,  
                                  0.1, // height H,
                                  320  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       } 
         rotate<90,0,-160> translate<16.1,14,-9.1>}
         
         
/*Левый обвес*/

cylinder { <-17,14,9.1>,<16,14,9.1>, 0.10  
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
}

object{  Segment_of_CylinderRing( 1, // major radius,
                                  0.8, // minor radius,  
                                  0.1, // height H,
                                  50  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<-90,0,140> translate<-17,13.1,9.1>}

object{  Segment_of_CylinderRing( 2.3, // major radius,
                                  2.1, // minor radius,  
                                  0.1, // height H,
                                  120  // angle (in degrees)  
                                 )                  texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<90,0,200> translate<-19.2,15.2,9>}


object{  Segment_of_CylinderRing( 0.3, // major radius,
                                  0.1, // minor radius,  
                                  0.1, // height H,
                                  320  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<90,0,-50> translate<-21.3,14.5,9.1>}

object{  Segment_of_CylinderRing( 0.3, // major radius,
                                  0.1, // minor radius,  
                                  0.1, // height H,
                                  320  // angle (in degrees)  
                                )
                                                   texture{ pigment{ rgbf <0.4, 0.48, 0.48, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
         rotate<90,0,-160> translate<16.1,14,9.1>}
       
} 
}
                  
DetaliKorp

}





/*Башняяяяя!!!!Урааааа*/
#declare Bashnya =
union {

#declare Bash1 =
union {
        cylinder { <0,16,0>,<0,22,0>, 7.8 
                                                  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
                                }
        cylinder { <0,8,0>,<0,22,0>, 6.5  
                                                   
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
        }
       }
       
union { cylinder { <0,16,0>,<0,22.5,0>, 1  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
}      
        difference {
                object {Bash1}
                box { <4.00, 8.00, -10.00>,< 10.00, 24.00, 10.00>  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
                }  
                box { <-20, 0, -9>,< 18.00, 14, 9> 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } }  
                   }}


#declare mask1 = 
union {                  
box { <0, 22, -6.3>,< 6, 21, 6.3> 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }

             translate<-3,-21.75,0>   rotate<0,0,-10> translate<6,21.4,0>}

box { <0, 22, -6.3>,< 6, 21, 6.3> 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }

             translate<-3,-21.75,0>   rotate<0,0,10> translate<6,16.7,0>}}
 


#declare mask1Del =
union {                  

box { <0, 26, -6.3>,< 6, 21.5, 6.3> 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }

             translate<-3,-21.75,0>   rotate<90,-15,0> translate<8,16.7,-10.5>}

box { <0, 26, -6.3>,< 6, 21.5, 6.3> 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }

             translate<-3,-21.75,0>   rotate<90,15,0> translate<6.5,16.7,6.5>}} 
             
             
union {
            box { <10,21 , 6>,< 4, 16.3, 6.3>  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
            
                   translate<-5,-18.5,-6.15> rotate<0,13,0> translate<4.1,18.5,6.7>} 

            box { <10,21 , -6>,< 4, 16.3, -6.3>  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
            
                   translate<-5,-18.5,6.15> rotate<0,-10,0> translate<4.1,18.5,-6.7>}     
            difference {
                 object {mask1} 
                 object {mask1Del}}}      
                
             
box { <10.00, 21, 6>,< 9, 16.4, -6>  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
}

box { <10.5, 20.6, 5.6>,< 10, 17, -5.6>  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
} 

box { <11, 20.2, 2.5>,< 10.5, 17.4, -2.5>  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
}

cylinder { <14,19,0>,<10,19,0>, 0.9 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
} 
cylinder { <14,19,0>,<20,19,0>, 0.65 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
}
cylinder { <20,19,0>,<33,19,0>, 0.5 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
}
cylinder { <20,19,0>,<33,19,0>, 0.5 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
}

cylinder { <33,19,0>,<34,19,0>, 0.6 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
}

union {
        difference {
                cylinder { <34,19,0>,<36,19,0>, 0.7 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 0.5 
                                                   }
                }
                    box { <34.2, 18.8, -10.00>,< 34.8, 19.2, 10.00>  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 0.5 
                                                   }
                    }
                    box { <35, 18.8, -10.00>,< 35.8, 19.2, 10.00>  
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 0.5 
                                                   }
                    }
                    cylinder { <34,19,0>,<36.2,19,0>, 0.5 
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 0.5 
                                                   }
                    }
                   }} 
                   

union {
        difference {
            object{  Segment_of_CylinderRing( 10.5, // major radius,
                                  7.7, // minor radius,  
                                  6, // height H,
                                  60  // angle (in degrees)  
                                )
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   } 
                         rotate<0,150,0> translate<0,16.5,0>}   
                         
           box { <-8.5, 30, -1.00>,< -7.5, 10, 1.00>   
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 5 
                                                   }
           }
       }}  
/*Надпись*/
object{ 
        Bevelled_Text("arial.ttf", "100", 5 , 20, 0.45, 1, 0.00, 0)
        texture{ pigment{ color rgb<0.2,0.2,0.2>} 
                } 
        rotate<180,-11,180>
        scale<4.5,5,5> 
        translate<6.5, 17,8.4>
      }
object {Fonar  translate<-9.2, 6,-2.7>}
/*Верхний люк*/
union {     
            cylinder { <0,20,0>,<0,23,0>, 1.4  
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
            
                    translate<-2.3,0,4.3> }  
            cylinder { <0,20,0>,<0,22.5,0>, 2 
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
            
                    translate<-2.3,0,4.3> }
         difference {
            cylinder { <0,22.5,0>,<0,23.5,0>, 1.7  
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
            
                    translate<-2.3,0,4.3> }
            cylinder { <0,22.5,0>,<0,23.8,0>, 1.55  
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
            
                    translate<-2.3,0,4.3> }
            box { <10.00, 22.7, 4.1>,< -10.00, 23.2, 4.5>
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
            }
        
            box { <10.00, 22.7, 4.1>,< -10.00, 23.2, 4.5>
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                translate<0,-22.95,-4.3> rotate<0,90,0> translate<-2,22.95,4.3>}
            box { <10.00, 22.7, 4.1>,< -10.00, 23.2, 4.5>
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                translate<0,-22.95,-4.3> rotate<0,45,0> translate<-2,22.95,4.3>}        
            box { <10.00, 22.7, 4.1>,< -10.00, 23.2, 4.5>
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
                translate<0,-22.95,-4.3> rotate<0,-45,0> translate<-2,22.95,4.3>}        
        }}       
union {
        difference {       
            box { <-1.00, 26, -2>,< 1.00, 23,2> 
                                                   texture{ pigment{ rgbf <0.38, 0.38, 0.38, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
            }
            box { <-0.8, 25.8, -1.8>,< 1.2, 23,1.8> 
                                                   texture{ pigment{ rgbf <0.58, 0.58, 0.58, 0.9> }
                                                   finish { diffuse 0.1 reflection 0.2  
                                                   specular 0.0 roughness 0.0003 phong 1 phong_size 400}
                                                       }
            }
            translate<1.1,-3.2,-4>}
       }
       
       
       
///////////////////////////////////////////////
//Снаряд


#declare BB =
union{  
  
cylinder { <-1,0,0>,<1,0,0>, 0.4
                        texture{ pigment{ rgbf <0.98, 0.98, 0.98, 0.0> }
                        finish { diffuse 0.1 reflection 0.2  
                        specular 0.0 roughness 0.0003 phong 1 phong_size 400}}
           scale <1,1,1> rotate<0,0,0> translate<0,0,0>
         } 
cone { <0,0,0>,0.45,<1.5,0,0>,0 

                        texture{ pigment{ rgbf <0.78, 0.78, 0.78, 0.0> }
                        finish { diffuse 0.1 reflection 0.2  
                        specular 0.0 roughness 0.0003 phong 1 phong_size 400}}

       scale <1,1,1> rotate<0,0,0> translate<0.8,0,0>         
     } 
                        texture{ pigment{ rgbf <0.98, 0.98, 0.98, 0.9> }
                        finish { diffuse 0.1 reflection 0.2  
                        specular 0.8 roughness 0.0003 phong 1 phong_size 400}}
}  
  
  
object { BB  rotate<0,20,20> translate<288,56,-74> }



#declare BB1 =
union{  
  
cylinder { <-7,0,0>,<7,0,0>, 0.2
                        texture{ pigment{ rgbf <0.68, 0.68, 0.68, 0.0> }
                        finish { diffuse 0.1 reflection 0.2  
                        specular 0.0 roughness 0.0003 phong 1 phong_size 400}}
           scale <1,1,1> rotate<0,0,0> translate<0,0,0>
         } 


box { <-1, 0.00, -0.0>,< 6, -6, 0.0>   

               texture { pigment{ rgbf <0.98, 0.98, 0.98, 0.2> }
                   
                   finish { phong 1 } 
                   scale 0.5 
                 } 


      scale <1,1,1> rotate<0,-5,0> translate<0,0,0> 
    }

                      
}  
  
  
object { BB1   translate<40,19,0> }
}





////////////////////////////////////////////////////       



///////////////////////////////////////////////////////////////////////////////////////


 
        



 
 





#declare Trak = 
union {
#declare Gus1 =
union {      
            box { <-0.4, -0.1, -2>,< 0.5, 0.1,2> 
                        texture{ pigment{ rgbf <0.98, 0.98, 0.98, 0.9> }
                        finish { diffuse 0.1 reflection 0.2  
                        specular 0.8 roughness 0.0003 phong 1 phong_size 400}
               } // end of texture -------------------------------------------

            
            
            }
            box { <-0.3, -0.1, -1.5>,< 0.3, 0.1,1.5> 
                        texture{ pigment{ rgbf <0.98, 0.98, 0.98, 0.9> }
                        finish { diffuse 0.1 reflection 0.2  
                        specular 0.8 roughness 0.0003 phong 1 phong_size 400}
               }
            
            translate<-0.8,0,0>}
            cylinder { <0,0,-0.5>,<0,0,0.5>,0.15 
                     texture { pigment { color rgb<1,1,1>}       
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } scale <1,1,1> rotate<0,0,0> translate<-0.7,0,-1.5>
         } 
            cylinder { <0,0,-0.5>,<0,0,0.5>,0.16 
           texture { pigment { color rgb<1,1,1>}       
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } scale <1,1,1> rotate<0,0,0> translate<-0.8,0,1.5>
         } 
            difference {  
            box { <-1.00, -0.1, -2>,< 2, 0.1,2>  }
            box { <4, -1, -1>,< -0, 4.5,1>}
            
                        texture{ pigment{ rgbf <0.98, 0.98, 0.98, 0.9> }
                        finish { diffuse 0.1 reflection 0.2  
                        specular 0.8 roughness 0.0003 phong 1 phong_size 400}}
            
            }rotate<0,-90,0> translate<0,0,0>                                       
      }
  




#declare Lef =
union{
#declare Spline_1 =
  spline {
   natural_spline
   -1, <15,7,10.5>,//control point

   0, <12,7,10.5>,//start point  /*x-1.9// y-2*/
   1, <15,7,10.5>,
   2, <18.5,8,10.5>,
   3, <21,8.2,10.5>,
   4, <23,7.5,10.5>, 
   5, <24.3,6,10.5>, 
   6, <24.3,4,10.5>,
   7, <23,2,10.5>,
   8, <21,1,10.5>,
   9, <19,-0.2,10.5>,
   10, <16,-0.6,10.5>,
   11, <15.5,-0.8,10.5>,
   12, <12.5,-0.8,10.5>,
   13, <9.5,-0.8,10.5>,
   14, <6.5,-0.8,10.5>,                      
   15, <3.5,-0.8,10.5>,                      
   16, <0.5,-0.8,10.5>,                      
   17, <-3.5,-0.8,10.5>,                      
   18, <-6.5,-0.8,10.5>,                      
   19, <-9.5,-0.8,10.5>,                      
   20, <-12.5,-0.8,10.5>,                      
   21, <-15.5,-0.8,10.5>,                      
   22, <-18,-0,10.5>,
   23, <-20.5,1,10.5>,
   24, <-22.5,2.5,10.5>,
   25, <-23.5,4,10.5>,
   26, <-23.5,6,10.5>,                      
   27, <-21.5,7.5,10.5>,
   28, <-19.5,7,10.5>,
   29, <-16.5,7,10.5>,
   30, <-13.2,7,10.5>,
   31, <-10.2,7,10.5>,
   32, <-7.2,7,10.5>,
   33, <-4.5,7,10.5>,
   34, <-1.5,7,10.5>,
   35, <1,7,10.5>,
   36, <3.5,7,10.5>,
   37, <6.5,7,10.5>,
   38, <9.5,7,10.5>,
   39, <12.5,7,10.5>,
   
                         
   40, < 15,7,10.5>//control point
  }

#declare Nr = 0;     // start
 #declare EndNr = 41;  // end
 #while (Nr<= EndNr)   // -----------------------------------
   sphere{ <0,0,0>,0.07
          texture{ pigment{color rgb <1-Nr/2,0.75+Nr/4,0>}
                  finish {diffuse 0.9 phong 1}
                }
        translate Spline_1(Nr)
          
          
        }

 #local Nr = Nr + 0.005;
 #end
}






 #declare Pr = 0;     // start
 #declare EndPr = 40; // end   
 #while (Pr< EndPr)
        object { Gus1 
         Spline_Trans (Spline_1,  mod(0,EndPr ) , x, 0.99, 0) }
        object { Gus1 
         Spline_Trans (Spline_1,  mod(0+1,EndPr ) , x, 0.99, 0) }
         
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+2,EndPr ) , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+3,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+4,EndPr) , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+5,EndPr ) , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+6,EndPr ) , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+7,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+8,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+9,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+10,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+11,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+12,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+13,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+14,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+15,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+16,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+17,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+18,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+19,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+20,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+21,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+22,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+23,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+24,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+25,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+26,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+27,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+28,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+29,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+30,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+31,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+32,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+33,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+34,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+35,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+36,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+37,EndPr )  , x, 0.99, 0) } 
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+38,EndPr )  , x, 0.99, 0) }
         object { Gus1 
         Spline_Trans (Spline_1,  mod(0+39,EndPr )  , x, 0.99, 0) }  
 #declare Pr = Pr + 4;  // next Nr

 #end 

}                                  
 
////////////////////////////////////////////////////////////////////////////
//Управление// 
 
#declare Tank =
union {
        object{Bashnya 
                rotate<0,-50,0> translate<3,0,0>}
        object{Korpus translate<0,0,0>}
         translate<0,0,0> rotate<0,0,0> translate<-0.3,-2.2,0>
        }
         
 
#declare TankG =
union{
object { Trak translate<0, 0, -21>}
Trak
Tank
     translate<0,0,0> rotate<0,-100,0> translate<-0,0,0>
     }







/*Указатель*/ 

 

cylinder { <0,0,25>,<0,14,25>, 0.4   
                                                   texture { pigment{ White_Marble } 
                                                   finish { phong 1 } 
                                                   scale 2 
                                                   }}
box { <-1.00, 13, 30>,< 1.00, 18, 20>  pigment{ color rgb<0.2, 0.2, 0.2>}}
box { <-1.1, 13.2, 29.8>,< 1.1, 17.8, 20.2>  pigment{ color rgb<0, 0, 0>}}
object{ 
        Bevelled_Text("arial.ttf", "PzKpfw VI Tiger I", 16 , 35, 0.045, 1, 0.00, 0)
        texture{ pigment{ color rgb<1,1,1>} 
                 normal { bumps 0.5 scale 0.005}
                 finish { specular 1 reflection 0.2}
               } 
        rotate<0,-90,0>
        scale<1,1.6,1> 
        translate<1.3, 15,21.5>
      } 


object { TankG  translate<120,0,25> }



/*Поворот и передвижение*/

//camera { location <20,20,20> look_at <0,0,0> } 

camera { location <48,16,130> look_at <285,5,-290> } 

object { TankG rotate<0,-30,0> translate<-20,0,100> } 



object{ 
        Bevelled_Text("arial.ttf", "The End (^.^)", 20 , 35, 0.045, 0, 0.00, 0)
        texture{ pigment{ color rgb<1,1,1>} 
                 normal { bumps 0.5 scale 0.005}
                 finish { specular 1 reflection 0.2}
               } 
        rotate<0,-220,0>
        scale<3+2*clock,3+2*clock,3+2*clock> 
        translate<130, 10+10*clock,20>
      }
   


