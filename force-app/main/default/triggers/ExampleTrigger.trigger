trigger ExampleTrigger on Account (before insert, before update, after update) {
    if(Trigger.isBefore && Trigger.isInsert){
        System.debug('I am in accountTrigger before insert contex');
    }
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            for(Account acc :Trigger.new){
                system.debug('New Name'+ acc.Name);
                System.debug('Old Name'+ Trigger.oldMap.get(acc.Id).Name);
            }
        }
    }
}