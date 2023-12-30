-- main.lua

-- 创建 WebSocket 服务器实例
local server = WebSocketServer()

-- 设置 WebSocket 处理函数
server:set_message_handler(function(connection, msg)
    print("Received message:", msg)
    -- 在这里处理接收到的消息，你可以调用 Lua 函数，修改 Lua 变量，等等
end)

-- 启动 WebSocket 服务器
server:run(9002)  -- 假设端口号为 9002

-- 这里不需要使用 while(true) 或其他的循环
