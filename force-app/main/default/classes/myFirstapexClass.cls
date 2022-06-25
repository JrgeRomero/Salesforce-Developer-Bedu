public class myFirstapexClass {
    public myFirstapexClass() {

    }
    public void metodo1(){
        System.debug('Metodo instanciado');

        /**
         * llamar al metodo en consola de la siguiente manera
         * myFirstapexClass test = new myFirstapexClass();
         * test.metodo1();
         */
    }

    public static void metodo2(){
        System.debug('Metodo instanciado');
        /**
         * La diferencia entre un metodo estatico y un instanciado es que no se necesita declarar un objeto para llamar un metodo estatico
         * myFirstapexClass.metodo2();
         */
    }

    public static void metodo3 (String msj){
        System.debug('Metodo con parametro'+msj);

        /**
         * myFirstapexClass.metodo3('mensaje de prueba');
         */
    }
    public String metodo4(String nombre){
        return 'Hola, '+nombre;
         /**
          * myFirstapexClass test2 new myFirstapexClass
            String resultado = test2.metodo4('Hola Jorge Romero');
            System.debug('El nombre es '+resultado)
          */
    }
}
