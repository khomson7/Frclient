var xmlhttp = new XMLHttpRequest();
//var CON = 'http://49.231.174.131:8080';

var servicehost = "/dashboard/d4";
var url = servicehost;
xmlhttp.open("GET", url, true);
xmlhttp.send();
xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
        var data = JSON.parse(this.responseText);
        //  console.log(data)
        var persontype = data.morpromt.map(function (elem) {
            return elem.persontype;
        });
        // console.log(dates)
        var cc = data.morpromt.map(function (elem) {
            return elem.cc;
        });
        var type2 = data.morpromt.map(function (elem) {
            return elem.type_2;
        });
        var astra = data.morpromt.map(function (elem) {
            return elem.astra;
        });


        var delayed;
        var ctx = document.getElementById('myChart2').getContext('2d');
        var myChart2 = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: persontype,
                datasets: [
                    {
                        label: 'จำนวน',
                        data: cc,
                        backgroundColor: '#E9967A',
                        borderColor: '#E9967A',
                        borderWidth: 0
                    }

                    /*,
                                            {
                                                label: 'Astra',
                                                data: type2,
                                                backgroundColor: 'green',
                                                borderColor: 'green',
                                                borderWidth: 4
                                            }*/]
            },
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: '',
                        color: "blue", // not 'fontColor:' anymore
                        // fontSize: 18,
                        font: {
                            size: 18, // 'size' now within object 'font {}'
                        },
                    }

                },

                indexAxis: 'y',
                animation: {
                    onComplete: () => {
                        delayed = true;
                    },
                    delay: (context) => {
                        let delay = 0;
                        if (context.type === 'data' && context.mode === 'default' && !delayed) {
                            delay = context.dataIndex * 300 + context.datasetIndex * 100;
                        }
                        return delay;
                    },
                },
                legend: {
                    position: "bottom",
                    labels: {}
                },

                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: false,
                            callback: function (value, index, values) {
                                return value.toLocaleString();
                            }
                        }
                    }]
                },
                responsive: true,
            }

        });
    }
}





