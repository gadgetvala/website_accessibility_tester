import { createGlobalStyle } from "styled-components";

interface ThemeProps {
  backgroundColor: string;
  primaryColor: string;
  secondaryColor: string;
  primaryFontColor: string;
  borderColor: string;
}

export const lightTheme: ThemeProps = {
  backgroundColor: "#ffffff",
  primaryColor: "#f0f5f9",
  secondaryColor: "#784ffe",
  primaryFontColor: "#002237",
  borderColor: "#202a30",
};

export const darkTheme: ThemeProps = {
  backgroundColor: "#141a1e",
  primaryColor: "#202a30",
  secondaryColor: "#784ffe",
  primaryFontColor: "#ffffff",
  borderColor: "#ffffff",
};

export const GlobalStyles = createGlobalStyle`
    @font-face {
        font-family: "Dosis";
        src: url("/fonts/Dosis.ttf");
    }

    *,
    *::after,
    *::before{
        padding: 0;
        margin: 0;
    }
    box-sizing: border-box;

    body {
      font-family: "Dosis";
    }
`;
