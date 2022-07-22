var xmlhttp = new XMLHttpRequest();


var servicehost = "/cohortmonit/co4";
var url = servicehost;
xmlhttp.open('GET', url, true);
xmlhttp.send();
xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
        var data = JSON.parse(this.responseText);
        //  console.log(data)
        var monthd_th = data.cohortmonit.map(function (elem) {
            return elem.monthd_th;
        });
        // console.log(dates)
        var cc = data.cohortmonit.map(function (elem) {
            return elem.cc;
        });




        var delayed;
        var ctx = document.getElementById('myChart4').getContext('2d');
        var myChart4 = new Chart(ctx, {
            type: 'line',
            data: {
                labels: monthd_th,
                datasets: [
                    {
                        label: 'จำนวน',
                        data: cc,
                        backgroundColor: '#E9967A',
                        borderColor: '#E9967A',
                        borderWidth: 4
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
            title: {
                display: true,
                text: 'รับเข้าใหม่ในแต่ละวัน ย้อนหลัง 15 วัน',
                //  color: "blue", // not 'fontColor:' anymore
                // fontSize: 18,
                font: {
                    size: 18, // 'size' now within object 'font {}'
                },


            },
            options: {


                plugins: {


                    datalabels: {
                        color: 'blue',
                        labels: {
                            title: {
                                font: {
                                    weight: 'bold'
                                }
                            },
                            value: {
                                color: 'green'
                            }
                        }
                    }


                },

                indexAxis: 'x',

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

                scales: {
                    y: {  // not 'yAxes: [{' anymore (not an array anymore)
                        ticks: {
                            color: "green", // not 'fontColor:' anymore
                            // fontSize: 18,
                            font: {
                                size: 16, // 'size' now within object 'font {}'
                            },
                            stepSize: 1,
                            beginAtZero: true
                        }
                    },
                    x: {  // not 'xAxes: [{' anymore (not an array anymore)
                        ticks: {
                            color: "blue",  // not 'fontColor:' anymore
                            //fontSize: 14,
                            font: {
                                size: 14 // 'size' now within object 'font {}'
                            },
                            stepSize: 1,
                            beginAtZero: true
                        }
                    }
                }

                /*
                scales: {
                    x: {
                        stacked: true,
                    },
                    y: {
                        stacked: true
                    }
                } */
            }

        });
    }
}
