import maya.cmds as cmds

def CreateJnt():
    sels = cmds.ls(sl=True)
    
    if (len(sels)  != 0):
        for sel in sels:
            groups = [cmds.group(em = True, name = (sel + "_Ctrl_Grp") )]
            joints = [cmds.joint(name = (sel + "_Jnt") )]
            jntArray = joints[0]
            cmds.matchTransform( (sel + "_Ctrl_Grp"), sel ) 
            cmds.select(clear = True)
        
CreateJnt()
