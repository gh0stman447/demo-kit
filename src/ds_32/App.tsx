import React, { useEffect, useState } from 'react'
import '../output.css'

import { Button, GanttChart, ThemeProvider, VerticalBarChart, TaskDataType, xAxisDataType } from '@ekp/ui-core'

import { tasksData, xData } from '../components/GanttChart/data'

import styles from '../components/GanttChart/styles.module.css'
import styles2 from '../components/VerticalBarChart/styles.module.css'

import { VerticalBarChartData, xAxisData as xAxisVerticalBarChartData } from '../components/VerticalBarChart/data'

import { getData } from './src/services/api'

// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore

// import cls from './App.module.scss'

const App = () => {
  // useEffect(() => {
  //   getData({}, '').then((res) => console.log(res))
  // }, [])

  const [tasks] = useState<TaskDataType[]>(tasksData)
  const [xAxisData] = useState<xAxisDataType[]>(xData)

  const [_VerticalBarChartData] = useState(VerticalBarChartData)
  const [_xAxisData] = useState(xAxisVerticalBarChartData)

  return (
    <ThemeProvider initialTheme="light">
      <div>
        {/* <Button variant="circleIcon" size="l" className="m-2 p-1">
          <NewStarIcon fill="red" width={32} onClick={() => console.log('clicked')} />
        </Button> */}

        <VerticalBarChart
          size={['100%', 300]}
          dataSets={[{ name: '123', colors: ['#FF0000'], data: [100], seriesVariants: ['target'] }]}
          xAxisData={['Столбец']}
        />

        {/* <VerticalBarChart
          // className={styles2.VerticalBarChartstyles}
          className="hover:scale-[1.02] shadow-lg duration-300 mt-10"
          showYAxis
          barsAreaWidth={50}
          leftGap={3}
          rightGap={3}
          seriesLabelSize={10}
          dataSets={[
            {
              colors: _VerticalBarChartData.firstData.colors,
              data: _VerticalBarChartData.firstData.data,
              name: _VerticalBarChartData.firstData.name,
              seriesVariants: _VerticalBarChartData.firstData.seriesVariants
            },
            {
              colors: _VerticalBarChartData.secondData.colors,
              data: _VerticalBarChartData.secondData.data,
              name: _VerticalBarChartData.secondData.name,
              seriesVariants: _VerticalBarChartData.secondData.seriesVariants
            }
          ]}
          size={['100%', 300]}
          xAxisData={_xAxisData}
        /> */}
      </div>
    </ThemeProvider>
  )
}

export default App
