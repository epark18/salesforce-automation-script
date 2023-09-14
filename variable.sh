#!/bin/bash

# Path to liferay-qa-websites repo
    qaWebsites="$HOME/${path_to_liferay_qa_websites_repo}"

#Path to test results directory
    testResults=""$qaWebsites"/salesforce/test-results/LocalFile."

#Path to salesforce automation script
    salesforceScript="$HOME/${path_to_salesforce_automation_script}"

#Paths to screenshot directories
    screenshotDirectOrderForm=""$salesforceScript"/Salesforce_Screenshots/SalesforceOrderForm"
    screenshotPartnerOrderForm=""$salesforceScript"/Salesforce_Screenshots/SalesforcePartnerOrderForm"
    screenshotPositionActionForm=""$salesforceScript"/Salesforce_Screenshots/SalesforcePositionActionForm"