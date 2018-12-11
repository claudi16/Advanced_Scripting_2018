import maya.cmds as cmds

class FKJointTool():
    
    def __init__(self):
        self.mWin = 'LocWindow'
        self.sels = cmds.ls(sl=True)

    def create(self):
        self.delete()

        
        self.mWin = cmds.window(self.mWin, title='Create FK Joints')
        mCol = cmds.columnLayout(parent=self.mWin, adjustableColumn=True)
        cmds.button(parent=mCol, label='Create FK Joints',
                    c=lambda x: self.create_loc())

        cmds.showWindow(self.mWin)

    def delete(self):
        if cmds.window(self.mWin, exists=True):
            cmds.deleteUI(self.mWin)

    def create_loc(self):
        cmds.select(d=True)
        if len(self.sels) > 0:
            for self.sel in self.sels:
                self.joints = cmds.joint(p = (0, 0, 0))
                cmds.matchTransform(self.joints, self.sel)
                
        else:
            cmds.warning('Select objects first')
        
