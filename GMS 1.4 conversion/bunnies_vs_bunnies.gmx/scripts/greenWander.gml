characterWander();

//Building
alarm[0]-=1;
if(alarm[0]<=0)
  greenAlarm0Building(oTree);

alarm[1]-=1;
if((alarm[0]<=0) && (global.countGreenTrees >= (global.treeCount div 2)))
  greenAlarm0Building(oWell);