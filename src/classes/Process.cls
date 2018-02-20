public class Process {
  @InvocableMethod
  public static void testProcess(List<id> Ids){
    List<Lead> leads = [select id, name from lead where id in :ids];
    for (lead l : leads){
       l.firstname = 'sfdcTest';
    }
    upsert leads;
  
  }

}