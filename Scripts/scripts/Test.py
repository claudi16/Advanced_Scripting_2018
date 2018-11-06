import maya.cmds as cmds

def RenameSelected(prefix, hash, suffix):
    sels = cmds.ls(sl=True)
    
   # new = []
    #new = renameInput.split("#")
    new =[]
    new = renameInput.partition('#')
    number = 0
    hashNums = len(renameInput) - (len(new[0]) + len(new[2])) 

    for sel in sels:
                  
        paddedNumber = ''
        number += 1
        
        for i in range(hashNums):
            paddedNumber += '0'
            i+=1

            
        rearrange = (new[0] + paddedNumber + str(number) + new[2])

        cmds.rename(sel, rearrange)
        print(new)

RenameSelected("hello", "##", 'suffix')
    
    