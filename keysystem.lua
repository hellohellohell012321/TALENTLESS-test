--- loadstring -> main.lua
-- main.lua -> if _G.keydone then do the rest of the script. else load keysystem.lua
-- keysystem.lua -> when key done, main.lua will stop yielding and _G.keydone = true

local translator = loadstring(game:HttpGet("https://pastefy.app/Sdwr6VSZ/raw", true))() -- replace with real translator

local function translateText(text) -- this function will also be called from the other sub scripts
    return translator:translateText(text)
end

local function playSound(soundId, loudness)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1
    sound:Play()
end

local NotificationLibrary = loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS@main/notif_lib.lua"))()

local ScreenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local uic1 = Instance.new("UICorner")
local closeButton = Instance.new("TextButton")
local infoButton = Instance.new("TextButton")
local changeLanguageButton = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local uic2 = Instance.new("UICorner")
local copykeylink = Instance.new("TextButton")
local keytitle = Instance.new("TextLabel")
local keyinsert = Instance.new("TextBox")
local seperator = Instance.new("Frame")
local step1 = Instance.new("TextLabel")
local instructions1 = Instance.new("TextLabel")
local seperator_2 = Instance.new("Frame")
local step2 = Instance.new("TextLabel")
local instructions2 = Instance.new("TextLabel")
local seperator_3 = Instance.new("Frame")
local step3 = Instance.new("TextLabel")
local instructions3 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local submit = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Name = "frame"
frame.Parent = ScreenGui
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 475, 0, 272)

uic1.CornerRadius = UDim.new(0, 4)
uic1.Name = "uic1"
uic1.Parent = frame

translator:requestLang(frame, "first") -- request it using good frame size as anchor

frame.Size = UDim2.new(0, 475, 0, 332) -- restore to proper size and proceed

closeButton.Name = "closeButton"
closeButton.Parent = frame
closeButton.BackgroundTransparency = 1.000
closeButton.LayoutOrder = 1
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.ZIndex = 5
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextScaled = true
closeButton.TextWrapped = true

infoButton.Name = "infoButton"
infoButton.Parent = frame
infoButton.BackgroundTransparency = 1.000
infoButton.LayoutOrder = 2
infoButton.Position = UDim2.new(0, 5, 0, 5)
infoButton.Size = UDim2.new(0, 30, 0, 30)
infoButton.ZIndex = 5
infoButton.Font = Enum.Font.SourceSansBold
infoButton.Text = "?"
infoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
infoButton.TextScaled = true
infoButton.TextWrapped = true

changeLanguageButton.Name = "changeLanguageButton"
changeLanguageButton.Parent = frame
changeLanguageButton.BackgroundTransparency = 1.000
changeLanguageButton.LayoutOrder = 2
changeLanguageButton.Position = UDim2.new(0, 33, 0, 10)
changeLanguageButton.Size = UDim2.new(0, 22, 0, 22)
changeLanguageButton.ZIndex = 5
changeLanguageButton.Font = Enum.Font.SourceSansBold
changeLanguageButton.Text = "🌐"
changeLanguageButton.TextColor3 = Color3.fromRGB(255, 255, 255)
changeLanguageButton.TextScaled = true
changeLanguageButton.TextWrapped = true

title.Name = "title"
title.Parent = frame
title.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
title.Size = UDim2.new(1, 0, 0, 50)
title.ZIndex = 2
title.Font = Enum.Font.SourceSansBold
title.Text = "TALENTLESS"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 46.000

uic2.CornerRadius = UDim.new(0, 4)
uic2.Name = "uic2"
uic2.Parent = title

copykeylink.Name = "copykeylink"
copykeylink.Parent = frame
copykeylink.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
copykeylink.BorderColor3 = Color3.fromRGB(85, 170, 85)
copykeylink.BorderSizePixel = 4
copykeylink.Position = UDim2.new(0.614736855, 0, 0.386070162, 0)
copykeylink.Size = UDim2.new(0, 161, 0, 27)
copykeylink.Font = Enum.Font.SourceSansBold
copykeylink.Text = translateText("copykey")
copykeylink.TextColor3 = Color3.fromRGB(255, 255, 255)
copykeylink.TextScaled = true
copykeylink.TextSize = 14.000
copykeylink.TextWrapped = true

keytitle.Name = "keytitle"
keytitle.Parent = frame
keytitle.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
keytitle.BackgroundTransparency = 1.000
keytitle.Position = UDim2.new(0.0694736838, 0, 0.169791162, 0)
keytitle.Size = UDim2.new(0.858947396, 0, -0.0230776202, 50)
keytitle.ZIndex = 2
keytitle.Font = Enum.Font.SourceSansBold
keytitle.Text = translateText("keytitle")
keytitle.TextColor3 = Color3.fromRGB(255, 255, 255)
keytitle.TextScaled = true
keytitle.TextSize = 22.000
keytitle.TextWrapped = true

