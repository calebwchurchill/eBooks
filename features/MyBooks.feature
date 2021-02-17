@mybooks
Feature: My Books

Background:
    Given user is on the home page

@browselanes
Scenario: when app opens login and browse lanes
	And user enter "<access>" code
	And user enter "<pin>"
	And user clicks login
	And user opens catalog
	And select book to check out
	And user checks out book
	And user reads book
	And user returns book

	Examples:
		|access     |pin  |
		|XXXXXXXXXX |XXXX |