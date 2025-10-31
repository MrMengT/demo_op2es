@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface po sche'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_umposche
  as select from ztumposche
  association to parent zi_umpoitem as _item on  $projection.purchaseorder     = _item.Purchaseorder
                                             and $projection.Purchaseorderitem = _item.Purchaseorderitem
  association to zi_umpohead        as _head on  $projection.purchaseorder = _head.Purchaseorder
{
  key purchaseorder                   as purchaseorder,
  key purchaseorderitem               as Purchaseorderitem,
  key scheduleline                    as Scheduleline,
      schedulelinedeliverydate        as Schedulelinedeliverydate,
      @Semantics.quantity.unitOfMeasure: 'Purchaseorderquantityunit'
      schedulelineorderquantity       as Schedulelineorderquantity,
      _item.Purchaseorderquantityunit as Purchaseorderquantityunit,

      @Semantics.user.createdBy: true
      created_by                      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at                      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by           as LocalLastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed_at           as LocalLastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at                 as LastChangedAt,

      _item,
      _head
}
