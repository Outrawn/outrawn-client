local TitleScreen = require("TitleScreen")

function love.load()
    TitleScreen:load()
end

function love.update(dt)
    TitleScreen:update(dt)
end

function love.draw()
    TitleScreen:draw()
end

function love.mousepressed(x, y, button)
    TitleScreen:mousepressed(x, y, button)
end

function love.keypressed(key)
    TitleScreen:keypressed(key)
end

function love.textinput(text)
    TitleScreen:textinput(text)
end