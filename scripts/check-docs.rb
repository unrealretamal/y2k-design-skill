#!/usr/bin/env ruby

files = Dir["**/*.md"] + Dir[".cursor/rules/*.mdc"]
failures = []

files.each do |file|
  content = File.read(file)

  content.scan(/\]\(([^)#]+)(?:#[^)]+)?\)/).flatten.each do |target|
    next if target.start_with?("http://", "https://", "mailto:")

    path = File.expand_path(target, File.dirname(file))
    failures << "#{file} -> #{target}" unless File.file?(path)
  end
end

skill = File.read("SKILL.md")
unless skill.start_with?("---\n") && skill.include?("\nname:") && skill.include?("\ndescription:")
  failures << "SKILL.md: missing required frontmatter"
end

cursor = File.read(".cursor/rules/y2k-design-agent.mdc")
unless cursor.start_with?("---\n") && cursor.include?("\ndescription:") && cursor.include?("\nalwaysApply:")
  failures << ".cursor/rules/y2k-design-agent.mdc: missing required metadata"
end

abort "docs-check failed:\n#{failures.join("\n")}" unless failures.empty?

puts "docs-check passed: #{files.length} files"
