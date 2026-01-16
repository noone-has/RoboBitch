objectSprites = [spr_bpblue, spr_bpred]
arraySize = array_length(objectSprites)
randomIndex = irandom(arraySize - 1)
randomSprite = array_get(objectSprites, randomIndex)
movespeed = 5;