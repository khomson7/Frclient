var xmlhttp = new XMLHttpRequest();
//var CON = 'http://49.231.174.131:8080';
var servicehost = "/dashboard/d3";
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


        //  var delayed;
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {

            data: {
                labels: persontype,
                color: "blue",
                datasets: [
                    {

                        label: 'จำนวน',
                        data: cc,
                        backgroundColor: '#E9967A',
                        borderColor: '#E9967A',
                        borderWidth: 0,

                    },


                    /*,
                                            {
                                                label: 'Astra',
                                                data: type2,
                                                backgroundColor: 'green',
                                                borderColor: 'green',
                                                borderWidth: 4
                                            }*/]
            },


            type: 'bar',




            options: {

                plugins: {

                    datalabels: {

                        //  color: 'orange',
                        labels: {

                            value: {
                                color: 'red'
                            }
                        }
                    }
                },

                indexAxis: 'y',
                /*
                title: {
                    display: true,
                    fontStyle: 'bold',
                    fontColor: 'blue',
                    fontSize: 16,
                    text: "รับบริการฉีดวัคซีนโควิค 19 ทั้งหมดแยกกลุ่มเสี่ยง"

                },*/
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






