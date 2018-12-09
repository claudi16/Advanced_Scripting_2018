import maya.cmds as cmds

class ControlCreatorUI():
    def __init__(self):
        self.mWin = 'ControlCreatorWindow'

    def create(self):
        self.delete()
        self.mWin = cmds.window(self.mWin, title='Control Creator')
        self.mCol = cmds.columnLayout(parent=self.mWin, adjustableColumn=True)

#input color field
        cPickRowLayout = cmds.rowLayout(parent=self.mWin, numberOfColumns = 2)
        cmds.text(parent = cPickRowLayout, label='Color #')
        self.cPickIntField = cmds.intField (min = 0, max = 31, value = 0)

#drop down of ctrl types
        self.dropCtrl = cmds.optionMenu(parent=self.mCol, label='Control Type')
        cmds.menuItem(parent=self.dropCtrl, label = 'Circle Ctrl')
        cmds.menuItem(parent=self.dropCtrl, label = 'Square Ctrl')
        cmds.menuItem(parent=self.dropCtrl, label = 'Flower Ctrl')
        

        cmds.button(parent=self.mCol, label = 'Control Creator', 
                    c=lambda x: self.createCtrl(cmds.optionMenu(self.dropCtrl, q=True, select=True) ,self.cPickIntField))
        cmds.showWindow(self.mWin)

    def delete(self):
        if cmds.window(self.mWin, q=True, exists=True):
            cmds.deleteUI(self.mWin) 

    def createCtrl(self, option, colInput):
        if option is 1:
            colInput = cmds.intField(colInput, q=True, value = 0)
            circleCtrlTool = CreateCircle()
            circleCtrlTool.create_circle(colInput)

        elif option is 2:
            print('hello')
        
        elif option is 3:
            print('3')

        
ctrlTool = ControlCreatorUI()
ctrlTool.create()
