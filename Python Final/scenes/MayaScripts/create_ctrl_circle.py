import maya.cmds as cmds
import color_changer
reload (color_changer)

class CreateCircle():
    def __init__(self):
        self.mWin = 'Color'

    def create_circle(self, colorpick):
        self.sels = cmds.ls(sl=True)

        if len(self.sels) > 0:
           for self.sel in self.sels:
               cmds.group(em = True, n = self.sel + '_Ctrl_Grp')
               self.ctrls = cmds.circle(name = self.sel + '_Ctrl')
               self.ctrl = self.ctrls[0]
               cmds.parent(self.ctrl, (self.sel + '_Ctrl_Grp'))
               print (self.ctrl)
               import color_changer #import color changing script
               reload (color_changer)
               color_changer.color_Controls(self.ctrl, colorpick)
               cmds.matchTransform(self.sel + '_Ctrl_Grp', self.sel)

        else:
            self.ctrlArray = cmds.circle()
            self.circles = self.ctrlArray
            import color_changer #import color changing script
            reload (color_changer)
            color_changer.color_Controls(self.circles, colorpick)
            cmds.group(em = True, n = 'Ctrl_Grp')
            cmds.parent(self.circles, 'Ctrl_Grp')
            cmds.select(cl=True)
            
#circleCtrlTool = CreateCircle()
#circleCtrlTool.create_circle(10)



