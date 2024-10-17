local OutrawnUI = require("OutrawnUI")

local TitleScreen = {}

function TitleScreen:load()
    love.graphics.setBackgroundColor(0.1, 0.1, 0.2)

    love.keyboard.setKeyRepeat(true)

    self.usernameInput = OutrawnUI.InputText.new(love.graphics.getWidth() / 2 - 150, love.graphics.getHeight() / 2 - 50, 300, 40, "Username")
    self.passwordInput = OutrawnUI.InputText.new(love.graphics.getWidth() / 2 - 150, love.graphics.getHeight() / 2 + 10, 300, 40, "Password", "password")

    self.loginButton = OutrawnUI.Button.new(love.graphics.getWidth() / 2 - 150, love.graphics.getHeight() / 2 + 70, 300, 50, "Log In", function() self:login() end)
end

function TitleScreen:update(dt)
end

function TitleScreen:draw()
    love.graphics.setColor(1, 1, 1, 1)

    local titleFont = love.graphics.newFont(48)  
    love.graphics.setFont(titleFont)
    local titleText = "Outwran"
    local titleX = love.graphics.getWidth() / 2
    local titleY = love.graphics.getHeight() / 4
    local titleWidth = titleFont:getWidth(titleText)
    love.graphics.print(titleText, titleX - titleWidth / 2, titleY)

    local defaultFont = love.graphics.newFont(14) 
    love.graphics.setFont(defaultFont)

    self.usernameInput:draw()
    self.passwordInput:draw()
    self.loginButton:draw()
end


function TitleScreen:mousepressed(x, y, button)
    if self.loginButton:mousepressed(x, y) then return end
    self.usernameInput:mousepressed(x, y)
    self.passwordInput:mousepressed(x, y)
end

function TitleScreen:keypressed(key)
    self.usernameInput:keypressed(key)
    self.passwordInput:keypressed(key)
end

function TitleScreen:textinput(text)
    self.usernameInput:textinput(text)
    self.passwordInput:textinput(text)
end

function TitleScreen:login()
    local username = self.usernameInput.text
    local password = self.passwordInput.text

    print("Login attempted with username: " .. username .. " and password: " .. password)

    self.usernameInput.text = ""
    self.passwordInput.text = ""
end

return TitleScreen
