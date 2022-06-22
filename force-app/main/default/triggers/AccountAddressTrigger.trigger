trigger AccountAddressTrigger on Account (before insert, before update) {
    for(Account account : trigger.new){
        if((account.Match_Billing_Address__c == true) && (account.BillingPostalCode != NULL)){
            account.ShippingPostalCode = account.BillingPostalCode;
        }
    }
}