global.output = ExecutedProcessReadFromStandardOutput(global.pid);
if (string_pos("bestmove", global.output) != 0) {
  FreeExecutedProcessStandardOutput(global.pid);
  FreeExecutedProcessStandardInput(global.pid);
  global.output = string_copy(global.output, string_pos("bestmove", global.output), 30);
  show_message(global.output);
  game_end();
}
