# Example Danger Setup

Look at Pull Requests for example

Integrate with GH Workflows to do the following:
- Set up an Action
- Set up Dangerfile
- Splits up Dangerfile so that teams can own their own rules and demonstrate how teams can further enhance those rules
- Adds ignores so that teams only fire rules based on what is acceptable

Ideas:
- Does this need to be in CircleCI? Ideally it "should" be, but it seems like CircleCI has not so great support for bypassing failed builds 😞 and this could cause erroneous builds
- Suggestion => Use GH workflow and set up action to see how it will play with your team, then if it feels ideal, we can do something better like extend to CircleCI
