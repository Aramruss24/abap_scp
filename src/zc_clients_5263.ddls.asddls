@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Clients'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_CLIENTS_5263
  as select from ztb_client_5263 as Clients
    inner join   ztb_clnts_5263  as _ClientsBooks on Clients.id_cliente = _ClientsBooks.id_cliente
{
  key _ClientsBooks.id_libro   as IdLibro,
  key Clients.id_cliente       as IdCliente,
  key Clients.tipo_acceso      as TipoAcceso,
      Clients.nombre           as Nombre,
      Clients.apellidos        as Apellidos,
      Clients.email            as Email,
      Clients.url              as Url,
      concat_with_space(Clients.nombre, Clients.apellidos, 1) as FullName
}
