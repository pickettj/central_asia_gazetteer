function toggleEnglishToPersian() {
    var textboxEnglish = document.getElementById("text-english");
    if(textboxEnglish.classList.contains("displayed-textbox")) //If the English text is being displayed right now
    {
        //Hide the English
        textboxEnglish.classList.remove("displayed-textbox");
        textboxEnglish.classList.add("hidden-textbox");
    
        //Change the English button to the "closed" style
        var buttonEnglish = document.getElementById("button-english");
        buttonEnglish.classList.toggle("closed-button");
        buttonEnglish.classList.toggle("open-button");
        
        //Reveal the Persian
        var textboxPersian = document.getElementById("text-persian");
        textboxPersian.classList.remove("hidden-textbox");
        textboxPersian.classList.add("displayed-textbox");
        
        //Change the Persian button to the "open" style
        var buttonPersian = document.getElementById("button-persian");
        buttonPersian.classList.toggle("open-button");
        buttonPersian.classList.toggle("closed-button");
    }
}

function togglePersianToEnglish() {
    var textboxEnglish = document.getElementById("text-english");
    if(textboxEnglish.classList.contains("hidden-textbox")) //If the English text is NOT being displayed right now
    {
        //Reveal the English
        textboxEnglish.classList.add("displayed-textbox");
        textboxEnglish.classList.remove("hidden-textbox");
        
        //Change the English button to the "open" style
        var buttonEnglish = document.getElementById("button-english");
        buttonEnglish.classList.toggle("open-button");
        buttonEnglish.classList.toggle("closed-button");
        
        //Reveal the Persian
        var buttonPersian = document.getElementById("button-persian");
        buttonPersian.classList.toggle("closed-button");
        buttonPersian.classList.toggle("open-button");
        
        //Change the Persian button to the "closed" style
        var textboxPersian = document.getElementById("text-persian");
        textboxPersian.classList.add("hidden-textbox");
        textboxPersian.classList.remove("displayed-textbox");
     }
}