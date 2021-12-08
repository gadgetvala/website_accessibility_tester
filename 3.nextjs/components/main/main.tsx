import { useContext } from "react";
import Header from "./../header/header";
import { ThemeProvider } from "styled-components";
import { GlobalContext } from "../../context/GlobalContext";
import { darkTheme, lightTheme, GlobalStyles } from "../../styles/theme";
import {
  MainContainer,
  WidthContainer,
  EmptyDataContainer,
  DisplayDetailsContainer,
} from "./style";
import Spinner from "../spinner/Spinner";
import "react-toastify/dist/ReactToastify.css";
import { ToastContainer } from "react-toastify";
import { Issue } from "./../../types/api_res_types";
import { ThemeTypeEnum } from "../../types/themeTypes";
import SearchHeader from "./../search_header/SearchHeader";
import DetailsContainer from "../details_container/DetailsContainer";

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
        <ToastContainer />
        <WidthContainer>
          <Header />
          <SearchHeader />

          {/* Show Loading Spinner. While Fetching Data */}
          {context?.loading && (
            <EmptyDataContainer>
              <Spinner />
            </EmptyDataContainer>
          )}

          {/* When User Has'nt Search Anything */}
          {!context?.result && !context?.loading && (
            <EmptyDataContainer>
              <p>Try Checking Some Website</p>
            </EmptyDataContainer>
          )}

          {/* If There is Data and Data is Not loading show data */}
          {context?.result?.status === "success" &&
            context?.result?.data.issues.length &&
            !context?.loading && (
              <DisplayDetailsContainer>
                <p>
                  {context?.result?.data.documentTitle} :{" "}
                  <span>
                    {context?.result?.data.issues.length} Issues Found
                  </span>
                </p>

                {context?.result?.data.issues.map((el: Issue, i: number) => {
                  return (
                    <DetailsContainer
                      index={i}
                      message={el.message}
                      code={el.code}
                      context={el.context}
                      selector={el.selector}
                    />
                  );
                })}
                {/* <p>Try Checking Some Website</p> */}
              </DisplayDetailsContainer>
            )}
        </WidthContainer>
      </MainContainer>
    </ThemeProvider>
  );
};

export default Main;
