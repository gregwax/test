public with sharing class AccountListAuraController {
    @AuraEnabled
    public static List<Account> getAccounts(){
        return [SELECT Id, Name, Description, Website from Account Order BY Name];
    }

}