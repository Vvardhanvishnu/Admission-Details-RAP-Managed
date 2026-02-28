@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_BOOK_CB11LIB'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_BOOK_CB11LIB
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_BOOK_CB11LIB
  association [1..1] to ZZCIR_CIT_BOOK_CB11LIB as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  BookName,
  Category,
  Author,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
