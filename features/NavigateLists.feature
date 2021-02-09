@navlists
Feature: Navigate Lists

Background:
    Given user is on the home page

@navlists
Scenario: when app opens login and navigate lists
	And user enter "<access>" code
	And user enter "<pin>"
	And user clicks login
	And user opens catalog
	Then open list view

	Examples:
		|access     |pin  |
		|XXXXXXXXXX |XXXX |