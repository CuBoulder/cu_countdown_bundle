@cu_countdown_bundle
Feature: Class Notes Node Type

    When I login to a Web Express website
    As an authenticated user with the right permission
    I should be able to create a countdown in a basic page

    Scenario Outline: An authenticated user should be able to access the form for adding a basic page
        Given  I am logged in as a user with the <role> role
        When I go to "node/add/page"
        Then I should see <message>

        Examples:
            | role            | message             |
            | edit_my_content | "Access Denied"     |
            | edit_only       | "Access Denied"     |
            | content_editor  | "Create Basic page" |
            | site_owner      | "Create Basic page" |
            | administrator   | "Create Basic page" |
            | developer       | "Create Basic page" |

    Scenario: An anonymous user should not be able to access the form for adding a basic page
        When I am on "node/add/page"
        Then I should see "Access denied"