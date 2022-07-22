var barChartData = {//from w  w  w .  java  2  s .c om
    labels: ["2002", "2003", "2004", "2005", "2006", "2007", "2008", "2010", "2011", "2011", "2012", "2013", "2014", "2015"],
    datasets: [{
      label: 'Revenues',
      backgroundColor: "#BBB",
      data: [1450000, 1750000, 1700000, 1510000, 1400000, 1400000, 1535000, 1590000, 1620000, 1590000, 1630000, 1350000, 1350000, 1700000]
    }, {
      label: 'Expenses',
      backgroundColor: "#ceb947",
      data: [1650000, 1600000, 1350000, 1550000, 1300000, 1350000, 1350000, 1390000, 1410000, 1400000, 1700000, 1300000, 1300000, 1455000]
    }, {
      label: 'Poly. (Revenues)',
      type: 'line',
      borderWidth: 0.1,
      pointRadius: 0,
      backgroundColor: "rgba(187, 187, 187, 0.25)",
      data: [1450000, 1750000, 1700000, 1510000, 1400000, 1400000, 1535000, 1590000, 1620000, 1590000, 1630000, 1350000, 1350000, 1700000]
    }, {
      label: 'Poly. (Expenses)',
      type: 'line',
      borderWidth: 0.1,
      pointRadius: 0,
      backgroundColor: "rgba(206, 185, 71, 0.25)",
      data: [1650000, 1600000, 1350000, 1550000, 1300000, 1350000, 1350000, 1390000, 1410000, 1400000, 1700000, 1300000, 1300000, 1455000]
    }]
  };
  window.onload = function() {
    var ctx = document.getElementById("canvas").getContext("2d");
    window.myBar = new Chart(ctx, {
      type: 'bar',
      data: barChartData,
      options: {
        title: {
          display: true,
          fontStyle: 'bold',
          text: "Figure"
        },
        legend: {
          position: "bottom",
          labels: {}
        },
        tooltips: {
          mode: 'label',
          bodySpacing: 10,
          cornerRadius: 0,
          titleMarginBottom: 15,
        },
        scales: {
          xAxes: [{
            ticks: {}
          }],
          yAxes: [{
            ticks: {
              beginAtZero: true,
              stepSize: 500000,
                // Return an empty string to draw the tick line but hide the tick label
                // Return `null` or `undefined` to hide the tick line entirely
                userCallback: function(value, index, values) {
                  // Convert the number to a string and splite the string every 3 charaters from the end
                  value = value.toString();
                  value = value.split(/(?=(?:...)*$)/);
                  // Convert the array to a string and format the output
                  value = value.join('.');
                  return '?' + value;
                 }
            }
          }]
        },
        responsive: true,
      }
    });
  };
  