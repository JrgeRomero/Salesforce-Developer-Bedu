public class StringArrayTest {
    public static List<String> generateStringArray(Integer n)
    {
        List<String> miLista = new List<String>();
        for(integer i=0;i<n;i++)
        {
            miLista.add('Test '+i);
            System.debug(miLista[i]);
        }
        return miLista;
    }
}