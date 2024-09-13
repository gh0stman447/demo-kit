import { KoobDataService } from 'bi-internal/services'

const { koobDataRequest3 } = KoobDataService

class DataService {
  async fetchData(filters: any, requestString: string) {
    const response = await koobDataRequest3(
      'click_id.assignments_id',
      [],
      [],
      filters,
      { schema_name: 'ds_7' },
      requestString
    )
    return response
  }
}

export const dataService = new DataService()
