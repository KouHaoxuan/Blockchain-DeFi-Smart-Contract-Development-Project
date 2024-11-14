// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Introduce the necessary interface definitions, here it is assumed that the AggregatorV3Interface is already defined elsewhere
// It should contain the methods needed to access the Chainlink price feed, such as latestRoundData() and latestAnswer().
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Define the PriceFeed contract, which acts as an interface to a multi-asset price data source.
contract PriceFeed {
    // Define a series of variables of type AggregatorV3Interface to store the addresses of price feed contracts for different assets
    AggregatorV3Interface internal priceFeed;
    AggregatorV3Interface internal BTCpriceFeed;
    AggregatorV3Interface internal ETHpriceFeed;
    AggregatorV3Interface internal AUDpriceFeed;
    AggregatorV3Interface internal CSPXpriceFeed;
    AggregatorV3Interface internal CZKpriceFeed;
    AggregatorV3Interface internal DAIpriceFeed;
    AggregatorV3Interface internal EURpriceFeed;
    AggregatorV3Interface internal FORTHpriceFeed;
    AggregatorV3Interface internal GBPpriceFeed;
    AggregatorV3Interface internal GHOpriceFeed;
    AggregatorV3Interface internal LINKpriceFeed;
    AggregatorV3Interface internal SNXpriceFeed;
    AggregatorV3Interface internal USDCpriceFeed;

    // Constructor, called automatically when the contract is deployed to the blockchain
    constructor() {
    // Assign Chainlink price feed contract addresses to each asset's price feed variables
        // These are the addresses of publicly available price feed contracts on the Chainlink network.
    // BTC / USD
        BTCpriceFeed = AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
    // ETH / USD
        ETHpriceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    // AUD / USD
        AUDpriceFeed = AggregatorV3Interface(0xB0C712f98daE15264c8E26132BCC91C40aD4d5F9);
    // CSPX / USD
        CSPXpriceFeed = AggregatorV3Interface(0x4b531A318B0e44B549F3b2f824721b3D0d51930A);
    // CZK / USD
        CZKpriceFeed = AggregatorV3Interface(0xC32f0A9D70A34B9E7377C10FDAd88512596f61EA);
    // DAI / USD
        DAIpriceFeed = AggregatorV3Interface(0x14866185B1962B63C3Ea9E03Bc1da838bab34C19);
    // EUR / USD
        EURpriceFeed = AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910);
    // FORTH / USD
        FORTHpriceFeed = AggregatorV3Interface(0x070bF128E88A4520b3EfA65AB1e4Eb6F0F9E6632);
    // GBP / USD
        GBPpriceFeed = AggregatorV3Interface(0x91FAB41F5f3bE955963a986366edAcff1aaeaa83);
    // GHO / USD
        GHOpriceFeed = AggregatorV3Interface(0x635A86F9fdD16Ff09A0701C305D3a845F1758b8E);
    // LINK / USD
        LINKpriceFeed = AggregatorV3Interface(0xc59E3633BAAC79493d908e63626716e204A45EdF);
    // SNX / USD
        SNXpriceFeed = AggregatorV3Interface(0xc0F82A46033b8BdBA4Bb0B0e28Bc2006F64355bC);
    // USDC / USD
        USDCpriceFeed = AggregatorV3Interface(0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E);
    }

  function BTCPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = BTCpriceFeed.latestRoundData();
    // Get latest price of ETH 
    // for ETH / USD price is scaled up by 10 ** 8
    return answer;
  }
  function BTCHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = BTCpriceFeed.getRoundData(roundId);
        // Get History price of ETH 
        return answer;
  }
  function ETHPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = ETHpriceFeed.latestRoundData();
    
    return answer;
  }
  function ETHHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = ETHpriceFeed.getRoundData(roundId);
        return answer;
  }
  function AUDPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = AUDpriceFeed.latestRoundData();
    
    return answer;
  }
  function AUDHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = AUDpriceFeed.getRoundData(roundId);
        return answer;
  }
  function CSPXPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = CSPXpriceFeed.latestRoundData();
    
    return answer;
  }
  function CSPXHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = CSPXpriceFeed.getRoundData(roundId);
        return answer;
  }
  function CZKPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = CZKpriceFeed.latestRoundData();
    
    return answer;
  }
  function CZKHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = CZKpriceFeed.getRoundData(roundId);
        return answer;
  }
  function DAIPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = DAIpriceFeed.latestRoundData();
    
    return answer;
  }
  function DAIHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = DAIpriceFeed.getRoundData(roundId);
        return answer;
  }
  function EURPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = EURpriceFeed.latestRoundData();
    
    return answer;
  }
  function EURHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = EURpriceFeed.getRoundData(roundId);
        return answer;
  }
  function FORTHPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = FORTHpriceFeed.latestRoundData();
    
    return answer;
  }
  function FORTHHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = FORTHpriceFeed.getRoundData(roundId);
        return answer;
  }
  function GBPPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = GBPpriceFeed.latestRoundData();
    
    return answer;
  }
  function GBPHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = GBPpriceFeed.getRoundData(roundId);
        return answer;
  }
  function GHOPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = GHOpriceFeed.latestRoundData();
    
    return answer;
  }
  function GHOHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = GHOpriceFeed.getRoundData(roundId);
        return answer;
  }
  function LINKPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = LINKpriceFeed.latestRoundData();
    
    return answer;
  }
  function LINKHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = LINKpriceFeed.getRoundData(roundId);
        return answer;
  }
  function SNXPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = SNXpriceFeed.latestRoundData();
    
    return answer;
  }
  function SNXHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = SNXpriceFeed.getRoundData(roundId);
        return answer;
  }
  function USDCPrice() public view returns (int256) {
    (
        , 
        int256 answer, 
        , 
        , 
    ) = USDCpriceFeed.latestRoundData();
    
    return answer;
  }
  function USDCHistoricalData(uint80 roundId) public view returns (int256) {
        // prettier-ignore
        (
            /*uint80 roundID*/,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = USDCpriceFeed.getRoundData(roundId);
        return answer;
  }
}