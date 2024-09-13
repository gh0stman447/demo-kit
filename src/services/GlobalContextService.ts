import { BaseService } from 'bi-internal/core'
import { ThemeType } from '../ds_14/src/shared/types/globalTypes'
import { changeMainThemeAttribute } from '../ds_14/src/shared/utils/contextUtils'

export interface IGlobalContextModel {
  loading?: boolean
  error?: string
  isSearchViewOpen: boolean
  globalSearchText: string
  selectedTheme: ThemeType
}

const themeStorageKey = 'globalContext-theme'

export class GlobalContextService extends BaseService<IGlobalContextModel> {
  constructor() {
    const cachedTheme = localStorage.getItem(themeStorageKey) as ThemeType
    const initialTheme = cachedTheme || 'dark'
    changeMainThemeAttribute(initialTheme as ThemeType)

    super({
      loading: false,
      error: null,
      isSearchViewOpen: false,
      selectedTheme: initialTheme,
      globalSearchText: null
    })
  }

  changeSearchViewOpen() {
    this._updateWithData({ isSearchViewOpen: !this._model.isSearchViewOpen })
  }

  setTheme(theme: ThemeType) {
    this._updateWithData({ selectedTheme: theme })
    changeMainThemeAttribute(theme)
    localStorage.setItem(themeStorageKey, theme)
  }

  public static getInstance = () => {
    if (!window.__globalContextService) {
      window.__globalContextService = new GlobalContextService()
    }
    return window.__globalContextService
  }
}

GlobalContextService.getInstance()
