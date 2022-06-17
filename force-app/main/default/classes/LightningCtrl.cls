public class LightningCtrl {
    @AuraEnabled
    public static List<Contact> getContacts(){
        return[Select Name,Phone,Email from Constact limit 5];
    }
}
