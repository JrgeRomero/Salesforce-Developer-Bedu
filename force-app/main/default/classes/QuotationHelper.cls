public class QuotationHelper {
    public QuotationHelper() {

    }
    public static void initialConfig(){
        Account acct = new Account(Name='Acme');
        insert acct;
        List<Account> acctList = new List<Account> {
            new Account(Name='Compuworld'),
            new Account(Name='Compumundo')};
    }

}