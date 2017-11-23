public with sharing class AccountListAuraController {
	@auraEnabled
    public static List<Account> getAccounts() {
        return [Select Id, name, Description, website from Account order by Name];
    }
}