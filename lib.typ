#import "@preview/jogs:0.2.3": *

#let echarts = read("echarts.js")
#let bytecode = compile-js(echarts)

#let render(config, option, theme: none) = {
  let svg = call-js-function(bytecode, "renderChart", config, option, theme)
  image.decode(svg)
}

#let evalRender(config, option, theme: none) = {
  let svg = eval-js(echarts + "\n let config = {width: 400, height: 320}; let option = " + option + ";renderChart(config, option)")
  image.decode(svg)
}
