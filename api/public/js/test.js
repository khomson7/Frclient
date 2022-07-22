var chartData = {
    labels: ["January", "February", "March", "April", "May", "June"],
    datasets: [
        {
            fillColor: "#79D1CF",
            strokeColor: "#79D1CF",
            data: [60, 80, 81, 56, 55, 40]
        }
    ]
};

var barOptions = {
    events: false,
    showTooltips: false,
    animation: {
        duration: 500,
        easing: "easeOutQuart",
        onComplete: function () {
            var ctx = this.chart.ctx;
            ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontFamily, 'normal', Chart.defaults.global.defaultFontFamily);
            ctx.textAlign = 'left';
            ctx.textBaseline = 'bottom';

            this.data.datasets.forEach(function (dataset) {
                console.log(dataset);
                for (var i = 0; i < dataset.data.length; i++) {
                    var model = dataset._meta[Object.keys(dataset._meta)[0]].data[i]._model,
                        scale_max = dataset._meta[Object.keys(dataset._meta)[0]].data[i]._yScale.maxHeight;
                    left = dataset._meta[Object.keys(dataset._meta)[0]].data[i]._xScale.left;
                    offset = dataset._meta[Object.keys(dataset._meta)[0]].data[i]._xScale.longestLabelWidth;
                    ctx.fillStyle = '#444';
                    var y_pos = model.y - 5;
                    var label = model.label;
                    // Make sure data value does not get overflown and hidden
                    // when the bar's value is too close to max value of scale
                    // Note: The y value is reverse, it counts from top down
                    if ((scale_max - model.y) / scale_max >= 0.93)
                        y_pos = model.y + 20;
                    // ctx.fillText(dataset.data[i], model.x, y_pos);
                    ctx.fillText(label, left + 10, model.y + 8);
                }
            });
        }
    }
};

var ctx = document.getElementById("myChart5").getContext("2d");
var myBar = new Chart(ctx, {
    type: 'horizontalBar',
    data: chartData,
    options: barOptions
});