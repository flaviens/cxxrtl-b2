mkdir -p cxxrtl_obj_dir
yosys -p 'read_verilog -sv wrapper_cxxrtl.sv top.sv; write_cxxrtl cxxrtl_obj_dir/cxxrtl.cpp'
g++ -g -O3 -std=c++14 -I`yosys-config --datdir`/include/backends/cxxrtl/runtime -I/data/flsolt/gits/simufuzz-meta/fuzzer/include -Icxxrtl_obj_dir tb_cxxrtl_base.cpp -o cxxrtl_obj_dir/Vtop
