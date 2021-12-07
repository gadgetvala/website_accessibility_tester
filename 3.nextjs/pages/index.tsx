import type { NextPage } from "next";
import Main from "../components/main/main";
import { GlobalProvider } from "../context/GlobalContext";

const Home: NextPage = () => {
  return (
    <GlobalProvider>
      <Main />
    </GlobalProvider>
  );
};

export default Home;
