@bookdetails
Feature: Book Details

Background:
    Given user is on the home page

@browselanes
Scenario: when app opens login and browse lanes
	And user enter "<access>" code
	And user enter "<pin>"
	And user clicks login
	And user opens catalog
	And select book to check out
	And user scrolls to description
	And user views related books
	And user checks out book
	And user cancels download

	Examples:
		|access     |pin  |
		|XXXXXXXXXX |XXXX |