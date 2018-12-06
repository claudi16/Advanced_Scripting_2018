import maya.cmds as cmds

class Toolbox():
    def __init__(self):
        self.mWin = 'cdToolbox'
    
    def create(self):
        self.delete()
        
        self.mWin = cmds.window(self.mWin, title = 'cdToolbox')
        self.mCol = cmds.columnLayout(parent=self.mWin, adjustableColumn=True)
        cmds.button(parent=self.mCol, label = 'Renamer', command=lambda x: self.renameWin())
        
        cmds.showWindow(self.mWin)
        
    def delete(self):
        if cmds.window(self.mWin, q=True, exists=True):
            cmds.deleteUI(self.mWin)       
    
    def renameWin(self):
        renameTool = SequentialRenamerUI()
        renameTool.create()

toolboxTool = Toolbox()
toolboxTool.create()