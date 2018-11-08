import maya.cmds as cmds
import random


def petal (randomNum):
    blossom = []
    temp = []
    i=0
    for i in range(randomNum):
        temp = [cmds.duplicate()]
        blossom.append(temp[0])
        print blossom

        
    return (blossom)  
    
def movingPetals (trandMin, trandMax, rotMin, rotMax):
    moving = petal(4)

    for item in moving:

        randX = random.randrange(trandMin, trandMax)
        randY = random.randrange(trandMin, trandMax)
        randZ = random.randrange(trandMin, trandMax)
        
        randRotateX = random.randrange(rotMin, rotMax)
        randRotateY = random.randrange(rotMin, rotMax)
        randRotateZ = random.randrange(rotMin, rotMax)
        
        cmds.move (randX, randY, randZ, item, ws=True)
        cmds.rotate(randRotateX, randRotateY, randRotateZ, item)
        
movingPetals(-10, 10, -40, 60)


