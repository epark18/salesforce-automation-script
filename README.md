# Salesforce Automation Script
This script is used to run tests and group screenshots relating Liferay Salesforce Order Forms by utilizing Bash and Poshi; an In-House language used for automation.
## Requirements
1. Operating System capable of running Bash.
2. Access to this repository: [liferay-qa-websites-ee](https://github.com/liferay/liferay-qa-websites-ee)
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
1. Update the variable.sh file to match file locations. These variables are paths to specific directories and were created in an effort to reduce redundancy when writing the script.
2. Since this is an ongoing project, users will be required to pull from both repositories regularly to be up-to-date on test coverage as they are submitted.

salesforce-automation-script
```
git pull origin main
```
liferay-qa-websites-ee
```
git pull origin master
```
## Usage
```bash
#Run all tests
bash setup.sh salesforce
```
The script will create a separate folder to store screenshots for every unique .testcase file. It will then run all tests and copy and rename a screenshot of the Order Form PDF and move them to the newly created screenshots folders.
## Contributing
Pull requests and suggestions for improvements are welcomed and encouraged!