keyinsert.Name = "keyinsert"
keyinsert.Parent = frame
keyinsert.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
keyinsert.BorderColor3 = Color3.fromRGB(85, 170, 85)
keyinsert.BorderSizePixel = 0
keyinsert.LayoutOrder = 2
keyinsert.Position = UDim2.new(0.600000024, 0, 0.718822598, 0)
keyinsert.Size = UDim2.new(0, 168, 0, 37)
keyinsert.Font = Enum.Font.SourceSansBold
keyinsert.PlaceholderText = translateText("keyinsert")
keyinsert.Text = ""
keyinsert.TextColor3 = Color3.fromRGB(255, 255, 255)
keyinsert.TextScaled = true
keyinsert.TextSize = 14.000
keyinsert.TextWrapped = true

seperator.Name = "seperator"
seperator.Parent = frame
seperator.BackgroundColor3 = Color3.fromRGB(64, 68, 90)
seperator.BorderColor3 = Color3.fromRGB(0, 0, 0)
seperator.BorderSizePixel = 0
seperator.Position = UDim2.new(0.0357894748, 0, 0.318390071, 0)
seperator.Size = UDim2.new(0, 440, 0, 4)

step1.Name = "step1"
step1.Parent = frame
step1.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
step1.BorderColor3 = Color3.fromRGB(64, 68, 90)
step1.BorderSizePixel = 3
step1.Position = UDim2.new(0.0442105271, 0, 0.379282951, 0)
step1.Size = UDim2.new(0.178796768, 0, -0.0687216967, 50)
step1.ZIndex = 2
step1.Font = Enum.Font.SourceSansBold
step1.Text = translateText("step1")
step1.TextColor3 = Color3.fromRGB(255, 255, 255)
step1.TextScaled = true
step1.TextSize = 22.000
step1.TextWrapped = true

instructions1.Name = "instructions1"
instructions1.Parent = frame
instructions1.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
instructions1.BackgroundTransparency = 1.000
instructions1.Position = UDim2.new(0.250526309, 0, 0.356847107, 0)
instructions1.Size = UDim2.new(0.33684212, 0, -0.0238499269, 50)
instructions1.ZIndex = 2
instructions1.Font = Enum.Font.SourceSansBold
instructions1.Text = translateText("copykeysite")
instructions1.TextColor3 = Color3.fromRGB(255, 255, 255)
instructions1.TextScaled = true
instructions1.TextSize = 22.000
instructions1.TextWrapped = true
instructions1.TextXAlignment = Enum.TextXAlignment.Left

seperator_2.Name = "seperator"
seperator_2.Parent = frame
seperator_2.BackgroundColor3 = Color3.fromRGB(64, 68, 90)
seperator_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
seperator_2.BorderSizePixel = 0
seperator_2.Position = UDim2.new(0.033684209, 0, 0.508264959, 0)
seperator_2.Size = UDim2.new(0, 440, 0, 4)

step2.Name = "step2"
step2.Parent = frame
step2.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
step2.BorderColor3 = Color3.fromRGB(64, 68, 90)
step2.BorderSizePixel = 3
step2.Position = UDim2.new(0.0442105271, 0, 0.553711474, 0)
step2.Size = UDim2.new(0.178796768, 0, -0.0687216967, 50)
step2.ZIndex = 2
step2.Font = Enum.Font.SourceSansBold
step2.Text = translateText("step2")
step2.TextColor3 = Color3.fromRGB(255, 255, 255)
step2.TextScaled = true
step2.TextSize = 22.000
step2.TextWrapped = true

instructions2.Name = "instructions2"
instructions2.Parent = frame
instructions2.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
instructions2.BackgroundTransparency = 1.000
instructions2.Position = UDim2.new(0.250526309, 0, 0.560121655, 0)
instructions2.Size = UDim2.new(0.705263138, 0, -0.0847473815, 50)
instructions2.ZIndex = 2
instructions2.Font = Enum.Font.SourceSansBold
instructions2.Text = translateText("completetaskforkey")
instructions2.TextColor3 = Color3.fromRGB(255, 255, 255)
instructions2.TextScaled = true
instructions2.TextSize = 22.000
instructions2.TextWrapped = true
instructions2.TextXAlignment = Enum.TextXAlignment.Left

