import axios, { AxiosResponse } from "axios";
import { MouseEvent, useContext, useState } from "react";
import { toast } from "react-toastify";
import { GlobalContext } from "../../context/GlobalContext";
import { ApiResponse } from "../../types/api_res_types";
import { ThemeTypeEnum } from "../../types/themeTypes";
import { SearchContainer, SearchButton, InputContainer } from "./style";

const SearchHeader: React.FC = () => {
  const [text, setText] = useState<string>("");
  const context = useContext(GlobalContext);

  const fetchDataFromApi = async (
    _: MouseEvent<HTMLDivElement>
  ): Promise<void> => {
    if (text.trim().length === 0) return;
    try {
      context?.setLoading(true);
      context?.setResult(null);

      const data: AxiosResponse<ApiResponse> = await axios.get(
        `http://localhost:4000/api/v1/pa11y?website=${text}`
      );

      context?.setResult(data.data);
    } catch (err) {
      toast.error("Something Went Wrong", {
        position: "top-right",
        autoClose: 5000,
        hideProgressBar: false,
        closeOnClick: true,
        pauseOnHover: false,
        draggable: true,
        progress: undefined,
        theme: context?.currentTheme === ThemeTypeEnum.light ? "light" : "dark",
      });
    } finally {
      context?.setLoading(false);
    }
  };

  return (
    <SearchContainer>
      <InputContainer
        type="url"
        placeholder="Enter Website URL"
        value={text}
        onChange={(e) => setText(e.target.value)}
      />
      <SearchButton onClick={fetchDataFromApi}>
        <p>Search</p>
      </SearchButton>
    </SearchContainer>
  );
};

export default SearchHeader;
