import maya.cmds as cmds
import color_changer
reload (color_changer)

class CreateFlower():
    def __init__(self):
        self.mWin = 'Color'

    def create_flower(self, colorpick):
        self.sels = cmds.ls(sl=True)

        if len(self.sels) > 0:
           for self.sel in self.sels:
               self.ctrls = cmds.circle(name = self.sel + '_Ctrl')
               cmds.select(clear = True)
               cmds.select(self.sel + '_Ctrl' + '.ep[0]', self.sel + '_Ctrl' + '.ep[2]', 
                            self.sel + '_Ctrl' + '.ep[4]', self.sel + '_Ctrl' +'.ep[6]', tgl = True )
               cmds.scale(.003, .003, .003, r=True)
               cmds.group(em = True, n = self.sel + '_Ctrl_Grp')
               self.ctrl = self.ctrls[0]
               cmds.parent(self.ctrl, (self.sel + '_Ctrl_Grp'))
               import color_changer #import color changing script
               reload (color_changer)
               color_changer.color_Controls(self.ctrl, colorpick)
               cmds.matchTransform(self.sel + '_Ctrl_Grp', self.sel)

        else:
            self.ctrlArray = cmds.circle()
            for nurbs in self.ctrlArray:
                cmds.select(clear = True)
                cmds.select(nurbs + '.ep[0]', nurbs + '.ep[2]', 
                            nurbs + '.ep[4]', nurbs +'.ep[6]', tgl = True )
                cmds.scale(.003, .003, .003, r=True)
                import color_changer #import color changing script
                reload (color_changer)
                color_changer.color_Controls(nurbs, colorpick)
                cmds.group(em = True, n = 'Ctrl_Grp')
                cmds.parent(nurbs, 'Ctrl_Grp')
                cmds.select(cl=True)
            
#circleCtrlTool = CreateFlower()
#circleCtrlTool.create_flower(0)