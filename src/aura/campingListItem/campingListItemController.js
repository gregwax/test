({
	packItem : function(component, event, helper) {
       var isPacked = component.get("v.item.Packed__c",true);
       isPacked.Packed__c = true;
       component.set("v.item", isPacked);
        
        var btnClicked = event.getSource();
        btnClicked.set("v.disabled",true);
        
		
	}
})