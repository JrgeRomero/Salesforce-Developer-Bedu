public class implementacionInterfaz implements practicaInterfaz {
    public void metodo1() {
        System.debug('interfaz .... 1');
    }

    public String metodo2(){
        return 'interfaz implementada ...';
    }

    public void metodo3(String texto){
        System.debug('texto de prueba'+texto);
    }
}
