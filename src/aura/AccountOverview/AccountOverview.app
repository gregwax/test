<aura:application >
	<ltng:require styles="{!$Resource.BootStrapCSS}" />
    <div class="col-md-4" style='height: 400px; overflow: scroll; padding-top:10px;' >
      <c:AccountList />
    </div>        
    <div class="col-md-4" style='height: 400px; overflow: scroll; padding-top:10px;' >
      <c:CreateTask />
    </div>        
    
</aura:application>