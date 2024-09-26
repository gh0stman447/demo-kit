import React, { useEffect, useState } from 'react'
import '../output.css'

import { Button, ThemeProvider, PieChart } from '@ekp/ui-core'

import { COLORS } from '../constants/PieColor'
import { MultipleSelect } from '../components/Select'
import { DataItem, getAllFilters, getData } from './src/services/api'

// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore

const App = () => {
  const [allFilters, setAllFilters] = useState<string[]>([])
  const [filter, setFilter] = useState<string[]>([])

  const [serverData, setServerData] = useState<DataItem[]>([])

  useEffect(() => {
    getAllFilters('allFilters').then((res) => {
      setAllFilters(res)
    })
  }, [])

  useEffect(() => {
    getData(
      {
        // value_dm: ['>', 400],
        name_variable_dm: ['=', ...filter]
      },
      'request'
    ).then((res) => setServerData(res))
  }, [filter])

  return (
    <ThemeProvider initialTheme="dark">
      {filter.length ? <Button onClick={() => setFilter([])}>Clear filters</Button> : null}

      <MultipleSelect filters={filter} setFilters={setFilter} allFilters={allFilters} />

      <PieChart
        chartsConfig={{
          dataSet: serverData,
          color: COLORS
        }}
        onClick={() => console.log('clicked')}
      />
    </ThemeProvider>
  )
}

export default App
