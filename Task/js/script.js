//I could do foreach here but I am assuming I dont have to write all the data on the application front-end so I chose these

$.getJSON('https://api.github.com/users/tkrivosija', function (data) {
    var login = data.login;
    var id = data.id;
    var url = data.url;
    var name = data.name;
    var location = data.location;
    var email = data.email;
    document.getElementById("TextBox1").value = login;
    document.getElementById("TextBox2").value = id;
    document.getElementById("TextBox3").value = url;
    document.getElementById("TextBox4").value = name;
    document.getElementById("TextBox5").value = location;
    document.getElementById("TextBox6").value = email;
});

//Here I will show the realization of authentication on the example of searching private repositories which cannot be done without authentication

const btnPrivate = document.getElementById("btnPrivate")
btnPrivate.addEventListener("click", e => getPrivateRep())

async function getPrivateRep() {
    const headers = {
        "Authorization": `Token writeYourGithubTokenHere`
    }
    const url = "https://api.github.com/search/repositories?q=is:private user:writeYourGithubUsernameHere" 
    const response = await fetch(url, {
        "method": "GET",
        "headers": headers
    })
    const result = await response.json()

    result.items.forEach(x => {
        const a = document.createElement("label")
        a.textContent = x.full_name;
        divResult.appendChild(a)
        divResult.appendChild(document.createElement("br"))
    })
}