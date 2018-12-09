import maya.cmds as cmds

def color_Controls(ctrl, colorpick):
    shapes = []
    shapes = cmds.listRelatives(ctrl, shapes = True)

    for shape in (shapes):
        if (cmds.nodeType(shape)  == 'nurbsCurve'):
            cmds.setAttr(shape + '.overrideEnabled', 1) 
            cmds.setAttr(shape + '.overrideColor', colorpick)
            
        else:
            cmds.warning('Selected object is not a curve')

#color_Controls('nurbsCircle1', 9)
