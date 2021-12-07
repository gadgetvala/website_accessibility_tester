import { ChangeEvent, useContext } from "react";
import { GlobalContext } from "../../context/GlobalContext";
import { ThemeTypeEnum } from "../../types/themeTypes";
import {
  HeaderContainer,
  CheckBoxWrapper,
  CheckBox,
  CheckBoxLabel,
  MainHeader,
  DarkModeContainer,
} from "./style";

const Header: React.FC = () => {
  const context = useContext(GlobalContext);

  const onToggleChanged = (e: ChangeEvent<HTMLInputElement>) => {
    e.target.checked
      ? context?.setCurrentTheme(ThemeTypeEnum.dark)
      : context?.setCurrentTheme(ThemeTypeEnum.light);
  };

  return (
    <HeaderContainer>
      <MainHeader>Website Accessibility Tester</MainHeader>
      <DarkModeContainer>
        <p>Dark Mode</p>
        <CheckBoxWrapper>
          <CheckBox id="checkbox" type="checkbox" onChange={onToggleChanged} />
          <CheckBoxLabel htmlFor="checkbox" />
        </CheckBoxWrapper>
      </DarkModeContainer>
    </HeaderContainer>
  );
};

export default Header;
