import maya.cmds as cmds

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
        