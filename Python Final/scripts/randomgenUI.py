import maya.cmds as cmds  

class RandomGeneratorUI():
    def __init__(self):
        self.mWin = 'RanGenWindow'
    
    def create(self):
        self.delete()
        self.mwin = cmds.window(self.mWin, title = 'Random Generator')
        mCol = cmds.columnLayout(parent=self.mWin, adjustableColumn = True)

#create 1st row for dupelicate fields
        dupRowLayout = cmds.columnLayout(parent=self.mWin, adjustableColumn = True)
        cmds.text(parent = dupRowLayout, label='Duplicate', align='left')
        self.dupIntField = cmds.intField (min = 1, value = 1)

#create 2nd row for min range values
        rangeRowLayout = cmds.rowLayout(parent=self.mWin, numberOfColumns = 4)
        cmds.text(parent = rangeRowLayout, label = "Minimum Transform/Rotate", align = 'left')
        self.transformRange = cmds.floatField (parent = rangeRowLayout, value = 0)
        self.rotateRange = cmds.floatField (parent = rangeRowLayout, value = 0)


#create 3rd row for max range values
        rangeMaxRowLayout = cmds.rowLayout(parent=self.mWin, numberOfColumns = 4)
        cmds.text(parent = rangeMaxRowLayout, label = "Maximum Transform/Rotate", align = 'left')
        self.transformRangeMax = cmds.floatField (parent = rangeMaxRowLayout, value = 0)
        self.rotateRangeMax = cmds.floatField (parent = rangeMaxRowLayout, value = 0)

#create button
        cmds.button(parent = mCol, label = 'Generate', c=lambda x: self.moveObj(self.dupIntField, self.transformRange, self.transformRangeMax, self.rotateRange, self.rotateRangeMax))
        cmds.showWindow(self.mWin)

#delete window if it exists
    def delete(self):
        if cmds.window (self.mWin, exists = True):
            cmds.deleteUI (self.mWin)      

    def moveObj (self, duplications, transMin, transMax, rotMin, rotMax):
        duplications = cmds.intField(duplications, q=True, value = 1)
        transMin = cmds.floatField(transMin, q=True, value = -1)
        transMax = cmds.floatField(transMax, q=True, value = 1)
        rotMin = cmds.floatField(rotMin, q=True, value = -1)
        rotMax = cmds.floatField(rotMax, q=True, value = 1)
        import random_generator
        reload (random_generator)
        random_generator.movingObjects(duplications, transMin, transMax, rotMin, rotMax)
        
