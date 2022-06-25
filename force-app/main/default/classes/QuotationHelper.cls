public class QuotationHelper {

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

    public List<Inventario__C> productsInInventory(){

        return [ SELECT Name from Inventario__c LIMIT 10];

        //List<String> inv = [SELECT Name, Cantidad_apartada__c,Cantidad_disponible__c,Codigo_de_Producto__c FROM Inventario__c WHERE Name=:nombre and Cantidad_apartada__c =:cantidadA AND Cantidad_disponible__c =:cantidadD AND Codigo_de_Producto__c =:codP LIMIT 10 ];
        //return inv;
        /**for(integer i=0;i<n;i++)
        {
            //inv.add('Test '+i);
            //System.debug(inv[i]);
        }**/
       // System.debug('Tus inventarios actuales son: '+inv.Name);
    }

    public class confirmProductExistByCode implements QuotationSync{
        public void MimetodoInterfaz(String codigoPro){
            System.debug('la existencia con este codigo'+codigoPro+ 'es');
        }

        bollean confirmProductExistByCode(String codigoDeProducto){
            if( null == [SELECT ExternalId from Product2 where ProductCode =:codigoDeProducto ]){
            return false;
        }else{
            return true;
            }
        }



        integer searchProductByCode(String codigoDeProducto){
            if(null != [ SELECT Cantidad_disponible__c from Inventario__c WHERE Codigo_de_Producto__c =:codigoDeProducto]){
                return [SELECT Cantidad_disponible__c FROM Inventario__c WHERE Codigo_de_Producto__c =:codigoDeProducto].size();
            }else{
                return 0;
            }
        }
    }
}