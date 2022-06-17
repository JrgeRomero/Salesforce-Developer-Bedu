public class BatchApex implements Database.Batchable<sObject>,Database.Stateful{

    public int contador = 0;

    global Database.QueryLocator start(Database.BatchableContext BC){
        String query ='SELECT id, Name FROM Account WHERE Name = "BEDU"';
        return Database.QueryLocator(query);
    }

    global void execute(Database.BatchableContext BC, List<>)

}
