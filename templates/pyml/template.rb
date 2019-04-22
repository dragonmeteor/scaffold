require(File.dirname(__FILE__) + "/../../lib/file_robot")

if ARGV.length < 2
	puts "scaffold pyml <directory>"
	exit
end

files = [
	"src/run.py",
	"src/tasks.py",
	"src/data/__init__.py",
	"src/data/tasks.py",
	"src/pytasuku/__init__.py",
	"src/pytasuku/task.py",
	"src/pytasuku/util.py",
	"src/pytasuku/workspace.py",
	"notes/index.html",
	"notes/js/bootstrap.js",
	"notes/js/bootstrap.min.js",
	"notes/js/npm.js",
	"notes/fonts/glyphicons-halflings-regular.eot",
	"notes/fonts/glyphicons-halflings-regular.svg",
	"notes/fonts/glyphicons-halflings-regular.ttf",
	"notes/fonts/glyphicons-halflings-regular.woff",
	"notes/fonts/glyphicons-halflings-regular.woff2",
	"notes/css/bootstrap.css",
	"notes/css/bootstrap.css.map",	
	"notes/css/bootstrap.min.css",
	"notes/css/bootstrap.min.css.map",
	"notes/css/bootstrap-theme.css",
	"notes/css/bootstrap-theme.css.map",
	"notes/css/bootstrap-theme.min.css",
	"notes/css/bootstrap-theme.min.css.map",
	"notes/css/theme.css",
]

dest_dir = ARGV[1]

files.each do |filename|
	FileRobot.copy_file(
		File.dirname(__FILE__) + "/" + filename, 
		"#{dest_dir}/#{filename}")
end