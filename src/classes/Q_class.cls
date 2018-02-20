public class Q_class implements Queueable{
    List<Account> accts = null;
    
    public Q_class(List<Account> accts ){
       this.accts = accts;
       system.debug('Q_class.Q_class ' );
       system.debug('accts.size()  ' + accts.size());

    }
    public void execute(QueueableContext QC){
    
       for ( Account a : accts ){
         system.debug('Q_class: Account Name: ' + a.name);
       }
        
        
    }

}