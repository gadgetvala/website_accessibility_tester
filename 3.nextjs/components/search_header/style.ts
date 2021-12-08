import styled from "styled-components";

export const SearchContainer = styled.div`
  margin-bottom: 2rem;
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

  @media (max-width: 430px) {
    flex: 1;
    max-width: 200px;
  }
`;

export const SearchButton = styled.div`
  flex: 1;
  cursor: pointer;
  margin-left: 4rem;
  color: ${(props) => props.theme.primaryFontColor};
  font-weight: 600;
  padding: 0.9rem 1.2rem;
  font-size: 1.2rem;
  text-align: center;
  border-radius: 10px;
  background-color: ${(props) => props.theme.secondaryColor};

  @media (max-width: 430px) {
    margin-left: 1rem;
  }
`;
