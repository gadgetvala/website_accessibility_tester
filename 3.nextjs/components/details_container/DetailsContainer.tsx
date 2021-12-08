import { WrapperContainer, DeepContainer } from "./style";

interface DetailsContainerProps {
  message: string;
  code: string;
  context: string;
  selector: string;
  index: number;
}

const DetailsContainer: React.FC<DetailsContainerProps> = ({
  message,
  code,
  context,
  selector,
  index,
}: DetailsContainerProps) => {
  return (
    <WrapperContainer key={index}>
      <p>{message}</p>
      <DeepContainer>
        <p>Code:</p>
        <p>{code}</p>
      </DeepContainer>
      <DeepContainer>
        <p>Context:</p>
        <p>{context}</p>
      </DeepContainer>
      <DeepContainer>
        <p>Selector:</p>
        <p>{selector}</p>
      </DeepContainer>
    </WrapperContainer>
  );
};

export default DetailsContainer;
