@browselanes
Feature: Browse Lanes

Background:
    Given user is on the home page

@browselanes
Scenario: when app opens login and browse lanes
	And user enter "<access>" code
	And user enter "<pin>"
	And user clicks login
	And user opens catalog
	And user scrolls to category
	And user browses specific category
	Then user access book details

	Examples:
		|access     |pin  |
		|XXXXXXXXXX |XXXX |