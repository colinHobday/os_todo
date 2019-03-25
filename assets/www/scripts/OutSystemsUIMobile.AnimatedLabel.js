function AnimatedLabel() {
    
    var input;
    var animatedLabelEl;
    
    var onFocus = function (event) {
        animatedLabelEl = osui.GetClosest(event.target, '.animated-label');
        animatedLabelEl.classList.add('active');
    };
    
    var onBlur = function (event) {
        animatedLabelEl = osui.GetClosest(event.target, '.animated-label');
        if (this.value.length === 0) {
            animatedLabelEl.classList.remove('active');
        }
    };
    
    var addEventListeners = function(input) {    
        
        if (input !== null) {
            input.addEventListener("focus", onFocus, true);
            input.addEventListener("blur", onBlur, true);
        }
    };
    
    var updateLabel = function (input) {
        
        animatedLabelEl = osui.GetClosest(input, '.animated-label');
        
        if (input!== null && animatedLabelEl !== null) {
            if (input.value === '' && input !== document.activeElement ) {
                animatedLabelEl.classList.remove('active');
            } else {
                animatedLabelEl.classList.add('active');   
            }            
        }
    };

    return {
      
    //wrapperId from animated label wrapper
    init: function(wrapperId) {
        
        var input = document.getElementById(wrapperId);
        input = input.querySelector('input');
        var animatedLabelEl = osui.GetClosest(input, '.animated-label');
        
        if(input !== null) {
            
            addEventListeners(input);
            
            if (input.value !== '') {
                animatedLabelEl.classList.add('active');   
            }
        }
    },
    update: function(wrapperId) {
        
        var input = document.getElementById(wrapperId);
        input = input.querySelector('input');
        
        updateLabel(input);
        
    }
  };

}