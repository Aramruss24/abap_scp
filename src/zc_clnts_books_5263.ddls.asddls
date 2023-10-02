@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Sales'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_CLNTS_BOOKS_5263 as select from ztb_clnts_5263
{
    key id_libro as IdLibro,
    count( distinct id_cliente ) as Sales
} group by id_libro
