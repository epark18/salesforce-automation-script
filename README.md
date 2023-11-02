# Salesforce Automation Script
This script is used to run tests and group screenshots relating Liferay Salesforce Order Forms by utilizing Bash and Poshi; an In-House language used for automation.
## Requirements
1. Operating System capable of running Bash.
2. Access to this repository: [liferay-qa-websites-ee](https://github.com/liferay/liferay-qa-websites-ee)
3. Google Chrome
## Installation
1. Clone the salesforce-automation-script repository to your local machine.
```
git clone https://github.com/epark18/salesforce-automation-script.git
```
2. Clone the liferay-qa-websites-ee repository.
```
git clone git@github.com:liferay/liferay-qa-websites-ee.git
```
Note: These commands are for SSH. If you prefer HTTPS, please use the appropriate link.
## Setup
1. Since this is an ongoing project, users will be required to pull from both repositories to be up-to-date on test coverage.

salesforce-automation-script
```
git pull origin main
```
liferay-qa-websites-ee
```
git pull origin master
```
2. The script path is set to *~/Desktop/salesforce-automation-script* by default. If saving in another location, please edit line 16 to user preferences. 
3. Download the [Chromium Snapshot](https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Linux_x64/972765/) (chrome-linux.zip).
4. Unzip the Chromium Snapshot at any location.
5. Create a poshi-ext.properties file in the salesforce directory of the liferay-qa-websites-ee repository. Add the line: 
```
browser.chrome.bin.file=/path/to/chromium/binary
```
## Usage
In salesforce-automation-script:
```
#Run Single Test
bash salesforce.sh testCase#testName

#Example
bash salesforce.sh SalesforceDirectOrderForm#CanGenerateDirectOrderForm
```
```
#Run All Tests in a Testcase
bash salesforce.sh testCase

#Example
bash salesforce.sh SalesforceDirectOrderForm
```
```
#Run Multiple Tests
bash salesforce.sh testCase#testName testCase#testName #testCase#testName

#Example
bash salesforce.sh SalesforceDirectOrderForm#CanGenerateDirectOrderForm SalesforceDirectOrderForm#CanGenerateDirectOrderFormWithSpecialTerms SalesforceQuote#CanGenerateQuote
```
```
#Run Multiple Testcase Files
bash salesforce.sh testCase testCase testCase

#Example
bash salesforce.sh SalesforceDirectOrderForm SalesforceQuote SalesforcePartnerOrderForm
```
The script will ask for the path to the user's salesforce directory from the liferay-qa-websites repository. It will then run tests and copy results to the same directory the script is located.
## Contributing
Pull requests and suggestions for improvements are welcomed and encouraged!
