require_relative '../lib/prolefeed'

prolefeed = Prolefeed.new

prolefeed.add_to_bookends("THESIS OF PAPER")
prolefeed.add_to_bookends("SUMMARY OF PAPER")

prolefeed.add_to_story("Paragraph #1")
prolefeed.add_to_story("Paragraph #2")
prolefeed.add_to_story("Paragraph #3")

final_story = prolefeed.generate.join("\r\n")

puts final_story

# Example of Generated Story:

#THESIS OF PAPER
# Paragraph #2
# Paragraph #1
# Paragraph #3
# SUMMARY OF PAPER

# Second Example:

# SUMMARY OF PAPER
# Paragraph #3
# Paragraph #1
# Paragraph #2
# THESIS OF PAPER