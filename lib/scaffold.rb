require('rubygems')

if ARGV.length < 1
	puts "scaffold <template-name> [...]"
	exit
end

templates_dir = File.dirname(__FILE__) + "/../templates"
template_name = ARGV[0]
if !File.exists?("#{templates_dir}/#{template_name}/template.rb")
	puts "Cannot find template named '#{template_name}'."
else
	require(templates_dir + "/#{template_name}/template.rb")
end
