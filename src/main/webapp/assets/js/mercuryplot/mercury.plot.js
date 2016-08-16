var PlotColor = {
        c1 : '#FA5833'
        ,c2 : '#2FABE9'
        ,c3 : '#FABB3D'
}

$.lineLegend = function(plotData, plotLabel, plotColor) {
    return {data:plotData
            , label: plotLabel
            , lines: { show: true,
               lineWidth: 2,
               fill: true, fillColor: { colors: [ { opacity: 0.5 }, { opacity: 0.2 } ] }
            }
            , points: { show: true,
                lineWidth: 2
            }
            , color : plotColor
       };
}

$.barLegend = function(plotData, plotLabel, plotColor) {
    return {data:plotData
            , label: plotLabel
            , lines: { show: false, fill: true, steps: false }
            , bars: { show: true, barWidth: 0.6, align:"center" }
            , stack : 100
            , color : plotColor
       };
}

$.stepLegend = function(plotData, plotLabel, plotColor) {
    return {data:plotData
            , label: plotLabel
            , lines: { show: true, fill: true, steps: true }
            , bars: { show: false}
            , stack : 0
            , color : plotColor
       };
}

$.basicPlot = function(target, legendList) {
    var options = {
            series: {
                shadowSize: 0
            }
            , grid: { hoverable: true,
                    clickable: true,
                    tickColor: "#f9f9f9",
                    borderWidth: 0
              }
            , xaxis: {ticks:6, tickDecimals: 0}
            , yaxis: {ticks:3, tickDecimals: 0}
            , selection: {
                mode: "x"
            }
        };

    return $.plot(target, legendList, options);
}

$.datePlot = function() {
    var options = {
            series: {
                shadowSize: 0
            }
            , grid: { hoverable: true,
                    clickable: true,
                    tickColor: "#f9f9f9",
                    borderWidth: 0
              }
            , xaxis: {ticks:6, tickDecimals: 0}
            , yaxis: {ticks:3, tickDecimals: 0}
        };

    $.plot(target, legendList, options);
}