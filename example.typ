#import "lib.typ": render, evalRender
#import "themes.typ": vintageTheme, romaTheme

#render((
  width: 390,
  height: 280,
), (
  xAxis: (
    type: "category",
    boundaryGap: false,
  ),
  yAxis: (
    type: "value"
  ),
  series: (
    data: (114, 514, 191, 98, 10),
    type: "line",
    areaStyle: ()
  )
), theme: vintageTheme)

#let str = ```json
{toolbox: { show: false }, color:["#80FFA5","#00DDFF","#37A2FF","#FF0087","#FFBF00"],tooltip:{trigger:"axis",axisPointer:{type:"cross",label:{backgroundColor:"#6a7985"}}},legend:{data:["Line 1","Line 2","Line 3","Line 4","Line 5"]},grid:{left:"3%",right:"4%",bottom:"3%",containLabel:true},xAxis:[{type:"category",boundaryGap:false,data:["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]}],yAxis:[{type:"value"}],series:[{name:"Line 1",type:"line",stack:"Total",smooth:true,lineStyle:{width:0},showSymbol:false,areaStyle:{opacity:.8,color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgb(128, 255, 165)"},{offset:1,color:"rgb(1, 191, 236)"}])},emphasis:{focus:"series"},data:[140,232,101,264,90,340,250]},{name:"Line 2",type:"line",stack:"Total",smooth:true,lineStyle:{width:0},showSymbol:false,areaStyle:{opacity:.8,color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgb(0, 221, 255)"},{offset:1,color:"rgb(77, 119, 255)"}])},emphasis:{focus:"series"},data:[120,282,111,234,220,340,310]},{name:"Line 3",type:"line",stack:"Total",smooth:true,lineStyle:{width:0},showSymbol:false,areaStyle:{opacity:.8,color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgb(55, 162, 255)"},{offset:1,color:"rgb(116, 21, 219)"}])},emphasis:{focus:"series"},data:[320,132,201,334,190,130,220]},{name:"Line 4",type:"line",stack:"Total",smooth:true,lineStyle:{width:0},showSymbol:false,areaStyle:{opacity:.8,color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgb(255, 0, 135)"},{offset:1,color:"rgb(135, 0, 157)"}])},emphasis:{focus:"series"},data:[220,402,231,134,190,230,120]},{name:"Line 5",type:"line",stack:"Total",smooth:true,lineStyle:{width:0},showSymbol:false,label:{show:true,position:"top"},areaStyle:{opacity:.8,color:new echarts.graphic.LinearGradient(0,0,0,1,[{offset:0,color:"rgb(255, 191, 0)"},{offset:1,color:"rgb(224, 62, 76)"}])},emphasis:{focus:"series"},data:[220,302,181,234,210,290,150]}]}
```

#evalRender((), str.text)

#render((
  width: 600,
  height: 400,
), (
  series: (
    (
      type: "bar",
      name: "Apples",
      data: (108, 26, 39, 24),
      itemStyle: (borderWidth: 2, borderColor: "black"),
    ),
    (
      data: (23, 40, 60, 70),
      itemStyle: (borderColor: "black", borderWidth: 2),
      name: "Oranges",
      type: "bar",
    ),
    (
      itemStyle: (borderColor: "black", borderWidth: 2),
      name: "Bananas",
      type: "bar",
      data: (129, 40, 40, 50),
    ),
    (
      name: "Pears",
      type: "bar",
      data: (40, 60, 50, 89),
      itemStyle: (borderWidth: 2, borderColor: "black"),
    ),
  ),
  xAxis: (
    axisLabel: (color: "black"),
    axisTick: (color: "black"),
    data: ("Q1", "Q2", "Q3", "Q4"),
    axisLine: (color: "black"),
  ),
  yAxis: (
    axisLabel: (color: "black"),
    splitLine: (lineStyle: (type: "dashed", color: "black")),
    axisLine: (color: "black"),
    axisTick: (color: "black"),
  ),
  color: ("white", "black", "white", "white"),
  legend: ("show": true),
  aria: (
    decal: (
      decals: (
        (dashArrayY: 0, color: "black", dashArrayX: 0),
        (color: "black", dashArrayY: 0, dashArrayX: 0),
        (
          dashArrayX: (1, 0),
          symbolSize: 1,
          rotation: calc.pi / 6,
          dashArrayY: (2, 5),
          color: "black",
        ),
        (
          dashArrayX: ((8, 8), (0, 8, 8, 0)),
          symbolSize: 0.8,
          dashArrayY: (6, 0),
          symbol: "circle",
          color: "black",
        ),
      ),
      "show": true,
    ),
  ),
))

#let aqiOption = () // Too long

#render((width: 600, height: 400), aqiOption)
