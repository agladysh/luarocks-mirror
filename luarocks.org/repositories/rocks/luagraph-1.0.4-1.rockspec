package="LuaGRAPH"
version="1.0.4-1"
source = {
   url = "http://luaforge.net/frs/download.php/4528/luagraph-1.0.4.tar.gz",
   md5 = "f2f71bcbabf243792e230665b1403f58"
}
description = {
   summary = "A binding to the graphviz graph library",
   detailed = [[
      LuaGRAPH is a binding to the graphviz library.
      It allows to create, manipulate, layout and render graphs
      using the Lua programming language. 
   ]],
   homepage = "http://luagraph.luaforge.net",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   GRAPHVIZ = {
      header = "graphviz/graph.h"
   }
}
build = {
   type = "make",
   variables = {
      INSTALL_ROOT = "$(PREFIX)",
      INSTALL_SHARE = "$(LUADIR)",
      INSTALL_LIB = "$(LIBDIR)",
      LUAINC = "$(LUA_INCDIR) -I$(GRAPHVIZ_INCDIR)",
      LDFLAGS = "$(LIBFLAG) -L$(GRAPHVIZ_LIBDIR)",
      GVROOT = "$(GRAPHVIZ_DIR)",
   }
}
