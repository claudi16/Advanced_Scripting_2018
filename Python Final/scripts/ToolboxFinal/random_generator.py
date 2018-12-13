import maya.cmds as cmds
import random


def objects (randomNum):
    returnArray = []
    temp = []
    i=0
    for i in range(randomNum):
        temp = [cmds.duplicate()]
        returnArray.append(temp[0])

        
    return (returnArray)  
    
def movingObjects (dupes, trandMin, trandMax, rotMin, rotMax):
    moving = objects(dupes)

    for item in moving:

        randX = random.randrange(trandMin, trandMax)
        randY = random.randrange(trandMin, trandMax)
        randZ = random.randrange(trandMin, trandMax)
        
        randRotateX = random.randrange(rotMin, rotMax)
        randRotateY = random.randrange(rotMin, rotMax)
        randRotateZ = random.randrange(rotMin, rotMax)
        
        cmds.move (randX, randY, randZ, item, ws=True)
        cmds.rotate(randRotateX, randRotateY, randRotateZ, item)
        
#movingObjects(1, 0, 1, 0, 1)

