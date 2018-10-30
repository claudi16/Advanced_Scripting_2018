import maya.cmds as cmds

obj = cmds.polyCube(w=0.2, 
                    h=11, 
                    d=4, 
                    name='Side_Shelf')[0]
                    
cmds.move(-2.5, 5.65, 0, obj, ws=True)

cmds.polyMirrorFace  ('Side_Shelf')

obj = cmds.polyCube (w=5.3, 
                     h=0.1, 
                     d=4, 
                     ch=1, name='Base_Shelf')[0]
                     
cmds.move (0, 0.089, 0, 'Base_Shelf', ws=True)

cmds.polyCube (w=5, 
               h=1.6, 
               d=0.2, 
               name='Back_Shelf')[0] 
               
cmds.move (0, 2.274, -2.015, 'Back_Shelf', ws=True)

cmds.duplicate('Back_Shelf')
cmds.move (0, 6, -2.015, 'Back_Shelf1', ws=True)
cmds.duplicate('Back_Shelf1')
cmds.move (0, 10, -2.015, 'Back_Shelf2', ws=True)

cmds.polyExtrudeFacet ('Back_Shelf1.f[0]', 
                        keepFacesTogether=True, 
                        ls=(1, 0.09, 1),
                        localTranslateY =-0.7)
                        
cmds.polyExtrudeFacet ('Back_Shelf1.f[0]', 
                        keepFacesTogether=True, 
                        ls=(1, 0.09, 1),
                        localTranslateZ =3.9)
                        

cmds.polyExtrudeFacet ('Back_Shelf.f[0]', 
                        keepFacesTogether=True, 
                        ls=(1, 0.09, 1),
                        localTranslateY =0.7)
                        
cmds.polyExtrudeFacet ('Back_Shelf.f[0]', 
                        keepFacesTogether=True, 
                        ls=(1, 0.09, 1),
                        localTranslateZ =3.9)
                        
cmds.polyExtrudeFacet ('Base_Shelf.f[1]', 
                        keepFacesTogether=True, 
                        ls=(0.0674004, 1, 1),
                        divisions=6)
                        
cmds.polyExtrudeFacet ('Base_Shelf.f[1]', 'Base_Shelf.f[15]', 'Base_Shelf.f[27]',
                        keepFacesTogether=True, 
                        localTranslateZ =2)
                        
                        
cmds.polyCube (w=0.2, 
               h=4.207, 
               d=3.951, 
               name='Middle_Divider')[0] 
               
cmds.move (0, 8.824, 0.065, 'Middle_Divider', ws=True)

cmds.polyExtrudeFacet ('Middle_Divider.f[4]', 
                        keepFacesTogether=True, 
                        ls=(1, 0.0472669, 1))
                        
cmds.polyExtrudeFacet ('Middle_Divider.f[4]', 
                        keepFacesTogether=True, 
                        localTranslateZ = 2.4)
                        
cmds.polyExtrudeFacet ('Middle_Divider.f[5]', 
                        keepFacesTogether=True, 
                        ls=(1, 0.0628475, 1),
                        localTranslateY = (-1.866719))
                        
cmds.polyExtrudeFacet ('Middle_Divider.f[5]', 
                        keepFacesTogether=True, 
                        localTranslateZ = 2.379847)
                        
cmds.polyExtrudeFacet ('Middle_Divider.f[16]', 
                        keepFacesTogether=True, 
                        ls=(1, 0.398595, 1 ))
                        
cmds.polyExtrudeFacet ('Middle_Divider.f[16]', 
                        keepFacesTogether=True, 
                        localTranslateZ = 2.440334)
                        
cmds.polyCube (w=0.235,
               h=2.218, 
               d=1.801, 
               name='Book')
cmds.rotate  (0, 0, -21.639319, 'Book')
cmds.move (1.883, 10, 0, 'Book')

cmds.group('Side_Shelf', 'Base_Shelf', 'Back_Shelf', 'Back_Shelf1', 'Back_Shelf2', 'Middle_Divider', name ='Bookshelf_Pieces')
cmds.group('Bookshelf_Pieces', name = 'Bookshelf')
cmds.parent ('Book', 'Bookshelf')


