-- main.lua

-- ���� WebSocket ������ʵ��
local server = WebSocketServer()

-- ���� WebSocket ������
server:set_message_handler(function(connection, msg)
    print("Received message:", msg)
    -- �����ﴦ����յ�����Ϣ������Ե��� Lua �������޸� Lua �������ȵ�
end)

-- ���� WebSocket ������
server:run(9002)  -- ����˿ں�Ϊ 9002

-- ���ﲻ��Ҫʹ�� while(true) ��������ѭ��
