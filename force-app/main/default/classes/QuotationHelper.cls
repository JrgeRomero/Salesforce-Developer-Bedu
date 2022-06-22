public class QuotationHelper {
    public QuotationHelper() {

    }
    public void initialConfig(){
        Account acct = new Account();
        acct.Name = 'CompuMundo II';
        acct.Website = 'www.compumundo.com.mx';
        acct.AccountNumber ='874512369000145023';
        acct.Rating ='Hot';
        acct.Ownership = 'Public';

        Account acct2 = new Account();
        acct2.Name = 'CompuWorld II';
        acct2.Website = 'www.compuworld.com.uk';
        acct2.AccountNumber ='0000215578680005';
        acct2.Rating ='Warm';
        acct2.Ownership = 'Private';

        List<Account> lst = new List<Account>();
        lst.add(acct);
        lst.add(acct2);

        insert lst;
    }

}