@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption po sche'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zc_umposche
  as projection on zi_umposche
{
  key purchaseorder,
  key Purchaseorderitem,
  key Scheduleline,
      Schedulelinedeliverydate,
      @Semantics.quantity.unitOfMeasure: 'Purchaseorderquantityunit'
      Schedulelineorderquantity,
      Purchaseorderquantityunit,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _head : redirected to zc_umpohead,
      _item : redirected to parent zc_umpoitem
}
