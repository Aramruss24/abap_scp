@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Books'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity zc_books_5263
  as select from    ztb_libros_5263     as Books
    inner join      ztb_catego_5263     as _Category on Books.bi_categ = _Category.bi_categ
    left outer join ZC_CLNTS_BOOKS_5263 as _Sales    on Books.id_libro = _Sales.IdLibro
  association [1..*] to ZC_CLIENTS_5263 as _Clients on $projection.IdLibro = _Clients.IdLibro
{
  key Books.id_libro        as IdLibro,
      Books.titulo          as Titulo,
      Books.bi_categ        as BiCateg,
      Books.autor           as Autor,
      Books.editorial       as Editorial,
      Books.idioma          as Idioma,
      Books.paginas         as Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      Books.precio          as Precio,
      case
        when _Sales.Sales = 1 then 1
        when _Sales.Sales = 2 then 2
        when _Sales.Sales > 2 then 3
      else 0
      end                   as SalesBooks,
      case _Sales.Sales
        when 0 then ''
        else ''
        end                 as Text,
      Books.moneda          as Moneda,
      Books.formato         as Formato,
      _Category.descripcion as Descripcion,
      Books.url             as Url,
      _Clients
}