seperator_3.Name = "seperator"
seperator_3.Parent = frame
seperator_3.BackgroundColor3 = Color3.fromRGB(64, 68, 90)
seperator_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
seperator_3.BorderSizePixel = 0
seperator_3.Position = UDim2.new(0.0357894748, 0, 0.675510824, 0)
seperator_3.Size = UDim2.new(0, 440, 0, 4)

step3.Name = "step3"
step3.Parent = frame
step3.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
step3.BorderColor3 = Color3.fromRGB(64, 68, 90)
step3.BorderSizePixel = 3
step3.Position = UDim2.new(0.0442105271, 0, 0.730379581, 0)
step3.Size = UDim2.new(0.178796768, 0, -0.0687216967, 50)
step3.ZIndex = 2
step3.Font = Enum.Font.SourceSansBold
step3.Text = translateText("step3")
step3.TextColor3 = Color3.fromRGB(255, 255, 255)
step3.TextScaled = true
step3.TextSize = 22.000
step3.TextWrapped = true

instructions3.Name = "instructions3"
instructions3.Parent = frame
instructions3.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
instructions3.BackgroundTransparency = 1.000
instructions3.Position = UDim2.new(0.248421058, 0, 0.71416539, 0)
instructions3.Size = UDim2.new(0.351578951, 0, -0.0370096415, 50)
instructions3.ZIndex = 2
instructions3.Font = Enum.Font.SourceSansBold
instructions3.Text = translateText("pastekeyhere")
instructions3.TextColor3 = Color3.fromRGB(255, 255, 255)
instructions3.TextScaled = true
instructions3.TextSize = 22.000
instructions3.TextWrapped = true
instructions3.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.905263186, 0, 0.44, 0)
ImageLabel.Size = UDim2.new(0, 40, 0, 41)
ImageLabel.Image = "rbxassetid://284663799"

submit.Name = "submit"
submit.Parent = frame
submit.BackgroundColor3 = Color3.fromRGB(85, 170, 85)
submit.BorderColor3 = Color3.fromRGB(85, 170, 85)
submit.BorderSizePixel = 0
submit.Position = UDim2.new(0.330526322, 0, 0.863634408, 0)
submit.Size = UDim2.new(0, 161, 0, 27)
submit.Font = Enum.Font.SourceSansBold
submit.Text = translateText("submitkey")
submit.TextColor3 = Color3.fromRGB(255, 255, 255)
submit.TextScaled = true
submit.TextSize = 14.000
submit.TextWrapped = true

-- drag script (not mine)

local UserInputService = game:GetService("UserInputService")

local gui = frame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    gui.Position =
        UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

UserInputService.InputChanged:Connect(
    function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end
)

changeLanguageButton.MouseButton1Click:Connect(
    function()
        frame.Size = UDim2.new(0, 475, 0, 272)
        translator:requestLang(frame, "change")
        ScreenGui:Destroy()
        loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS@main/MAIN.lua"))() -- reload itself to apply language. replace with keysystem link
    end
)

closeButton.MouseButton1Click:Connect(
    function()
        ScreenGui:Destroy()
        STOPLOOP = nil
        playingall = false
        playSound("104269922408932", 0.2)
    end
)

infoButton.MouseButton1Click:Connect(
    function()
        loadstring(
            game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS@main/info.lua", true)
        )()
    end
)

copykeylink.MouseButton1Click:Connect(
    function()
        setclipboard("https://hellohellohell0.com/talentless/script/key")
        playSound("18595195017", 0.5)
        NotificationLibrary:SendNotification("Success", translateText("keylinkcopied"), 5)
    end
)

_G.keydone = false

local key = "2273"

keyinsert.FocusLost:Connect(function()
    if keyinsert.Text == "" then
        playSound("7383525713", 0.5)
        NotificationLibrary:SendNotification("Error", translateText("keyempty"), 5)
        return
    elseif string.find(keyinsert.Text, key) then
        playSound("18595195017", 0.5)
        NotificationLibrary:SendNotification("Success", translateText("keysuccess"), 3)
        ScreenGui:Destroy()
        _G.keydone = true
    else
        playSound("7383525713", 0.5)
        NotificationLibrary:SendNotification("Error", translateText("keyinvalid"), 5)
    end
end)

submit.MouseButton1Click:Connect(function()
    if keyinsert.Text == "" then
        playSound("7383525713", 0.5)
        NotificationLibrary:SendNotification("Error", translateText("keyempty"), 5)
        return
    elseif string.find(keyinsert.Text, key) then
        playSound("18595195017", 0.5)
        NotificationLibrary:SendNotification("Success", translateText("keysuccess"), 3)
        ScreenGui:Destroy()
        _G.keydone = true
    else
        playSound("7383525713", 0.5)
        NotificationLibrary:SendNotification("Error", translateText("keyinvalid"), 5)
    end
end)
