public interface QuotationSync {
    void MimetodoInterfaz(String codigoDeProducto);

    bollean confirmProductExistByCode(String codigoDeProducto);

    integer searchProductByCode(String codigoDeProducto);
}
