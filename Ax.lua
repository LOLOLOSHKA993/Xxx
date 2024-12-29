-- Найти ScreenGui
local gui = script.Parent
local frame = gui:WaitForChild("Frame")

-- Кнопка для открытия и закрытия меню
local toggleButton = gui:WaitForChild("B")

-- Кнопки меню
local button1 = frame:WaitForChild("O") -- Первая кнопка
local button2 = frame:WaitForChild("p") -- Вторая кнопка

-- Скрыть меню по умолчанию
frame.Visible = false

-- Функция открытия/закрытия меню
B.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
end)

-- Пример функций для кнопок
button1.MouseButton1Click:Connect(function()
    print("Код 1 активирован!")
   -- Найти персонажа игрока
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Ждём появления Humanoid
local humanoid = character:WaitForChild("Humanoid")

-- Для R6: Найти правую руку и её сустав
local rightArm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightHand")
local rightShoulder = character:FindFirstChild("Right Shoulder") or character:FindFirstChild("RightUpperArm")

-- Проверяем R6 или R15
if rightShoulder and rightArm then
    -- Поднимаем правую руку на 110 градусов
    local angle = math.rad(110) -- Перевод в радианы
    if rightShoulder:IsA("Motor6D") then
        rightShoulder.C0 = rightShoulder.C0 * CFrame.Angles(-angle, 0, 0)
        print("Рука поднята на 110 градусов!")
    end
else
    warn("Не удалось найти правую руку или плечо.")
end
end)

button2.MouseButton1Click:Connect(function()
    print("Код 2 активирован!")
    -- Здесь можно добавить выполнение другого кода
end)
