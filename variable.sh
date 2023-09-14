#!/bin/bash

# Path to liferay-qa-websites repo
    qaWebsites="$HOME/Desktop/liferay-qa-websites"

#Path to test results directory
    testResults=""$qaWebsites"/salesforce/test-results/LocalFile."

#Path to salesforce automation script
    salesforceScript="$HOME/Desktop/salesforce-automation-script"

#Paths to screenshot directories
    screenshotDirectOrderForm=""$salesforceScript"/Salesforce_Screenshots/SalesforceOrderForm"
    screenshotPartnerOrderForm=""$salesforceScript"/Salesforce_Screenshots/SalesforcePartnerOrderForm"
    screenshotPositionActionForm=""$salesforceScript"/Salesforce_Screenshots/SalesforcePositionActionForm"