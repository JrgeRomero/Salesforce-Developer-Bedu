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
    public static void productsInInventory(){
        Inventarios[] inven = [SELECT Name FROM Inventarios ORDER BY Name];
        System.debug(inven.size() + ' inven(s) returned.');
        // Write all account array info
        System.debug(inven);
    }

    public static void confirmProductExistByCode(){

    }

    public static void searchProductByCode(){
        
    }
    
}
