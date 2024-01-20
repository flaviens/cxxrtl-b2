# Bug in the preparation of the simulation of some stateful cells

How to reproduce:
```bash
bash run.sh
```

Yosys version: `Yosys 0.37+21 (git sha1 8649e3066, clang 10.0.0-4ubuntu1 -fPIC -Os)`

Instead of successful compilation, we get the following error:
```
cxxrtl_obj_dir/cxxrtl.cpp:118:90: error: ‘struct cxxrtl::slice_expr<cxxrtl::value<2>, 0, 0>’ has no member named ‘update’
  118 |  p_top__i_2e_celloutsig__0z.next.slice<0>() = p_top__i_2e_celloutsig__0z.next.slice<0>().update(value<1>{0x1u}, (p_top__i_2e_clkin__data.slice<96>().val() ? value<1>{0u} : (p_top__i_2e_clkin__data.slice<64>().val() ? value<1>{0x1u} : value<1>{0u})));
      |                                                                                          ^~~~~~
cxxrtl_obj_dir/cxxrtl.cpp:119:90: error: ‘struct cxxrtl::slice_expr<cxxrtl::value<2>, 0, 0>’ has no member named ‘update’
  119 |  p_top__i_2e_celloutsig__0z.next.slice<0>() = p_top__i_2e_celloutsig__0z.next.slice<0>().update(value<1>{0u}, (p_top__i_2e_clkin__data.slice<96>().val() ? value<1>{0x1u} : value<1>{0u}));
```
