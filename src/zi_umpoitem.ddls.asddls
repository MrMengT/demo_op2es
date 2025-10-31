@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface po item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_umpoitem
  as select from ztumpoitem
  association to parent zi_umpohead as _head on $projection.purchaseorder = _head.purchaseorder
  composition [0..*] of zi_umposche as _sche
{
  key purchaseorder             as Purchaseorder,
  key purchaseorderitem         as Purchaseorderitem,
      material                  as Material,
      plant                     as Plant,
      @Semantics.quantity.unitOfMeasure : 'Purchaseorderquantityunit'
      orderquantity             as Orderquantity,
      purchaseorderquantityunit as Purchaseorderquantityunit,
      @Semantics.amount.currencyCode: 'Documentcurrency'
      netpriceamount            as Netpriceamount,
      documentcurrency          as Documentcurrency,

      @Semantics.user.createdBy: true
      created_by                as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at                as CreatedAt,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by     as LocalLastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed_at     as LocalLastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at           as LastChangedAt,
      
      _head,
      _sche
}
