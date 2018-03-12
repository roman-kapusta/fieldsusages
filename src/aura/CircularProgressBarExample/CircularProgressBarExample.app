<aura:application >
<div class="slds-grid slds-p-top--xx-large">

				<b>Test Lightning Application</b>    
<div class="slds-col">
            <c:CircularProgressBar themeAfterThreshold="yellow" themeBeforeThreshold="green" size="medium" totalProgress="12" actualProgress="14" Legend="Result format" resultFormat="Mix" threshold="200" />  
        </div>
<div class="slds-col">
            <c:CircularProgressBar themeAfterThreshold="blue" themeBeforeThreshold="red" size="medium" totalProgress="19" actualProgress="5" Legend="Test Text Messsage" resultFormat="Mix" threshold="7" />  
        </div>
    </div>   
</aura:application>