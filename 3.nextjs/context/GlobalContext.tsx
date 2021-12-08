import {
  useState,
  createContext,
  ReactChild,
  Dispatch,
  SetStateAction,
} from "react";
import { ApiResponse } from "../types/api_res_types";
import { ThemeTypeEnum } from "../types/themeTypes";

// interface
interface GlobalContextInterface {
  currentTheme: ThemeTypeEnum;
  setCurrentTheme: Dispatch<SetStateAction<ThemeTypeEnum>>;
  result: ApiResponse | null;
  setResult: Dispatch<SetStateAction<ApiResponse | null>>;
  loading: boolean;
  setLoading: Dispatch<SetStateAction<boolean>>;
}

// Context
export const GlobalContext = createContext<GlobalContextInterface | null>(null);

// Context Provider
export const GlobalProvider = ({ children }: { children: ReactChild }) => {
  const [currentTheme, setCurrentTheme] = useState<ThemeTypeEnum>(
    ThemeTypeEnum.light
  );
  const [result, setResult] = useState<ApiResponse | null>(null);
  const [loading, setLoading] = useState<boolean>(false);

  let values: GlobalContextInterface = {
    currentTheme,
    setCurrentTheme,
    result,
    setResult,
    loading,
    setLoading,
  };

  return (
    <GlobalContext.Provider value={values}>{children}</GlobalContext.Provider>
  );
};
