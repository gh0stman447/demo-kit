import * as React from 'react'
import OutlinedInput from '@mui/material/OutlinedInput'
import InputLabel from '@mui/material/InputLabel'
import MenuItem from '@mui/material/MenuItem'
import FormControl from '@mui/material/FormControl'
import ListItemText from '@mui/material/ListItemText'
import Select, { SelectChangeEvent } from '@mui/material/Select'
import Checkbox from '@mui/material/Checkbox'

const ITEM_HEIGHT = 48
const ITEM_PADDING_TOP = 8
const MenuProps = {
  PaperProps: {
    style: {
      maxHeight: ITEM_HEIGHT * 4.5 + ITEM_PADDING_TOP,
      width: 250
    }
  }
}

interface Props {
  filters: string[]
  setFilters: React.Dispatch<React.SetStateAction<string[]>>
  allFilters: string[]
}

export function MultipleSelect({ filters, setFilters, allFilters }: Props) {
  const handleChange = (event: SelectChangeEvent<typeof filters>) => {
    const {
      target: { value }
    } = event
    setFilters(typeof value === 'string' ? value.split(',') : value)
  }

  return (
    <div>
      <FormControl sx={{ m: 1, width: 300 }}>
        <InputLabel id="demo-multiple-checkbox-label">Tag</InputLabel>
        <Select
          labelId="demo-multiple-checkbox-label"
          id="demo-multiple-checkbox"
          multiple
          value={filters}
          onChange={handleChange}
          input={<OutlinedInput label="Tag" />}
          renderValue={(selected) => selected.join(', ')}
          MenuProps={MenuProps}
        >
          {/* Используем allFilters для рендеринга всех доступных фильтров */}
          {allFilters.map((name, index) => (
            <MenuItem key={index} value={name} sx={{ whiteSpace: 'normal' }}>
              <Checkbox checked={filters.includes(name)} />
              <ListItemText primary={name} />
            </MenuItem>
          ))}
        </Select>
      </FormControl>
    </div>
  )
}
