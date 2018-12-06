import maya.cmds as cmds


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
#renamer            
    def renamer(self, text_field):

        def sequential_renamer(renameInput):
            sels = cmds.ls(sl=True)
            
            new = []
            new = renameInput.split("#")
            number = 0
            hashNums = len(renameInput) - (len(new[0]) + len(new[-1])) 
        
            for sel in sels:
                          
                paddedNumber = ''
                number += 1
                
                for i in range(hashNums):
                    paddedNumber += '0'
                    i+=1
                paddedNumber += str(number)
                
                rearrange = (new[0] + paddedNumber + new[-1])
        
                cmds.rename(sel, rearrange)
                
        sequential_renamer('hand_##_lsf')
        
        
renameTool = SequentialRenamerUI()
renameTool.create()

