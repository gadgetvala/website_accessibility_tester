import { SearchContainer, SearchButton, InputContainer } from "./style";

const SearchHeader: React.FC = () => {
  return (
    <SearchContainer>
      <InputContainer type="url" placeholder="Enter Website URL" />
      <SearchButton>
        <p>Search</p>
      </SearchButton>
    </SearchContainer>
  );
};

export default SearchHeader;
