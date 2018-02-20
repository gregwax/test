trigger OppEmailAlerts on Opportunity (after insert, after update) {
 Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
           // String recipients = 'greg.a.wax@wellsfargo.com,greg.a.wax@wellsfargo.com,greg.a.wax@wellsfargo.com,greg.a.wax@wellsfargo.com,greg.a.wax@wellsfargo.com,';
String recipients = 'gregwax@hotmail.com,gregwax@hotmail.com,gregwax@hotmail.com,gregwax@hotmail.com,gregwax@hotmail.com';            
String[] toAddresses = recipients.split(',');
           // mail.setToAddresses(toAddresses);
                //String[] r = 
                //005A0000000i1BE,
                 mail.setTargetObjectId('005A0000000i1BE');
                 mail.setUseSignature(false);
                 mail.saveAsActivity = false;
                 string htmlBody = '<!DOCTYPE html><html><h1>Developer Edition testing</h1></html>';
                 
                  mail.setHtmlBody(htmlBody);
       Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
       mail.setTargetObjectId('005A0000000i1BE');
              Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

}