import { VerticalBarChartDataSet } from '@ekp/ui-core'

type seriesVariants = 'target' | 'fact' | 'previous'

export const VerticalBarChartData = {
  firstData: {
    colors: ['#D3D', '#D12e', '#ee1'],
    data: [1000, 500, 1500, 300, 10, 1200],
    name: 'Fact previous year',
    seriesVariants: ['fact']
  } as VerticalBarChartDataSet,
  secondData: {
    colors: ['#78D64B', '#78D64B', '#FF6900'],
    data: [460, 1030, 990, 1500, 402],
    name: 'Fact this year',
    seriesVariants: ['target'] as seriesVariants[]
  } as VerticalBarChartDataSet
}

export const xAxisData = ['Наименование длинное', 'Наименование', 'Очень длинное наименование', '5', '6', '7']
