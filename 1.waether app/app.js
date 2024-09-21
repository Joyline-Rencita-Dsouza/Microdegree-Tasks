unction getData() {
            var cityname = document.getElementById("city").value;
            var temp = "";
            const url = "https://api.openweathermap.org/data/2.5/weather?q="+cityname+"&units=metric&appid=6bfe8d2f824cb82d1425f60737c2cc4e";
            fetch(url)
            .then((res) => 
                  res.json())
                  .then((data) => {
                    console.log(data.main.temp);
                    var temp = data.main.temp;
                    temp = temp + " Celsius";
                    document.getElementById("currentweather").innerText = temp;
                  });             
        }
