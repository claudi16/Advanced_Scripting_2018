import maya.cmds as cmds

class Toolbox():
    def __init__(self):
        self.mWin = 'cdToolbox'
    
    def create(self):
        self.delete()
        
        self.mWin = cmds.window(self.mWin, title = 'cdToolbox')
        self.mCol = cmds.columnLayout(parent=self.mWin, adjustableColumn=True)
        cmds.button(parent=self.mCol, label = 'Renamer', command=lambda x: self.renameWin())
        cmds.button(parent=self.mCol, label = 'Random Generator', command=lambda x: self.randomGenWin())
        cmds.button(parent=self.mCol, label = 'Control Creator', command=lambda x: self.ctrlCreatorWin())
        
        cmds.showWindow(self.mWin)
        
    def delete(self):
        if cmds.window(self.mWin, q=True, exists=True):
            cmds.deleteUI(self.mWin)       
    
    def renameWin(self):
        import renamerUI
        reload(renamerUI)
        renameTool = SequentialRenamerUI()
        renameTool.create()
        
    def randomGenWin(self):
        import randomgenUI
        reload(randomgenUI)
        randomTool = RandomGeneratorUI()
        randomTool.create()
        
    def ctrlCreatorWin(self):
        import control_creatorUI
        ctrlTool = ControlCreatorUI()
        ctrlTool.create()

toolboxTool = Toolbox()
toolboxTool.create()