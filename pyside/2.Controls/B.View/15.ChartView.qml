// 
// ChartView(QtCharts): PolarChartView
//      property:
//          title: string
//          titleColor: color
//          titleFont: font
//          legend: Legend
//          count: int
//          axes: list<AbstractAxis>
//          plotArea: rect
//          plotAreaColor: color
//          theme: enumeration
//              ChartView.ChartThemeLight
//              ChartView.ChartThemeBlueCerulean
//              ChartView.ChartThemeDark
//              ChartView.ChartThemeBrownSand
//              ChartView.ChartThemeBlueNcs
//              ChartView.ChartThemeHighContrast
//              ChartView.ChartThemeBlueIcy
//              ChartView.ChartThemeQt
//          animationDuration: int
//          animationEasingCurve: easing
//          animationOptions: enumeration
//              ChartView.NoAnimation
//              ChartView.GridAxisAnimations
//              ChartView.SeriesAnimations
//              ChartView.AllAnimations
//          backgroundColor: color
//          backgroundRoundness: real
//          dropShadowEnabled: bool
//          margins: Margins
//      signal:
//          seriesAdded(AbstractSeries series)
//          seriesRemoved(AbstractSeries series)
//      method:
//          createSeries(enumeration type, string name, AbstractAxis axisX, AbstractAxis axisY): AbstractSeries
//          axisX(AbstractSeries series): Axis
//          axisY(AbstractSeries series): Axis
//          setAxisX(AbstractAxis axis, AbstractSeries series)
//          setAxisY(AbstractAxis axis, AbstractSeries series)
//          series(int index): AbstractSeries
//          series(string name): AbstractSeries
//          mapToPosition(point value, AbstractSeries series): point
//          mapToValue(point position, AbstractSeries series): point
//          removeAllSeries()
//          removeSeries(AbstractSeries series)
//          scrollDown(real pixels)
//          scrollLeft(real pixels)
//          scrollRight(real pixels)
//          scrollUp(real pixels)
//          isZoomed()
//          zoom(real factor)
//          zoomIn()
//          zoomIn(rect rectangle)
//          zoomOut()
//          zoomReset()