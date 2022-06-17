
global class ScheduleLableExample implements Schedulable{

    global void execute(SchedulableContext ctx){
        BatchApexTest baCls = new BatchApexTest();
        String cronStr = '20 30 8 10 2 ?';
        String jobID = system.schedule('Process Acc Records ', cronStr, accCls);
    }
}


