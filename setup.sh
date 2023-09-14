#!/bin/bash

#### Constants

# set current working directory
	cwd=$(pwd)

# Exceptions
	set -e

# Source Variables
	source variable.sh

#### Functions

salesforce()
{
# Clear screenshots directory
	echo -e "\e[44mDeleting old Salesforce Screenshots folder\e[0m"
	rm -rf $cwd/salesforce_screenshots

# Create new screenshots directory
	mkdir -p Salesforce_Screenshots/SalesforceOrderForm Salesforce_Screenshots/SalesforcePartnerOrderForm Salesforce_Screenshots/SalesforcePositionActionForm

# Run tests
    echo -e "Starting Salesforce tests\e[0m"
    salesforceOrderForm
    salesforcePartnerOrderForm
    salesforcePositionActionForm

    echo -e "\e[44mAll tests completed\e[0m"
}

salesforceOrderForm() 
{
# Run Tests
    echo -e "\e[44mRunning salesforceOrderForm.testcase\e[0m"
    cd "$qaWebsites"

	(source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderForm")
	cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderForm/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderForm.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithConsultingServicesDiscount")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithConsultingServicesDiscount/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithConsultingServicesDiscount.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithCustomizedProductDetails")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithCustomizedProductDetails/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithCustomizedProductDetails.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithFrenchLocalization")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithFrenchLocalization/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithFrenchLocalization.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithJapaneseLocalization")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithJapaneseLocalization/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithJapaneseLocalization.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithPortugueseLocalization")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithPortugueseLocalization/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithPortugueseLocalization.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithSpanishLocalization")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithSpanishLocalization/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithSpanishLocalization.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithSpecialTerms")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithSpecialTerms/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithSpecialTerms.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithSubscriptionServicesDiscount")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithSubscriptionServicesDiscount/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithSubscriptionServicesDiscount.jpg"

    # (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforceOrderForms#CanCreateDirectOrderFormWithTrainingServicesDiscount")
	# cp "$testResults"SalesforceOrderForms_CanCreateDirectOrderFormWithTrainingServicesDiscount/screenshots/screenshot0.jpg "$screenshotDirectOrderForm"
	# mv ""$screenshotDirectOrderForm"/screenshot0.jpg" ""$screenshotDirectOrderForm"/CanCreateDirectOrderFormWithTrainingServicesDiscount.jpg"
}

salesforcePartnerOrderForm()
{
# Run Tests
	echo -e "\e[44mRunning salesforcePartnerOrderForm.testcase\e[0m"
	cd "$qaWebsites"

	(source gradlew :salesforce:runPoshi -PposhiTestName="SalesforcePartnerOrderForm#CanGeneratePartnerOrderFormStandard")
	cp "$testResults"SalesforcePartnerOrderForm_CanGeneratePartnerOrderFormStandard/screenshots/screenshot0.jpg "$screenshotPartnerOrderForm"
	mv ""$screenshotPartnerOrderForm"/screenshot0.jpg" ""$screenshotPartnerOrderForm"/CanGeneratePartnerOrderFormStandard.jpg"
}

salesforcePositionActionForm() 
{
# Run Tests
	echo -e "\e[44mRunning salesforcePositionActionForm.testcase\e[0m"
	cd "$qaWebsites"

    (source gradlew :salesforce:runPoshi -PposhiTestName="SalesforcePositionActionForm#CanGeneratePositionActionForm")
	cp "$testResults"SalesforcePositionActionForm_CanGeneratePositionActionForm/screenshots/screenshot0.jpg "$screenshotPositionActionForm"
	mv ""$screenshotPositionActionForm"/screenshot0.jpg" ""$screenshotPositionActionForm"/CanGeneratePositionActionForm.jpg"
}

#### Check if no parameters are sent

if [ $# -eq 0 ]
  then
    usage
fi

#### Accepts Parameters
for setupParameters in "$@"
do
    $setupParameters
done
