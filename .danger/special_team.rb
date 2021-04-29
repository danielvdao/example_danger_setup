# frozen_string_literal: true

# Check that there are both app and test code changes for the main app
changed_spot_files = CHANGED_FILES.select { |path| path =~ /^(fixtures|app)/ }

if changed_app_files.any?
    fail 'Please provide a summary in the Pull Request description' if github.pr_body.length < 5

    fail 'Please add title header [SPOT-XXXX] to your PR' unless github.pr_title.include? '[SPOT]'

    fail 'Please add JIRA links to your PR' unless github.pr_body.include? 'JIRA'

    fail 'Please add WHAT to your PR' unless github.pr_body.include? 'WHAT'

    fail 'Please add WHY to your PR' unless github.pr_body.include? 'WHY'

    fail 'Please add HOW to your PR' unless github.pr_body.include? 'HOW'
end
