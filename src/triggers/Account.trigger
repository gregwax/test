trigger Account on Account (After Insert,After Update) {
    if ( 1 == 2 ){
    for ( Account a : trigger.new ){
    
       AccountFutureClass.AccountFutureClass(a.id );
    
    }
  ID jobId = System.enqueueJob(new Q_class(trigger.new));
    system.debug('Account  trigger  jobid ' +  jobId   );

}
}