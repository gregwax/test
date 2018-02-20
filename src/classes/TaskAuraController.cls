public with sharing class TaskAuraController {
    @AuraEnabled
    public static Task saveTask(String subject, string description, string priority, string type){
       Task t = new Task();
        t.subject = subject;
        t.Description = description;
        t.Priority = priority;
        t.Type = type;
        t.OwnerId = UserInfo.getUserId();
        t.ActivityDate = Date.today()+2;
        insert t;
        return t;
        
    }

}