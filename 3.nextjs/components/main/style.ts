import styled from "styled-components";

export const MainContainer = styled.div`
  background-color: ${(props) => props.theme.backgroundColor};
`;

export const WidthContainer = styled.div`
  max-width: 1000px;
  min-height: 95vh;
  margin: 0 auto;
  padding: 2rem 1rem 2rem 1rem;
`;

export const EmptyDataContainer = styled.div`
  min-height: 400px;
  max-height: 600px;
  display: flex;
  color: ${(props) => props.theme.primaryFontColor};
  font-weight: 500;
  font-size: 1.3rem;
  align-items: center;
  justify-content: center;
  margin: 0 auto;
  padding: 2rem 1rem 2rem 1rem;
`;

export const DisplayDetailsContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;

  & > p {
    font-weight: 600;
    letter-spacing: 1px;
    white-space: 1px;
    color: ${(props) => props.theme.primaryFontColor};
    margin-bottom: 1rem;

    & > span {
      color: ${(props) => props.theme.secondaryColor};
    }
  }
`;
