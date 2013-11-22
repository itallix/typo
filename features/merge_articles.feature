Feature: Merge Articles
As a blog administrator
In order to merge two articles together
I want to be able to do this via a form field in the edit article page

Background:
Given the blog is set up
And I am logged into the admin panel

Scenario: Successfully merge two articles
Given I am on the edit page for "non-admin article"
Then I should see "Merge Articles"
When I fill in "merge_with" with "1"
And I press "Merge"
Then I should be on the edit page for "non-admin article"
And I should see "Welcome to Typo. This is your first article."
