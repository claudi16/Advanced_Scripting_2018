import maya.cmds as cmds
import color_changer
reload (color_changer)

class CreateSquare():
    def __init__(self):
        self.mWin = 'Color'

    def create_square(self, colorpick):
        self.sels = cmds.ls(sl=True)

        if len(self.sels) > 0:
           for self.sel in self.sels:
               cmds.nurbsSquare(name = self.sel + '_Ctrl')
               cmds.select(hi=True)
               cmds.select(self.sel + '_Ctrl', d=True)
               children = cmds.ls(sl = True)
               
               for nurbs in children:
                   import color_changer #import color changing script
                   reload (color_changer)
                   color_changer.color_Controls(nurbs, colorpick)

               cmds.group(em = True, n = self.sel + '_Ctrl_Grp')    
               cmds.parent(self.ctrl, (self.sel + '_Ctrl_Grp'))
               cmds.matchTransform(self.sel + '_Ctrl_Grp', self.sel)


        else:
            squareArray = cmds.nurbsSquare()
            square = squareArray[0]
            cmds.select(hi=True)
            cmds.select(square, d=True)
            children = cmds.ls(sl = True)
            for nurbs in children:
                import color_changer #import color changing script
                reload (color_changer)
                color_changer.color_Controls(nurbs, colorpick)
            cmds.group(em = True, n = 'Ctrl_Grp')
            cmds.parent(self.circles, 'Ctrl_Grp')
            cmds.select(cl=True)
            
#circleCtrlTool = CreateSquare()
#circleCtrlTool.create_square(10)



