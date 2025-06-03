

function love.load()
    Object = require "utils_classic"
    require "comp_cards"
    require "logic_game_engine"
    game_runner = GameRunner()
    tilemap = {
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
        {1, 0, 0, 1, 1, 1, 1, 0, 0, 1},
        {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
    }
end

function love.update(dt)
    r1.update(r1, dt)
end

function love.draw()
    r1.draw(r1)
end