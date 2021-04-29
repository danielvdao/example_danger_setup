if github.pr_body.length < 5
  fail "Please provide a summary in the Pull Request description"
end

unless github.pr_title.include? "[SPOT]"
  fail "Please add title header [SPOT-XXXX] to your PR"
end

unless github.pr_body.include? "JIRA"
  fail "Please add JIRA links to your PR"
end

unless github.pr_body.include? "WHAT"
  fail "Please add WHAT to your PR"
end

unless github.pr_body.include? "WHY"
  fail "Please add WHY to your PR"
end

unless github.pr_body.include? "HOW"
  fail "Please add HOW to your PR"
end
