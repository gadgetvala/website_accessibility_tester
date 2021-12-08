import styled from "styled-components";

export const WrapperContainer = styled.div`
  padding: 1rem;
  color: ${(props) => props.theme.primaryFontColor};
  margin-bottom: 2rem;
  border-radius: 10px;
  background-color: ${(props) => props.theme.primaryColor};
  font-size: 1.11rem;
  box-shadow: rgba(0, 0, 0, 0.09) 0px 3px 12px;
  & > p {
    margin-bottom: 0.8rem;
    font-weight: 600;
  }
`;

export const DeepContainer = styled.div`
  color: ${(props) => props.theme.primaryFontColor};
  margin-bottom: 0.8rem;
  & :first-child {
    font-weight: 600;
    color: ${(props) => props.theme.secondaryColor};
  }
`;
