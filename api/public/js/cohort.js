var xmlhttp = new XMLHttpRequest();

var servicehost = "/cohortmonit/co3";
var url = servicehost;
xmlhttp.open("GET", url, true);
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
        var ctx = document.getElementById('myChart3').getContext('2d');
        var myChart3 = new Chart(ctx, {
            type: 'line',
            data: {
                labels: monthd_th,
                datasets: [
                    {
                        label: 'จำนวน',
                        data: cc,
                        backgroundColor: 'orange',
                        borderColor: 'orange',
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
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: 'รับเข้าใหม่แยกรายเดือน',
                        color: "blue", // not 'fontColor:' anymore
                        // fontSize: 18,
                        font: {
                            size: 18, // 'size' now within object 'font {}'
                        },
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
                    x: {
                        stacked: true,
                    },
                    y: {
                        stacked: true
                    }
                }
            }

        });
    }
}








