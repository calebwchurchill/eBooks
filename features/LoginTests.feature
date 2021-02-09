@login
Feature: Validate Login

Background:
    Given user is on the home page

@login
Scenario: when app opens validate logged in
	And user enter "<access>" code
	And user enter "<pin>"
	And user clicks login
	Then verify ebook

	Examples:
		|access     |pin  |
		|XXXXXXXXXX |XXXX |


	
#@login @teacher
#Scenario Outline: When teacher logs in
#	And user clicks the log in with clever button

#Examples:
#	|studentid|studentpword|
#	|44628|44628|


#@login @student
#Scenario Outline: When student logs in
#	And user clicks the log in with clever button

#	Examples:
#	|teacherid|teacherpword|
#	|418|418|

 	
