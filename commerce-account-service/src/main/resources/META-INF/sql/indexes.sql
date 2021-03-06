create index IX_721C700D on CommerceAccount (companyId, externalReferenceCode[$COLUMN_LENGTH:75$]);
create index IX_FE5BDB63 on CommerceAccount (userId, type_);

create index IX_2236CBA3 on CommerceAccountOrganizationRel (commerceAccountId);
create index IX_16599BBC on CommerceAccountOrganizationRel (organizationId);

create index IX_2D10743B on CommerceAccountUserRel (commerceAccountId);
create index IX_EC8DEFA6 on CommerceAccountUserRel (commerceAccountUserId);