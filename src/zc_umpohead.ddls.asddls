@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption po head'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_umpohead
  provider contract transactional_query
  as projection on zi_umpohead
{
  key Purchaseorder,
      Purchaseordertype,
      Companycode,
      Purchasingorganization,
      Purchasinggroup,
      Supplier,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _item: redirected to composition child zc_umpoitem
}
