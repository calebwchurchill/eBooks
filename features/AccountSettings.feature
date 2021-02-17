@accountsettings
Feature: Account Settings

Background:
    Given user is on the home page

@browselanes
Scenario: when app opens login and browse lanes
	And user enter "<access>" code
	And user enter "<pin>"
	And user clicks login
	And user browses to settings
	And user logs out

	Examples:
		|access     |pin  |
		|XXXXXXXXXX |XXXX |