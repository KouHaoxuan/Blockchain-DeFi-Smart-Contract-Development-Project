Blockchain DeFi Smart Contract Development Project
Project Introduction
This project developed a system utilizing Solidity smart contracts and a front-end user interface to fulfill the growing demand for transparent, reliable, and real-time cryptocurrency price tracking and comparison among users, driven by the rise of blockchain technology and decentralized finance (DeFi). This README serves as a guide to understand and utilize the project components, which include a website for real-time cryptocurrency price queries and an automated smart contract vulnerability detection program.

Project Components
Real-Time Cryptocurrency Price Website
Technology Stack: HTML, CSS, JavaScript, and Solidity smart contracts.
Features:
Real-Time Price Query: Provides users with the ability to retrieve current prices of multiple cryptocurrencies, such as BTC, ETH, etc.
Historical Price Comparison: Allows users to query and compare historical price data with current prices.
Price Fluctuation Alerts: Displays price changes intuitively through a front-end interface, highlighting increases in green and decreases in red.
User Interface: Designed with a user-friendly interactive experience, featuring a one-click refresh button and a data table that displays cryptocurrency names, current prices, historical prices, and price change percentages.
Automated Smart Contract Vulnerability Detection Program
Tool Used: Slither, a Python-based static analysis tool for Solidity code.
Functionality: Conducts a comprehensive security assessment of Solidity smart contracts to identify potential vulnerabilities.
Detected Vulnerabilities:
Integer Overflow and Underflow: Occurs when arithmetic operations exceed the maximum or fall below the minimum allowable value for a data type, leading to unpredictable contract behavior.
Reentrancy Attacks: Potentially allowing unauthorized external interactions and modifications to the contract state.
Default Function Visibility: Occurs when functions are not explicitly defined as public or private, making them public by default.
Unprotected Selfdestruct Calls: Enables attackers to potentially destroy the contract and withdraw all remaining funds.
User Interface: Provides a dedicated web interface that displays detailed descriptions of each detected vulnerability, including severity ratings and suggested remediation measures.
Getting Started
To utilize the project components, follow these steps:

Clone the Repository: Use your preferred method to clone the project repository from GitHub.
Set Up the Environment: Ensure you have the necessary tools and libraries installed, such as a web browser for the front-end interface and Python for the vulnerability detection program.
Run the Vulnerability Detection Program: Follow the instructions provided in the repository to run the Slither tool on your Solidity smart contracts.
Access the Website: Open the provided HTML file in a web browser to access the real-time cryptocurrency price website.
Contributions
Feel free to contribute to this project by forking the repository, making changes, and submitting pull requests. Your contributions are welcome and greatly appreciated.
