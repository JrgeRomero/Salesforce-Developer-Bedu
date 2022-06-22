public class AccountHandler {
    public static Account insertNewAccount(String AccountName)
    {
        Account acc= new Account();
        acc.Name = AccountName;
        try
        {
            insert acc;
            return acc;
        }
        catch(Exception ee)
        {
            return null;
        }
    }
}