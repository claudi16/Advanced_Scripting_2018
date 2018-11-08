import maya.cmds as cmds

def RenameSelected(renameInput):
    sels = cmds.ls(sl=True)
    
    #new = []
    new = renameInput.split("#")
    #new =[]
    #new = renameInput.partition('#')
    number = 0
    #hashNums = len(renameInput) - (len(new[0]) + len(new[2])) 

    for sel in sels:
                  
        paddedNumber = ''
        number += 1
        
        for i in range(len(scores)):
            paddedNumber += '0'
            i+=1

            
        rearrange = (prefix + "_" + paddedNumber + str(number) + "_" + suffix)

        cmds.rename(sel, rearrange)
       # print(new)

RenameSelected('hello_##_work')
    
    