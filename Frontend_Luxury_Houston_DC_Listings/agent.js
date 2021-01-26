function fetchAgents(){
    fetch("http://localhost:3000/agents")
        .then(res => res.json())
        .then(agents => {
        console.log(agents)
    })
    }