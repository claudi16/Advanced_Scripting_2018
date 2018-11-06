import maya.cmds as cmds

def RenameSelected(renameInput):
    sels = cmds.ls(sl=True)
    
    new = []
    new = renameInput.split("#")
    number = 1
    
    hashNums = len(renameInput) - (len(new[0]) + len(new[2]))
    
    for sel in sels:
        paddedNumber = "0"
        selPadCap = 0
        
        for i in range(number):
            i+= 10
            selPadCap +=1
        
        padSize = (hashNums - selPadCap)
        print (padSize)
        
        for i in range(padSize):
            paddedNumber += "0"
            i+=1
            
        #paddedNumber.zfill(number)
        paddedNumber += str(number)
        number += 1
    
        rearrange = (new[0] + paddedNumber + new[2])
        cmds.rename(sel, rearrange)
     #   print(number)
         
   # print (paddedNumber)
   
    
RenameSelected ('hello_##_work')

