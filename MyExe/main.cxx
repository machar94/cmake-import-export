// A simple program that outputs a file with the given name
#include <fstream>
#include <iostream>
#include <foo.h>

int main(int argc, char* argv[])
{
  std::ofstream outfile("main.cc");
  outfile << "#include <iostream>\n" << std::endl;
  outfile << "int main(int argc, char* argv[])" << std::endl;
  outfile << "{" << std::endl;
  outfile << "  std::cout << \"Hello World\" << std::endl; " << std::endl;
  outfile << "  return 0;" << std::endl;
  outfile << "}" << std::endl;
  outfile.close();

  print_hello();

  return 0;
}
