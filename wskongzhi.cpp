#include <lua.hpp>
#include <LuaBridge/LuaBridge.h>
#include <websocketpp/config/asio_no_tls.hpp>
#include <websocketpp/server.hpp>

using server = websocketpp::server<websocketpp::config::asio>;

int main() {
    // 初始化 Lua 环境
    lua_State* L = luaL_newstate();
    luaL_openlibs(L);

    // 在 Lua 中注册 WebSocket 的相关函数
    luabridge::getGlobalNamespace(L)
        .beginClass<server>("WebSocketServer")
        .addFunction("set_message_handler", &server::set_message_handler)
        .addFunction("run", &server::run)
        .endClass();

    // 执行 Lua 脚本
    luaL_dofile(L, "main.lua");

    // 关闭 Lua 环境
    lua_close(L);

    return 0;
}
