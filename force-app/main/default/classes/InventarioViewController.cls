public class InventarioViewController {
    private final sObject parent;
    public String codigo{get;set;}
    public List<PricebookEntry> listInv {get;set;}

    public InventarioViewController(ApexPages.StandardController crontroller) {
        parent = controller.getRecord();
    }

    public void buscar(){
        String query ='Select id, Product2.Name, UnitPrice, Product2.ExternalId FROM Pricebook WHERE Product2.ExternalId = :codigo';
        listInv = Database.query(query);
    }

    public void limpiar(){
        listInv.clear();
    }
}
