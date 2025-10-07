SetBufferLimitForStandardOutput(2048);

if (os_type == os_macosx) {
  global.pid = ProcessExecute("chmod +x \"" + working_directory + "stockfish\"");
  FreeExecutedProcessStandardInput(global.pid);
  FreeExecutedProcessStandardOutput(global.pid);
  global.pid = ProcessExecute("xattr -d -r com.apple.quarantine \"" + working_directory + "stockfish\"");
  FreeExecutedProcessStandardInput(global.pid);
  FreeExecutedProcessStandardOutput(global.pid);
} else if (os_type == os_linux) {
  global.pid = ProcessExecute("chmod +x \"" + working_directory + "stockfish.x86_64\"");
  FreeExecutedProcessStandardInput(global.pid);
  FreeExecutedProcessStandardOutput(global.pid);
}
global.pid = ProcessExecuteAsync("\"" + working_directory + "stockfish" + ((os_type == os_windows) ? ".exe" : ((os_type == os_macosx) ? "" : ".x86_64")) + "\"");
alarm[0] = 300;
