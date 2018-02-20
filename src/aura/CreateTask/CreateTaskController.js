({
	save  : function(component, event) {
        console.log("Called");
        var subject = component.find("subject").get("v.value");
		var description = component.find("description").get("v.value");
        var priority = component.find("priority").get("v.value");
        var type = component.find("type").get("v.value");
        console.log({
            "subject":subject,
            "description":description,
            "priority":priority,
            "type":type
            });
            var action1 = component.get("c.saveTask");
        action1.setParams({
            "subject":subject,
            "description":description,
            "priority":priority,
            "type":type
        });
        action1.setCallback(this, function(action1){
            component.find("subject").set("v.value","");
            component.find("description").set("v.value","");
            component.find("priority").set("v.value","High");
            component.find("type").set("v.value", "Call");
            console.log('Called back');
	    });
        $A.enqueueAction(action1);
    }
})