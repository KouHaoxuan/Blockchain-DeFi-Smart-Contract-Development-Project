**README.md**

---

# Blockchain DeFi Smart Contract Development Project

## Project Introduction

This project focuses on the development of a system that leverages blockchain technology, particularly smart contracts written in Solidity, to provide real-time cryptocurrency price queries and historical price comparisons. The system also includes a front-end user interface for intuitive interaction and an automated vulnerability detection tool to ensure the security of the smart contracts.

## Project Background

With the rise of decentralized finance (DeFi), users are increasingly demanding transparent, reliable, and real-time cryptocurrency price tracking and comparison. Traditional methods often rely on third-party sources, leading to a lack of transparency and trustworthiness. This project aims to address these issues by developing a system that retrieves and displays cryptocurrency prices in a secure and efficient manner.

## Project Features

1. **Real-Time Price Query**: The system allows users to retrieve the current prices of multiple cryptocurrencies, such as BTC and ETH, in real-time.
2. **Historical Price Query and Comparison**: Users can query historical price data based on a specified round ID and compare it with current prices to analyze trends and percentage changes.
3. **User-Friendly Interface**: The front-end interface, built using HTML and JavaScript, provides an intuitive experience for users to easily refresh cryptocurrency prices and view historical price comparisons.
4. **Automated Vulnerability Detection**: The project integrates an automated vulnerability detection tool, primarily using the Python-based Slither package, to ensure the security and robustness of the smart contracts.

## Implementation Details

### Solidity Smart Contract Implementation

The core of the project is the smart contract developed using Solidity. The contract defines interfaces for retrieving real-time and historical cryptocurrency prices. Key functions include `BTCPrice()`, `ETHPrice()`, and `BTCHistoricalData(uint80 roundId)`.

### Front-End Development

The front-end interface is built using HTML, CSS, and JavaScript. It includes a "Update" button for users to refresh price data, a data table to display cryptocurrency names, current prices, historical prices, and price change percentages, and color-coded alerts to indicate price increases (green) and decreases (red).

### Automated Vulnerability Detection

The automated vulnerability detection tool uses the Slither package to conduct a comprehensive security assessment of the Solidity smart contracts. The tool identifies potential vulnerabilities, such as integer overflow/underflow, reentrancy attacks, uninitialized storage pointers, default function visibility, unauthorized access control, unprotected `selfdestruct` calls, and arithmetic precision errors. The detection results are displayed through a dedicated web interface, providing detailed descriptions, severity ratings, and suggested remediation measures.

## Project Outcomes

The project successfully achieved its objectives, including real-time cryptocurrency price queries, historical data comparisons, a user-friendly interface, and enhanced system security. An example of the data table displayed in the front-end interface is provided to illustrate the functionality.

## Future Improvements

There are several areas for further improvement, including:

1. **Extend Cryptocurrency Support**: Adding support for more types of cryptocurrencies to enhance the system's diversity.
2. **Add User Customization Features**: Allowing users to customize which cryptocurrencies they are interested in and set alert conditions for price changes.
3. **Optimize Front-End User Experience**: Improving the user experience by adding data visualization features, such as price trend charts.

## Conclusion

This project demonstrates the potential application of blockchain technology in the decentralized finance field. By leveraging Solidity smart contracts and developing a user-friendly front-end interface, the system effectively enhances the transparency and real-time nature of cryptocurrency prices. Additionally, the integration of automated vulnerability detection tools ensures the security and robustness of the system. The project lays a solid foundation for future feature expansion and user experience optimization.
