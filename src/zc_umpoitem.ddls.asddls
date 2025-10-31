@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption po item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zc_umpoitem
  as projection on zi_umpoitem
{
  key Purchaseorder,
  key Purchaseorderitem,
      Material,
      Plant,
      @Semantics.quantity.unitOfMeasure: 'Purchaseorderquantityunit'
      Orderquantity,
      Purchaseorderquantityunit,
      @Semantics.amount.currencyCode: 'Documentcurrency'
      Netpriceamount,
      Documentcurrency,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _head : redirected to parent zc_umpohead,
      _sche : redirected to composition child zc_umposche
}
