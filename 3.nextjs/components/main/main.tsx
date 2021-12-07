import { useContext } from "react";
import Header from "./../header/header";
import { ThemeProvider } from "styled-components";
import { GlobalContext } from "../../context/GlobalContext";
import { darkTheme, lightTheme, GlobalStyles } from "../../styles/theme";
import { MainContainer, WidthContainer, EmptyDataContainer } from "./style";
import SearchHeader from "./../search_header/SearchHeader";
import { ThemeTypeEnum } from "../../types/themeTypes";

const Main: React.FC = () => {
  const context = useContext(GlobalContext);

  return (
    <ThemeProvider
      theme={
        context?.currentTheme === ThemeTypeEnum.light ? lightTheme : darkTheme
      }
    >
      <GlobalStyles />
      <MainContainer>
        <WidthContainer>
          <Header />
          <SearchHeader />
          {context?.result.length === 0 ? (
            <EmptyDataContainer>
              <p>Try Checking Some Website</p>
            </EmptyDataContainer>
          ) : (
            "NULL"
          )}
        </WidthContainer>
      </MainContainer>
    </ThemeProvider>
  );
};

export default Main;
