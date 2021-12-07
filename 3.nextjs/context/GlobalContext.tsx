import {
  useState,
  createContext,
  ReactChild,
  Dispatch,
  SetStateAction,
} from "react";
import { ThemeTypeEnum } from "../types/themeTypes";

// interface
interface GlobalContextInterface {
  currentTheme: ThemeTypeEnum;
  setCurrentTheme: Dispatch<SetStateAction<ThemeTypeEnum>>;
  result: [];
  setResult: Dispatch<SetStateAction<[]>>;
}

// Context
export const GlobalContext = createContext<GlobalContextInterface | null>(null);

// Context Provider
export const GlobalProvider = ({ children }: { children: ReactChild }) => {
  const [currentTheme, setCurrentTheme] = useState<ThemeTypeEnum>(
    ThemeTypeEnum.light
  );
  const [result, setResult] = useState<[]>([]);

  let values: GlobalContextInterface = {
    currentTheme,
    setCurrentTheme,
    result,
    setResult,
  };

  return (
    <GlobalContext.Provider value={values}>{children}</GlobalContext.Provider>
  );
};
