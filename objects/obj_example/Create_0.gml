SetBufferLimitForStandardOutput(2048);
if (os_type == os_macosx) {
  global.pid = ProcessExecute("chmod +x \"" + working_directory + "stockfish.app\"");
  FreeExecutedProcessStandardInput(global.pid);
  FreeExecutedProcessStandardOutput(global.pid);
} else if (os_type == os_linux) {
  global.pid = ProcessExecute("chmod +x \"" + working_directory + "stockfish.elf\"");
  FreeExecutedProcessStandardInput(global.pid);
  FreeExecutedProcessStandardOutput(global.pid);
}
global.pid = ProcessExecuteAsync("\"" + working_directory + "stockfish" + ((os_type == os_windows) ? ".exe" : ((os_type == os_macosx) ? ".app" : ".elf")) + "\"");
alarm[0] = 300;