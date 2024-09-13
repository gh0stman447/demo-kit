import React, { useEffect, useState } from 'react'
import {
  Button,
  BasketIcon,
  NewStarIcon,
  HomeIcon,
  PersonIcon,
  CheckMarkIcon,
  ArrowDownIcon,
  ArrowNextIcon,
  ArrowRightIcon,
  Checkbox,
  CircleCloseIcon,
  CircleInfoIcon,
  CirclePlusIcon,
  CloseIcon,
  CollapseAllIcon,
  CopyIcon,
  Dropdown,
  FileDownloadIcon,
  FileEditIcon,
  IncreaseHeightIcon,
  InfoIcon,
  InstructionIcon,
  LayoutIcon,
  LinkIcon,
  LogoutIcon,
  Panel,
  PencilIcon,
  PeopleIcon,
  RangePicker,
  ReduceHeightIcon,
  RgdLogoIcon,
  SearchIcon,
  SaveIcon,
  SettingsIcon,
  ShareArrowIcon,
  SortArrowIcon,
  ThemeIcon,
  UpdateIcon,
  UserAvatarIcon,
  WatchIcon,
  GanttChart,
  ThemeProvider,
  VerticalBarChart
} from '@ekp/ui-core'

// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore

// import cls from './App.module.scss'

const App = () => {
  const [date, setDate] = useState()

  return (
    <div style={{ overflow: 'scroll' }}>
      Hello World!!!
      {/* <Button>Hello button!!</Button>
      <NewStarIcon color="red" width={32} />
      <HomeIcon color="black" fill="red" width={32} />
      <PersonIcon fill="black" width={32} />
      <CheckMarkIcon fill="green" width={32} />
      <BasketIcon fill="red" width={32} />
      <ArrowDownIcon fill="black" width={32} />
      <ArrowNextIcon fill="black" width={32} />
      <ArrowRightIcon fill="black" width={32} />
      <Checkbox />
      <CircleCloseIcon fill="black" width={32} />
      <CircleInfoIcon fill="black" width={32} />
      <CirclePlusIcon fill="black" width={32} />
      <CloseIcon fill="black" width={32} />
      <CollapseAllIcon fill="black" width={32} />
      <CopyIcon fill="black" width={32} /> */}
      {/* <Dropdown /> */}
      {/* <FileDownloadIcon fill="black" width={32} />
      <FileEditIcon fill="black" width={32} />
      <IncreaseHeightIcon fill="black" width={32} />
      <InfoIcon fill="black" width={32} />
      <InstructionIcon fill="black" width={32} />
      <LayoutIcon fill="black" width={32} />
      <LinkIcon fill="black" width={32} />
      <LogoutIcon fill="black" width={32} />
      <PencilIcon fill="black" width={32} />
      <PeopleIcon fill="black" width={32} />
      <RangePicker width={32} />
      <ReduceHeightIcon fill="black" width={32} />
      <RgdLogoIcon fill="black" width={32} />
      <SearchIcon fill="black" width={32} />
      <SaveIcon fill="black" width={32} />
      <SettingsIcon fill="black" width={32} />
      <ShareArrowIcon fill="black" width={32} />
      <SortArrowIcon fill="black" width={32} />
      <UpdateIcon fill="black" width={32} />
      <UserAvatarIcon fill="black" width={32} />
      <WatchIcon fill="black" width={32} />
      <Panel />
      <ThemeIcon fill="black" width={32} /> */}
      <GanttChart
        size={[900, 600]}
        targetPeriod={new Date('2024-03-14T21:00:00.000Z')}
        tasks={[
          {
            description: 'Описание',
            end: new Date('2024-03-14T21:00:00.000Z'),
            name: 'Task 1',
            start: new Date('2024-01-29T21:00:00.000Z')
          },
          {
            description: 'Более длинное описание',
            end: new Date('2024-04-14T21:00:00.000Z'),
            name: 'Task 2',
            start: new Date('2024-02-14T21:00:00.000Z')
          },
          {
            description: 'Пример еще более длинного описания задачи в GanntChart',
            end: new Date('2024-08-05T21:00:00.000Z'),
            name: 'Task 3',
            start: new Date('2024-03-14T21:00:00.000Z')
          }
        ]}
        xAxisData={[
          {
            dateName: 'ЯНВ',
            dateValue: new Date('2023-12-31T21:00:00.000Z')
          },
          {
            dateName: 'ФЕВ',
            dateValue: new Date('2024-01-31T21:00:00.000Z')
          },
          {
            dateName: 'МАР',
            dateValue: new Date('2024-02-29T21:00:00.000Z')
          },
          {
            dateName: 'АПР',
            dateValue: new Date('2024-03-31T21:00:00.000Z')
          },
          {
            dateName: 'МАЙ',
            dateValue: new Date('2024-04-30T21:00:00.000Z')
          },
          {
            dateName: 'ИЮН',
            dateValue: new Date('2024-05-31T21:00:00.000Z')
          },
          {
            dateName: 'ИЮЛ',
            dateValue: new Date('2024-06-30T21:00:00.000Z')
          },
          {
            dateName: 'АВГ',
            dateValue: new Date('2024-07-31T21:00:00.000Z')
          },
          {
            dateName: 'СЕН',
            dateValue: new Date('2024-08-31T21:00:00.000Z')
          }
        ]}
      />
      <VerticalBarChart
        showYAxis
        barsAreaWidth={50}
        leftGap={3}
        rightGap={3}
        seriesLabelSize={10}
        dataSets={[
          {
            colors: ['#D3D3D3', '#D3D3D3', '#D3D3D3'],
            data: [1000, 500, 1500, 300, 1203],
            name: 'Fact previous year',
            seriesVariants: ['target']
          },
          {
            colors: ['#78D64B', '#78D64B', '#FF6900'],
            data: [2000, 2500, 500],
            name: 'Fact this year',
            seriesVariants: ['target']
          }
        ]}
        size={['100%', 300]}
        xAxisData={['Наименование длинное', 'Наименование', 'Очень длинное наименование', '5', '6']}
      />
      {/* <ThemeProvider initialTheme="dark" /> */}
    </div>
  )
}

export default App
