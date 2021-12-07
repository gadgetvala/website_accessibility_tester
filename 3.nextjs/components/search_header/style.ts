import styled from "styled-components";

export const SearchContainer = styled.div`
  margin: 0 auto;
  /* background-color: ${(props) => props.theme.backgroundColor}; */
  display: flex;
  justify-content: space-between;
  align-items: center;
`;

export const InputContainer = styled.input`
  flex: 7;
  color: ${(props) => props.theme.primaryFontColor};
  letter-spacing: 1px;
  word-spacing: 1px;
  font-weight: 600;
  padding: 0.9rem 1.5rem;
  border-radius: 10px;
  font-size: 1.2rem;
  border: 1px solid ${(props) => props.theme.borderColor};
  background-color: ${(props) => props.theme.primaryColor};
`;

export const SearchButton = styled.div`
  flex: 1;
  margin-left: 4rem;
  color: ${(props) => props.theme.primaryFontColor};
  font-weight: 600;
  padding: 0.9rem 1.2rem;
  font-size: 1.2rem;
  text-align: center;
  border-radius: 10px;
  background-color: ${(props) => props.theme.secondaryColor};
`;
