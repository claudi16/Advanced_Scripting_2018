import maya.cmds as cmds

#import sequential_renamer

class SequentialRenamerUI():
    def __init__(self):
        self.mWin = 'RenamerWindow'
        
#create textfield & button        
    def create(self):
        self.delete()
        self.mwin = cmds.window(self.mWin, title = 'Sequential Renammer')
        mCol = cmds.columnLayout(parent=self.mWin, adjustableColumn = True)
        self.nameField = cmds.textField(placeholderText = 'Hand_##_Jnt')
        
        cmds.button(parent = mCol, label = 'Rename', c=lambda x: self.renamer(self.nameField))
        
        cmds.showWindow(self.mWin) 
             
#delete window if it exists
    def delete(self):
        if cmds.window (self.mWin, exists = True):
            cmds.deleteUI (self.mWin)
            
#pass argument from renamer script           
    def renamer(self, text_input):
        text_input = cmds.textField(text_input, q=True, text = True)
        import sequential_renamer
        reload(sequential_renamer)
        text_input = sequential_renamer.sequential_renamer(text_input)
        
        
        
renameTool = SequentialRenamerUI()
renameTool.create()

