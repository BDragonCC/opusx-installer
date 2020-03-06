
term.clear()
term.setCursorPos(1,1)
function input()
	term.write("OpusX Installer, Type install to install, type exit to exit.")
	inputt = read()
end
input()
if inputt == "install" then
	shell.run("git https://github.com/BDragonCC/OpusX.git")
	fs.move("OpusX/*", "/*") then
	if fs.exists("startup.lua")
		print("Rebooting in 3 seconds")
		sleep(3)
		fs.remove("git")
		fs.remove("readme.md")
		fs.remove("installer.lua")
		os.reboot()
	else
		print("An unknown error has occured, is GitHub down?")
		error("Unknown")
	end
elseif inputt == "exit" then
	error("Exited by user.", 0)
else
	input()
end


