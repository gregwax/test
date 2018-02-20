global class AccountFutureClass{
  @future 
  public static void accountFutureClass(ID AcctId) {
      List<Account> accts = [select id, name from Account where id = :AcctId limit 1 ];
      if ( accts.size() > 0 ){
      System.debug('AccountFutureClass - accountFutureClass: ' + AcctId + ' and ' + accts[0].name);
      } else
      {
      System.debug('No Records found');
      }
      
    // Perform long-running code
  }
}