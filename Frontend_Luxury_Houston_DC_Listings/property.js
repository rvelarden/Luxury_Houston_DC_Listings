function fetchProperties(){
    fetch("http://localhost:3000/properties")
        .then(res => res.json())
        .then(properties => {
            properties.forEach((property) => renderProperty(property))
           
    })
    }

    function renderProperty(property){
        let propertyBox = document.querySelector(".image")
    }

