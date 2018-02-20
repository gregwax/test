trigger OpStdName on Opportunity (before insert) {
Opportunity[] opps = Trigger.new;
OppStandardizeName.stdName(opps) ;
 }