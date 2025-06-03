local Queue = {}
Queue.__index = Queue

-- 构造函数
function Queue.new()
    return setmetatable({
        _items = {},
        _head = 1,
        _tail = 1,
        _capacity = 0  -- 实际分配容量
    }, Queue)
end

function Queue:enqueue(str)
    if self._tail > self._capacity then
        -- 扩容逻辑（按需实现）
        table.insert(self._items, str)
        self._capacity = self._capacity + 1
    else
        self._items[self._tail] = str
    end
    self._tail = self._tail + 1
end

-- 出队操作
function Queue:dequeue()
    if self._head >= self._tail then
        return nil  -- 队列为空
    end
    local str = self._items[self._head]
    self._items[self._head] = nil  -- 释放内存（可选）
    self._head = self._head + 1
    return str
end

-- 获取队列长度
function Queue:size()
    return self._tail - self._head
end

-- 检查队列是否为空
function Queue:isEmpty()
    return self._head >= self._tail
end