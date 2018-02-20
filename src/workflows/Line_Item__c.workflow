<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Stock_Inventory</fullName>
        <field>Total_Inventory__c</field>
        <formula>IF (
ISNEW(),
Merchandise__r.Total_Inventory__c - Units_Sold__c ,
Merchandise__r.Total_Inventory__c - (Units_Sold__c - PRIORVALUE(Units_Sold__c))
)</formula>
        <name>Update Stock Inventory</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Merchandise__c</targetObject>
    </fieldUpdates>
</Workflow>
