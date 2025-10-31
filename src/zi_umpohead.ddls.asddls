@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface po head'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zi_umpohead
  as select from ztumpohead
  composition [0..*] of zi_umpoitem as _item
{
  key purchaseorder          as Purchaseorder,
      purchaseordertype      as Purchaseordertype,
      companycode            as Companycode,
      purchasingorganization as Purchasingorganization,
      purchasinggroup        as Purchasinggroup,
      supplier               as Supplier,

      @Semantics.user.createdBy: true
      created_by             as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at             as CreatedAt,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by  as LocalLastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed_at  as LocalLastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at        as LastChangedAt,

      _item // Make association public
}
