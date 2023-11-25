/**
 * 
 */  function submitForm() {
            var s_roll = document.getElementById("S_roll").value;
            var outputContainer = document.getElementById("output-container");
            
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "profile", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    outputContainer.innerHTML = xhr.responseText;
                }
            };
            
            xhr.send("S_roll=" + s_roll);
        }