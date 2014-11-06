require(File.dirname(__FILE__) + "/../../lib/file_robot")

if ARGV.length < 2
	puts "scaffold tex <directory>"
	exit
end

dest_dir = ARGV[1]
tex_name = dest_dir

FileRobot.create_dir(dest_dir)

FileRobot.create_file_from_template("#{dest_dir}/Rakefile", 
	File.dirname(__FILE__) + "/Rakefile.erb", 
	binding)

FileRobot.create_file_from_template("#{dest_dir}/#{tex_name}.tex", 
	File.dirname(__FILE__) + "/tex.erb", 
	binding)

FileRobot.create_file("#{dest_dir}/#{tex_name}.bib")