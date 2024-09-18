import { KoobDataService } from 'bi-internal/services'

const { koobDataRequest3 } = KoobDataService

const KOOB_ID = 'click_it.datamart'

export const getData = async ({ filters }: any, requestString: string) => {
  const data = await koobDataRequest3(KOOB_ID, ['department_id'], [], filters, { schema_name: 'ds_32' }, requestString)
  return data
}
