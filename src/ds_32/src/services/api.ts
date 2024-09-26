import { KoobDataService } from 'bi-internal/services'

const { koobDataRequest3 } = KoobDataService

const KOOB_ID = 'click_it.datamart'

export interface DataItem {
  name: string
  value: number
}

export interface Filters {
  name: string
}
export const getData = async (filters: Record<string, any>, requestString: string) => {
  const data: DataItem[] = await koobDataRequest3(
    KOOB_ID,
    ['name_variable_dm:name'],
    ['sum(value_dm):value'],
    filters,
    {
      sort: ['+name']
    },
    requestString
  )
  return data.map((item) => {
    return {
      ...item,
      value: Math.ceil(item.value)
    }
  })
}

export const getAllFilters = async (requestString: string) => {
  const data: Filters[] = await koobDataRequest3(
    KOOB_ID,
    ['name_variable_dm:name'],
    [],
    {},
    {
      sort: ['+name']
    },
    requestString
  )
  return data.map((item) => item.name)
}
