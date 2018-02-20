global class CRMContact
{
    WebService static Account GetAccountByName ( string contactName )
    {
        account a1 = [SELECT AccountNumber, Type, Industry, annualRevenue, Website, Ownership from account WHERE Name=:contactName];
        return a1;
        
    }
}