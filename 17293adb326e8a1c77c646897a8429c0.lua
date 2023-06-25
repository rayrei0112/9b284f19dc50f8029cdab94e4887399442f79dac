repeat task.wait() until _G.e34e36e4081df0160c916eaf67cbda5e == "1545157c784bcd040b115d588be1de1118a3f00e"
_G.e34e36e4081df0160c916eaf67cbda5e = nil
local auth = _G.Keys
local Shindo_Life_Map = {
    [5431069982] = "Akatsuki",
    [5431071837] = "Training",
    [4601350394] = "Sand",
    [5743370338] = "arenax",
    [5447073001] = "Forest",
    [5824792748] = "war",
    [4601350760] = "Mist",
    [4601350656] = "Cloud",
    [6341670805] = "Conquest",
    [5943872934] = "World",
    [4601350214] = "Leaf",
    [4601350809] = "Stone",
    [5451401540] = "ShindaiValley",
    [5084678830] = "Rain",
    [5451398863] = "Narumaki",
    [590798306] = "none",
    [7923764447] = "Jejunes",
    [6901575446] = "Tempest",
    [7554179068] = "gladiator",
    [5307141034] = "shindostorm",
    [6986372023] = "NewEmber",
    [4616652839] = 'ShindoLife',
    [8184506020] = "Mentors",
    [6984568732] = "eventemberpain",
    [7214033433] = "forgedevent",
    [7534339269] = "shindaievent",
    [8472733618] = "kagokuevent",
    [9310522814] = "jinshikievent",
    [7524809704] = "DungeonsHub",
    [7524811367] = "dungeon1",
    [5451405681] = "VinLand",
    [5255237254] = "MountMaki"
}
if Shindo_Life_Map[game.PlaceId] then
    games = "ShindoLife"
elseif game.PlaceId == 6990131029 or game.PlaceId == 7274690025 or game.PlaceId == 7338881230 or game.PlaceId == 6990131029 or game.PlaceId == 6938803436 or game.PlaceId == 6990129309 then
    games = "ADS"
elseif game.PlaceId == 6381829480 or game.PlaceId == 5931540094 or game.PlaceId == 4520749081 then
    games = "KL"
end

if games == nil then
    game:service'Players'.LocalPlayer:kick("kick na kub")
end

local http_request = (http_request or request or (syn and syn.request) or false)


local sessionId = math.random(100000000, 999999999)

local response = http_request({
    Url = ('https://zeta.seriality.ai/auth/%s/%s/%s'):format(auth, sessionId, games),
    Method = 'GET'
})
if response.Body == "29f9954a0db8d76c51c41dab055875e4".. sessionId then
    if games == "ADS" then
        warn("ADS Successfully")
        function Load_ADS()
            --------------------------- [[ Variable ]] ---------------------------
            local game = game
            local GetService = function(Service) return game:GetService(Service) end
            local UITitle = "Zeta Hub - "..os.date("%A")..", "..os.date("%B").." "..os.date("%d") ..", ".. os.date("%Y").."."
            local ProjectName = "Anime Dimensions"
            local UIPath = 'https://raw.githubusercontent.com/Thevi99/ZetaHub/main/'
            local Library = loadstring(game:HttpGet(UIPath .. 'Library.lua'))()
            local ThemeManager = loadstring(game:HttpGet(UIPath .. 'ThemeManager.lua'))()
            local SaveManager = loadstring(game:HttpGet(UIPath .. 'SaveManager.lua'))()
            local filename = "Zeta Hub/SaveSettings/"..ProjectName.."/" .. tostring(game.Players.LocalPlayer.Name) ..".json"
            local CoreGui = GetService("CoreGui")
            local HttpService = GetService("HttpService")
            local VirtualInputManager = GetService("VirtualInputManager")
            local UserInputService = GetService("UserInputService")
            local Mobile = false
            local Collection = {}
            local FunctionTask = {}
            local Load_UI_Data = {
                Line01 = 'Hello sir, Welcome to <font color="rgb(14,222,255)">Zeta Hub</font>!',
                Line02 = "Have a nice day >:3",
                MainColor = Color3.fromRGB(44, 44, 28),
                AccentColor = Color3.fromRGB(141,64,255),
                OutlineColor = Color3.fromRGB(14,222,255),
                LastUpdate = "2/04/2023",
                UpdateLog = {
                    '[<font color="rgb(14,222,255)">+</font>] Auto Farm Special Boss',
                    '[<font color="rgb(14,222,255)">+</font>] Auto Armament Haki V2',
                    '[<font color="rgb(14,222,255)">+</font>] Auto Observation Haki V2',
                    '[<font color="rgb(14,222,255)">+</font>] Auto Dark King Haki V2',
                    '[<font color="rgb(14,222,255)">+</font>] Account Previewer',
                    '[<font color="rgb(14,222,255)">+</font>] One Shot Kill (Awake Boss)', 
                    '[<font color="rgb(14,222,255)">+</font>] Auto Do Weapon',
                    '[<font color="rgb(14,222,255)">+</font>] etc...',
                }
            }
        
            getgenv().SaveSettings = getgenv().SaveSettings or {
                ["Auto_Farm_Dimensions"] = false,
                ["Auto_AFK_Raid"] = false,
                ["Auto_Speed_Raid"] = false,
                ["Auto_Boss_Rush"] = false,
                ["Auto_Time_Challenge"] = false,
                ["Auto_Infinite"] = false,
                ["FriendsOnly"] = false,
                ["Set_Distance"] = "",
                ["Speed"] = "",
                ["Jump_Power"] = "",
                ["Walk_Speed"] = "",
                --["ModeAttack"] = "Behind",
                ["SelectRaid"] = "Matsuri Raid",
                ["ClaimDaily"] = false,
                ["ClaimSpeedRaid"] = false,
                ["ClaimEvent"] = false,
                ["Sell_Cards"] = false,
                ["Listtablecards"] = {"Uncommon", "Common", "Rare", "Epic", "Legendary", "Mythic"},
                ["Select_Cards"] = {},
                ["Auto_Dodge"] = true,
                ["Hide_Name"] = false,
                ["Kick_Rejoin"] = false,
                ["Webhook_Url"] = "",
                ["Web_Hook"] = false,
                ["Auto_Hard_Core"] = false,
                ["Auto_Retry"] = false,
                ["Auto_Create_Dimensions"] = false,
                ["Auto_Invisible"] = false,
                ["Auto_Equip_BestCard"] = false,
                ["Auto_Capsule"] = false,
            }
        
            local ListRaid = {'Cosmic Wolfman Raid' ,'Matsuri Raid' ,'Reku 100 Raid', 'Tonjuro Sun God Raid' , 'Vio Raid', 'Demon Lord Raid', 'Ichini Fullbring Raid', 'Roku Ultra Instinct Raid', 'Chainsaw Raid', 'Nardo Beast Raid', 'Cursed Sage Raid', 'Red Emperor Raid', 'Tengu Raid', 'Tengoku Raid', 'Yomiichi Raid', 'Christmas Raid', 'Infinity Nojo Raid', 'Combat Titan Raid', 'Esper Raid', 'Hirito Raid', 'Gear 5 Fluffy Raid', 'Titan Raid'}
            local ListMode = {"Easy", "Hard", "Nightmare"}
            local ListDimensions = {"Titan Dimension", "Demon Dimension", "Curse Dimension", "Villain Dimension", "Sword Dimension", "Ghoul Dimension", "Fate Dimension", "Slime Dimension", "Devil Dimension", "Pirate Dimension"}
            local ListMethod = {'Behind','Above','Under'}
            local Listtablecards = {'Uncommon','Common','Rare','Epic','Legendary','Mythic'}
            local ListCapsule = {"Matsuri Capsule", "Gear 5 Fluffy Capsule", "Reku 100 Capsule", "Raid Capsule"}
            local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
            --------------------------- [[ Function ]] ---------------------------
        
        
            function Collection:Load()
                if readfile and writefile and isfile and isfolder then
                    if not isfolder("Zeta Hub") then
                        makefolder("Zeta Hub")
                    end
                    if not isfolder("Zeta Hub/SaveSettings") then
                        makefolder("Zeta Hub/SaveSettings")
                    end
                    if not isfolder("Zeta Hub/SaveSettings/" .. ProjectName) then
                        makefolder("Zeta Hub/SaveSettings/" .. ProjectName)
                    end
                    if not isfile(filename) then
                        writefile(filename, HttpService:JSONEncode(SaveSettings))
                    else
                        local Decode = HttpService:JSONDecode(readfile(filename))
                        for i,v in pairs(Decode) do
                            SaveSettings[i] = v
                        end
                    end
                else
                    warn("Failed Load")
                    return false
                end
            end
            function Collection:Save()
                if readfile and writefile and isfile then
                    if not isfile(filename) then
                        Load()
                    else
                        local Decode = HttpService:JSONDecode(readfile(filename))
                        local Array = {}
                        for i,v in pairs(SaveSettings) do
                            Array[i] = v
                        end
                        writefile(filename, HttpService:JSONEncode(Array))
                    end
                else
                    warn("Failed Save")
                    return false
                end
            end
            function Collection:ToSlash(TextToConvert)
                return "[ "..TextToConvert.." ]"
            end
            function Collection:Loading_UI()
                if CoreGui:FindFirstChild("LoadUI") then CoreGui["LoadUI"]:Destroy();end;local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "LoadUI";local Frame = Instance.new("Frame");local Frame_2 = Instance.new("Frame");local Frame_3 = Instance.new("Frame");local Frame_4 = Instance.new("Frame");local Frame_5 = Instance.new("Frame");local Frame_6 = Instance.new("Frame");local Title = Instance.new("TextLabel");local Line01 = Instance.new("TextLabel");local Line02 = Instance.new("TextLabel");local Frame_7 = Instance.new("Frame");local UIGradient = Instance.new("UIGradient");local TextButton = Instance.new("TextButton");local Frame_8 = Instance.new("Frame");local Frame_9 = Instance.new("Frame");local Title_2 = Instance.new("TextLabel");local Line02_2 = Instance.new("TextLabel");local Line01_2 = Instance.new("TextLabel");local Title_3 = Instance.new("TextLabel");local Title_4 = Instance.new("TextLabel");local Frame_10 = Instance.new("Frame");local Frame_11 = Instance.new("Frame");local Title_5 = Instance.new("TextLabel");local StartBorder = Instance.new("Frame");local Start = Instance.new("Frame");local UIGradient_2 = Instance.new("UIGradient");local Start_2 = Instance.new("TextButton");local DontShowagainBorder = Instance.new("Frame");local DontShowagain = Instance.new("TextButton");local Start_3 = Instance.new("TextButton");local UIGradient_3 = Instance.new("UIGradient");local Title_6 = Instance.new("TextLabel")
                ScreenGui.Parent = game.CoreGui;ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                Frame.Parent = ScreenGui;Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0);Frame.BorderColor3 = Color3.fromRGB(0, 0, 0);Frame.BorderSizePixel = 2;Frame.Position = UDim2.new(0.386571079, 0, 0.268292695, 0);Frame.Size = UDim2.new(0.226857886, 0, 0.462195128, 0);Frame.Draggable = true;Frame.Active = true;Frame.Selectable = true
                Frame_2.Parent = Frame;Frame_2.BackgroundColor3 = Load_UI_Data.MainColor;Frame_2.BorderColor3 = Load_UI_Data.AccentColor;Frame_2.Size = UDim2.new(1, 0, 1, 0)
                Frame_3.Parent = Frame_2;Frame_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20);Frame_3.BorderColor3 = Color3.fromRGB(50, 50, 50);Frame_3.Position = UDim2.new(0.00862068962, 0, 0.0633245409, 0);Frame_3.Size = UDim2.new(0.968390822, 0, 0.915567279, 0)
                Frame_4.Parent = Frame_3;Frame_4.BackgroundColor3 = Load_UI_Data.MainColor;Frame_4.BorderColor3 = Color3.fromRGB(50, 50, 50);Frame_4.Position = UDim2.new(0.0178041551, 0, 0.0201729108, 0);Frame_4.Size = UDim2.new(0.958456993, 0, 0.959654152, 0)
                Frame_5.Parent = Frame_4;Frame_5.BackgroundColor3 = Load_UI_Data.MainColor;Frame_5.BorderColor3 = Color3.fromRGB(50, 50, 50);Frame_5.Position = UDim2.new(0.0185758509, 0, 0.0180180185, 0);Frame_5.Size = UDim2.new(0.956656337, 0, 0.705705702, 0)
                Frame_6.Parent = Frame_5;Frame_6.BackgroundColor3 = Load_UI_Data.AccentColor;Frame_6.Size = UDim2.new(1, 0, 0.00851063803, 0)
                Title.Name = "Title";Title.Parent = Frame_5;Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Title.BackgroundTransparency = 1.000;Title.Position = UDim2.new(0, 0, 0.0170212761, 0);Title.Size = UDim2.new(1, 0, 0.0595744699, 0);Title.Font = Enum.Font.Code;Title.Text = "[ Main ]";Title.TextColor3 = Color3.fromRGB(255, 255, 255);Title.TextScaled = true;Title.TextSize = 14.000;Title.TextStrokeTransparency = 0.000;Title.TextWrapped = true
                Line01.Name = "Line01";Line01.Parent = Frame_5;Line01.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Line01.BackgroundTransparency = 1.000;Line01.Position = UDim2.new(0.00647249212, 0, 0.123404257, 0);Line01.Size = UDim2.new(1, 0, 0.055319149, 0);Line01.Font = Enum.Font.Code;Line01.Text = "Hi Sir! Welcome to Zeta Hub ";Line01.TextColor3 = Color3.fromRGB(255, 255, 255);Line01.TextScaled = true;Line01.TextSize = 14.000;Line01.TextStrokeTransparency = 0.000;Line01.TextWrapped = true
                Line02.Name = "Line02";Line02.Parent = Frame_5;Line02.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Line02.BackgroundTransparency = 1.000;Line02.Position = UDim2.new(0, 0, 0.17872341, 0);Line02.Size = UDim2.new(1, 0, 0.055319149, 0);Line02.Font = Enum.Font.Code;Line02.Text = "Have a good day >:3";Line02.TextColor3 = Color3.fromRGB(255, 255, 255);Line02.TextScaled = true;Line02.TextSize = 14.000;Line02.TextStrokeTransparency = 0.000;Line02.TextWrapped = true
                Frame_7.Parent = Frame_5;Frame_7.BackgroundColor3 = Load_UI_Data.MainColor;Frame_7.BorderColor3 = Color3.fromRGB(50, 50, 50);Frame_7.Position = UDim2.new(0.0291262139, 0, 0.838297844, 0);Frame_7.Size = UDim2.new(0.94498384, 0, 0.0680851042, 0)
                UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(202, 202, 202)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))};UIGradient.Rotation = 270;UIGradient.Parent = Frame_7
                TextButton.Parent = Frame_7;TextButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27);TextButton.BackgroundTransparency = 1.000;TextButton.BorderColor3 = Color3.fromRGB(50, 50, 50);TextButton.Size = UDim2.new(1, 0, 1, 0);TextButton.Font = Enum.Font.Code;TextButton.Text = "Alright";TextButton.TextColor3 = Color3.fromRGB(255, 255, 255);TextButton.TextScaled = true;TextButton.TextSize = 14.000;TextButton.TextWrapped = true
                Frame_8.Parent = Frame_4;Frame_8.BackgroundColor3 = Load_UI_Data.MainColor;Frame_8.BorderColor3 = Color3.fromRGB(50, 50, 50);Frame_8.Position = UDim2.new(0.0185758509, 0, 0.0180180185, 0);Frame_8.Size = UDim2.new(0.956656337, 0, 0.705705702, 0)
                Frame_9.Parent = Frame_8;Frame_9.BackgroundColor3 = Load_UI_Data.AccentColor;Frame_9.Size = UDim2.new(1, 0, 0.00851063803, 0)
                Title_2.Name = "Title";Title_2.Parent = Frame_8;Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Title_2.BackgroundTransparency = 1.000;Title_2.Position = UDim2.new(0, 0, 0.0170212761, 0);Title_2.Size = UDim2.new(1, 0, 0.0595744699, 0);Title_2.Font = Enum.Font.Code;Title_2.Text = "[ Main ]";Title_2.TextColor3 = Color3.fromRGB(255, 255, 255);Title_2.TextScaled = true;Title_2.TextSize = 14.000;Title_2.TextStrokeTransparency = 0.000;Title_2.TextWrapped = true
                Line02_2.Name = "Line02";Line02_2.Parent = Frame_8;Line02_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Line02_2.BackgroundTransparency = 1.000;Line02_2.Position = UDim2.new(0, 0, 0.17872341, 0);Line02_2.Size = UDim2.new(1, 0, 0.055319149, 0);Line02_2.Font = Enum.Font.Code;Line02_2.Text = Load_UI_Data.Line02;Line02_2.TextColor3 = Color3.fromRGB(255, 255, 255);Line02_2.TextScaled = true;Line02_2.TextSize = 14.000;Line02_2.TextStrokeTransparency = 0.000;Line02_2.TextWrapped = true
                Line01_2.Name = "Line01";Line01_2.Parent = Frame_8;Line01_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Line01_2.BackgroundTransparency = 1.000;Line01_2.Position = UDim2.new(0.00647249212, 0, 0.123404257, 0);Line01_2.Size = UDim2.new(1, 0, 0.055319149, 0);Line01_2.Font = Enum.Font.Code;Line01_2.Text = Load_UI_Data.Line01;Line01_2.RichText = true;Line01_2.TextColor3 = Color3.fromRGB(255, 255, 255);Line01_2.TextScaled = true;Line01_2.TextSize = 14.000;Line01_2.TextStrokeTransparency = 0.000;Line01_2.TextWrapped = true
                Title_3.Name = "Title";Title_3.Parent = Frame_8;Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Title_3.BackgroundTransparency = 1.000;Title_3.Position = UDim2.new(0, 0, 0.285106391, 0);Title_3.Size = UDim2.new(1, 0, 0.0595744699, 0);Title_3.Font = Enum.Font.Code;Title_3.Text = "[ Update Log - "..Load_UI_Data.LastUpdate.." ]";Title_3.TextColor3 = Color3.fromRGB(255, 255, 255);Title_3.TextScaled = true;Title_3.TextSize = 14.000;Title_3.TextStrokeTransparency = 0.000;Title_3.TextWrapped = true
                Title_4.Name = "Title";Title_4.Parent = Frame_8;Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Title_4.BackgroundTransparency = 1.000;Title_4.Position = UDim2.new(0, 0, 0.387234032, 0);Title_4.Size = UDim2.new(1, 0, 0.612765968, 0);Title_4.Font = Enum.Font.Code;Title_4.TextColor3 = Color3.fromRGB(255, 255, 255);Title_4.TextSize = 14.000;Title_4.TextStrokeTransparency = 0.000;Title_4.TextWrapped = true;Title_4.TextYAlignment = Enum.TextYAlignment.Top;Title_4.TextXAlignment = Enum.TextXAlignment.Left;Title_4.RichText = true
                Frame_10.Parent = Frame_4;Frame_10.BackgroundColor3 = Load_UI_Data.MainColor;Frame_10.BorderColor3 = Color3.fromRGB(50, 50, 50);Frame_10.Position = UDim2.new(0.0185758509, 0, 0.75075078, 0);Frame_10.Size = UDim2.new(0.956656337, 0, 0.234234229, 0)
                Frame_11.Parent = Frame_10;Frame_11.BackgroundColor3 = Load_UI_Data.AccentColor;Frame_11.Size = UDim2.new(1, 0, 0.025641026, 0)
                Title_5.Name = "Title";Title_5.Parent = Frame_10;Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Title_5.BackgroundTransparency = 1.000;Title_5.Position = UDim2.new(0, 0, 0.051282052, 0);Title_5.Size = UDim2.new(1, 0, 0.179487184, 0);Title_5.Font = Enum.Font.Code;Title_5.Text = "[ Settings ]";Title_5.TextColor3 = Color3.fromRGB(255, 255, 255);Title_5.TextScaled = true;Title_5.TextSize = 14.000;Title_5.TextStrokeTransparency = 0.000;Title_5.TextWrapped = true
                StartBorder.Name = "StartBorder";StartBorder.Parent = Frame_10;StartBorder.BackgroundColor3 = Load_UI_Data.MainColor;StartBorder.BorderColor3 = Color3.fromRGB(0, 0, 0);StartBorder.BorderSizePixel = 2;StartBorder.Position = UDim2.new(0.0291262139, 0, 0.705128193, 0);StartBorder.Size = UDim2.new(0.94498384, 0, 0.205128208, 0)
                Start.Name = "Start";Start.Parent = StartBorder;Start.BackgroundColor3 = Load_UI_Data.MainColor;Start.BorderColor3 = Color3.fromRGB(50, 50, 50);Start.Size = UDim2.new(1, 0, 1, 0)
                UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(202, 202, 202)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))};UIGradient_2.Rotation = 270;UIGradient_2.Parent = Start
                Start_2.Name = "Start";Start_2.Parent = Start;Start_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27);Start_2.BorderColor3 = Color3.fromRGB(50, 50, 50);Start_2.Size = UDim2.new(1, 0, 1, 0);Start_2.Font = Enum.Font.Code;Start_2.Text = "Alright";Start_2.TextColor3 = Color3.fromRGB(255, 255, 255);Start_2.TextSize = 14.000;Start_2.TextWrapped = true;Start_2.AutoButtonColor = false
                DontShowagainBorder.Name = "DontShowagainBorder";DontShowagainBorder.Parent = Frame_10;DontShowagain.Text = "";DontShowagainBorder.BackgroundColor3 = Load_UI_Data.MainColor;DontShowagainBorder.BorderColor3 = Color3.fromRGB(0, 0, 0);DontShowagainBorder.BorderSizePixel = 2;DontShowagainBorder.Position = UDim2.new(0.0291262157, 0, 0.423076928, 0);DontShowagainBorder.Size = UDim2.new(0.0388349518, 0, 0.15384616, 0)
                DontShowagain.Name = "DontShowagain";DontShowagain.Parent = DontShowagainBorder;DontShowagain.BackgroundColor3 = Load_UI_Data.MainColor;DontShowagain.BorderColor3 = Color3.fromRGB(50, 50, 50);DontShowagain.Size = UDim2.new(1, 0, 1, 0)
                Start_3.Name = "Start";Start_3.Parent = DontShowagain;Start_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27);Start_3.BackgroundTransparency = 1.000;Start_3.BorderColor3 = Color3.fromRGB(50, 50, 50);Start_3.Position = UDim2.new(1.5590744, 0, 0, 0);Start_3.Size = UDim2.new(14.6045599, 0, 0.875, 0);Start_3.Font = Enum.Font.Code;Start_3.Text = "Don't show it again";Start_3.TextColor3 = Color3.fromRGB(255, 255, 255);Start_3.TextSize = 14.000;Start_3.TextWrapped = true;Start_3.TextXAlignment = Enum.TextXAlignment.Left
                UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(202, 202, 202)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))};UIGradient_3.Rotation = 270;UIGradient_3.Parent = DontShowagain
                Title_6.Name = "Title";Title_6.Parent = Frame_2;Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255);Title_6.BackgroundTransparency = 1.000;Title_6.Position = UDim2.new(0.0114942528, 0, 0, 0);Title_6.Size = UDim2.new(0.985632181, 0, 0.0659630597, 0);Title_6.Font = Enum.Font.Code;Title_6.Text = UITitle;Title_6.TextColor3 = Color3.fromRGB(255, 255, 255);Title_6.TextScaled = true;Title_6.TextSize = 14.000;Title_6.TextStrokeTransparency = 0.000;Title_6.TextWrapped = true;Title_6.TextXAlignment = Enum.TextXAlignment.Left
                
                -----------------------------------------------------------------------------------------------------------------------------------------------------------
                
                local UpdateText = "   "
                for i,v in pairs(Load_UI_Data.UpdateLog) do
                    UpdateText = UpdateText .. v .. "\n   "
                end
                Title_4.Text = UpdateText
                DontShowagain.MouseEnter:Connect(function()
                    DontShowagainBorder.BorderColor3 = Load_UI_Data.AccentColor
                end)
                DontShowagain.MouseLeave:Connect(function()
                    DontShowagainBorder.BorderColor3 = Color3.fromRGB(0,0,0)
                end)
                Start_3.MouseEnter:Connect(function()
                    DontShowagainBorder.BorderColor3 = Load_UI_Data.AccentColor
                end)
                Start_3.MouseLeave:Connect(function()
                    DontShowagainBorder.BorderColor3 = Color3.fromRGB(0,0,0)
                end)
                Start_2.MouseEnter:Connect(function()
                    StartBorder.BorderColor3 = Load_UI_Data.AccentColor
                end)
                Start_2.MouseLeave:Connect(function()
                    StartBorder.BorderColor3 = Color3.fromRGB(0,0,0)
                end)
                Start_3.AutoButtonColor = false
                DontShowagain.AutoButtonColor = false
                DontShowagain:SetAttribute("Toggle",false)
                DontShowagain.MouseButton1Click:Connect(function()
                    if DontShowagain:GetAttribute("Toggle") == false then
                        DontShowagain:SetAttribute("Toggle",true)
                        DontShowagain.BackgroundColor3 = Load_UI_Data.AccentColor
                        DontShowagain.BorderColor3 = Color3.fromRGB(80, 175, 191)
                    else
                        DontShowagain:SetAttribute("Toggle",false)
                        DontShowagain.BackgroundColor3 = Load_UI_Data.MainColor
                        DontShowagain.BorderColor3 = Color3.fromRGB(50, 50, 50)
                    end
                end)
                Start_3.MouseButton1Click:Connect(function()
                    if DontShowagain:GetAttribute("Toggle") == false then
                        DontShowagain:SetAttribute("Toggle",true)
                        DontShowagain.BackgroundColor3 = Load_UI_Data.AccentColor
                        DontShowagain.BorderColor3 = Color3.fromRGB(80, 175, 191)
                    else
                        DontShowagain:SetAttribute("Toggle",false)
                        DontShowagain.BackgroundColor3 = Load_UI_Data.MainColor
                        DontShowagain.BorderColor3 = Color3.fromRGB(50, 50, 50)
                    end
                end)
                Start_2.MouseButton1Click:Connect(function()
                    getgenv().SaveSettings["DontShowAgain"] = DontShowagain:GetAttribute("Toggle")
                    Collection:Save()
                    ScreenGui:Destroy()
                end)
            end
            function Collection:GetRoot(Character)
                PrimaryPart = Character:FindFirstChild("HumanoidRootPart")
                return PrimaryPart
            end
            function Collection:Teleport(Object)
                local Position = (typeof(Object) == "CFrame") and Object.Position or Object
                local HumanoidRootPart = Collection:GetRoot(LocalPlayer.Character) 
                HumanoidRootPart.CFrame = CFrame.new(Position)
            end
            function Collection:GetHum(Character)
                Humanoid = Character:FindFirstChildOfClass("Humanoid")
                return Humanoid
            end
            function Collection:ToggleCallback(Toggle_Path)
                Toggles[Toggle_Path]:OnChanged(function()
                    if IsLoaded and not Toggles[Toggle_Path].Value then
                        -- Stop Tween
                        if Toggle_Path == "AutoDungeon" then
                            wait(0.1)
                            Camera.CameraSubject = Collection:GetHum(LocalPlayer.Character)
                        end
                    end
                    
                    getgenv().SaveSettings[Toggle_Path] = Toggles[Toggle_Path].Value
                    Collection:Save()
                end)
            end
            function Collection:Multi_Dropdown_Callback(Object)
                Options[Object]:OnChanged(function()
                    getgenv().SaveSettings[Object] = Options[Object].Value
                    Collection:Save()
                end)
            end
            function Collection:Load_Multi_Dropdown(Object)
                if getgenv().SaveSettings[Object] == nil then
                    getgenv().SaveSettings[Object] = {}
                end
                Options[Object]:SetValue(getgenv().SaveSettings[Object])
            end
            function Collection:Dropdown_Slider_Input_Callback(Toggle_Path)
                Options[Toggle_Path]:OnChanged(function()
                    if IsLoaded then
                        getgenv().SaveSettings[Toggle_Path] = Options[Toggle_Path].Value
                        Collection:Save()
                    end
                end)
            end
            function Collection:AddColorPicker(ColorPicker_path,DefaultColor)
                local Result
                if getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'] then
                    Result = Color3.new(getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'].R,getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'].G,getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'].B)
                else
                    Result = DefaultColor
                end
                ColorPicker_path:AddColorPicker(ColorPicker_path.TextLabel.Text .. '_Color', {
                    Default = Result,
                    Title = '',
                })
                Options[ColorPicker_path.TextLabel.Text .. '_Color']:OnChanged(function()
                    if getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'] == nil then 
                        getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'] = {}
                    end
                    getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'].R = Options[ColorPicker_path.TextLabel.Text .. '_Color'].Value.R
                    getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'].G = Options[ColorPicker_path.TextLabel.Text .. '_Color'].Value.G
                    getgenv().SaveSettings[ColorPicker_path.TextLabel.Text .. '_Color'].B = Options[ColorPicker_path.TextLabel.Text .. '_Color'].Value.B
                    Collection:Save()
                end)
            end
            function Collection:Keyboard(Key,Holding)
                spawn(function()
                    if Holding == nil then
                        Holding = 0 
                    end
                    VirtualInputManager:SendKeyEvent(true,Key,false,Collection:GetRoot(LocalPlayer.Character))
                    wait(Holding)
                    VirtualInputManager:SendKeyEvent(false,Key,false,Collection:GetRoot(LocalPlayer.Character)) 
                end)
            end
        
            --------------------------- [[ Get Starting ]] ---------------------------
        
            Collection:Load()
            Collection:Save()
        
            if CoreGui:FindFirstChild(UITitle) then
                CoreGui[UITitle]:Destroy()
            end
            if UserInputService.TouchEnabled then
                Mobile = true
            end
        
            --------------------------- [[ UI ]] ---------------------------
        
            local Window 
            if Mobile then
                Window = Library:CreateWindow({
                    Title = UITitle,
                    Center = true,
                    AutoShow = true,
                    Position = UDim2.new(0.5, -275, 0.5, -300),
                    Size = UDim2.new(0, 600, 0, 400),
                })
            else
                Window = Library:CreateWindow({
                    Title = UITitle,
                    Center = true,
                    AutoShow = true,
                })
            end
        
            --------------------------- [[ Function ]] ---------------------------
        
            local function EquipCard(cardName)
                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("EquipCard", cardName)
            end
            
            local function UnEquipCard(cardName)
                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("UnequipCard", cardName)
            end
        
            local function getNPC()
                local dist, thing = math.huge
                for i,v in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") then
                        local mag = (LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
                        if mag < dist then 
                            dist = mag 
                            thing = v 
                        end
                    end
                end
                return thing
            end
        
            function Collection:checkafk()
                if game.PlaceId == 6990131029 or game.PlaceId == 7338881230 or game.PlaceId == 6938803436 then
                    time = os.date ("*t")
                    minute = time.min
                    if minute >= 0 and minute <= 9 then
                        print(tonumber(minute))
                        if game.PlaceId == 6990131029 or game.PlaceId == 7338881230 or game.PlaceId == 6938803436 then
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportToAFK")
                        end
                    end
                end
            end
        
            function Collection:GetIndex(table,Value)
                for i,v in pairs(table) do
                    if v == Value then
                        return i 
                    end
                end
                return 1
            end 
        
            local function moveto(obj, speed)
                local info = TweenInfo.new(((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - obj.Position).Magnitude)/ speed,Enum.EasingStyle.Linear)
                local tween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, info, {CFrame = obj})
        
                if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    antifall = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
                    antifall.Velocity = Vector3.new(0,0,0)
                    noclipE = game:GetService("RunService").Stepped:Connect(noclip)
                    tween:Play()
                end
                    
                tween.Completed:Connect(function()
                    antifall:Destroy()
                    noclipE:Disconnect()
                end)
            end
        
            ----- Function Dodge -----
        
            local function Dodge()
        
                local Players = game:GetService("Players")
                local TweenService = game:GetService("TweenService")
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
        
                local AutoDodgeSkill = true
                local NameProof = true
                local NoClipAfter = 999
                local DodgeSize = 2.25
            
                local dodgeList = {
                    "telegraph" -- Add more dodge skill names if needed
                }
            
                local ping = 90
                local getPingCooldown = false
            
                local function onDebrisAdded(debris)
                    if table.find(dodgeList, debris.Name:lower()) and debris.Material ~= Enum.Material.Neon then
                        local originalMaterial = debris.Material
                        wait(0.4)
            
                        local dodgePart = debris:Clone()
                        local side = math.clamp(DodgeSize, 1.5, 3)
                        local sizeTo = debris.Size + Vector3.new(side, 100, side)
            
                        dodgePart.Size = Vector3.new(0, 100, debris.Size.Z)
                        if debris.ClassName == "MeshPart" then
                            dodgePart.Size = Vector3.new(0, 0, 100)
                            sizeTo = debris.Size + Vector3.new(side, side, 100)
                        end
            
                        dodgePart.Transparency = 1
                        dodgePart.Anchored = true
                        dodgePart.CanCollide = true
                        dodgePart.Name = "DODGEPART"
                        dodgePart.Parent = debris.Parent
            
                        TweenService:Create(dodgePart, TweenInfo.new(0.08), { Size = sizeTo }):Play()
            
                        local dodgeStartTime = tick()
                        repeat
                            wait()
                        until tick() - dodgeStartTime > NoClipAfter or not debris.Parent
            
                        dodgePart:Destroy()
                    end
                end
            
                local function getPing()
                    if getPingCooldown then return end
            
                    getPingCooldown = true
                    local packetSend = tick()
                    local packet = ReplicatedStorage.RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "DailyQuest_DungeonClear")
                    repeat
                        wait()
                    until packet
                    ping = tick() - packetSend
            
                    delay(1, function()
                        getPingCooldown = false
                    end)
                end
            
                local function connection(char)
                    local humanoid = char:WaitForChild("Humanoid")
                    local rootPart = char:WaitForChild("HumanoidRootPart")
                    local playerName = char:FindFirstChild("PlayerName", true)
            
                    if NameProof and playerName then
                        playerName:Destroy()
                    end
            
                    while wait() do
                        if not rootPart then break end
            
                        local spawnLocation = Players.LocalPlayer.RespawnLocation
                        local cframe = rootPart.CFrame
            
                        if spawnLocation.Position.Y - cframe.p.Y > 30 then
                            local rayParams = RaycastParams.new()
                            rayParams.FilterDescendantsInstances = char:GetDescendants()
                            rayParams.FilterType = Enum.RaycastFilterType.Blacklist
            
                            local ray = workspace:Raycast(cframe.p, Vector3.new(0, -100, 0), rayParams)
            
                            if ray then
                                rootPart.CFrame = CFrame.new(cframe.X, spawnLocation.Position.Y + 15, cframe.Z)
                            else
                                rootPart.CFrame = spawnLocation.CFrame
                            end
                        end
                    end
                end
            
                -- Connect the Debris child added event
                local debrisFolder = workspace.Folders.Debris
                local debrisConnection = debrisFolder.ChildAdded:Connect(onDebrisAdded)
            
                -- Call the connection function on initial character
                local initialCharacter = Players.LocalPlayer.Character
                if initialCharacter then
                    connection(initialCharacter)
                end
            
                -- Connect the CharacterAdded event
                Players.LocalPlayer.CharacterAdded:Connect(connection)
            
                -- Call the getPing function
                getPing()
            end
        
        
            ----- End Dodge -----
        
            ----- Function Tween mon
            function TweenmonBehind()
                for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                    repeat
                        game:GetService("RunService").Heartbeat:wait()
                        local T =
                            (n.HumanoidRootPart.Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if T < 999 then
                            Speed2 = getgenv().SaveSettings["Speed"]
                        elseif T < 1000 then
                            Speed2 = getgenv().SaveSettings["Speed"]
                        elseif T >= 1000 then
                            Speed2 = getgenv().SaveSettings["Speed"]
                        end
                        local U = game:service "TweenService"
                        local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                        local W =
                            U:Create(
                            game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                            V,
                            {
                                CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0),0,0)
                                    * CFrame.new(0, 0, Options["Set_Distance"].Value)
                            }
                        )
                        W:Play()
                        wait(T / Speed2)
                    until not getgenv().SaveSettings["Auto_Farm_Dimensions"] or getgenv().SaveSettings["Auto_AFK_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Behind"
                end
            end
        
            function TweenmonUnder()
                for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                    repeat
                        game:GetService("RunService").Heartbeat:wait()
                        local T =
                            (n.Head.Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if T < 999 then
                            Speed2 = getgenv().SaveSettings["Speed"]
                        end
                        local U = game:service "TweenService"
                        local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                        local W =
                            U:Create(
                            game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                            V,
                            {
                                CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(270),0,0)
                                    * CFrame.Angles(math.rad(90), 0, 0) +
                                    Vector3.new(0, Options["Set_Distance"].Value, 0)
                            }
                        )
                        W:Play()
                        wait(T / Speed2)
                    until not getgenv().SaveSettings["Auto_Farm_Dimensions"] or getgenv().SaveSettings["Auto_AFK_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Under"
                end
            end
        
            function TweenmonAbove()
                for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                    repeat
                        game:GetService("RunService").Heartbeat:wait()
                        local T =
                            (n.Head.Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if T < 999 then
                            Speed2 = getgenv().SaveSettings["Speed"]
                        end
                        local U = game:service "TweenService"
                        local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                        local W =
                            U:Create(
                            game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                            V,
                            {
                                CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(180),0,0)
                                    * CFrame.Angles(math.rad(-90), 0, 0) +
                                    Vector3.new(0, Options["Set_Distance"].Value, 0)
                            }
                        )
                        W:Play()
                        wait(T / Speed2)
                    until not getgenv().SaveSettings["Auto_Farm_Dimensions"] or getgenv().SaveSettings["Auto_AFK_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Above"
                end
            end
        
        
            ----- End Tween mon
        
            local function noclip()
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == true then
                        v.CanCollide = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                    end
                end
            end
        
            function checklevelraid()
                if game.PlaceId == 6990129309 or game.PlaceId == 6938803436 or game.PlaceId == 7274690025 or game.PlaceId == 7338881230 then
                    local lvl = game:GetService("Players").LocalPlayer.leaderstats.Level.Value
                    if tonumber(lvl) >= 15 then
                        time = os.date ("*t")
                        minute = time.min
                        if minute >= 0 and minute <= 9 then
                            if game.PlaceId == 6990129309 then
                                game:GetService("TeleportService"):Teleport(7274690025, game:GetService("Players").LocalPlayer)
                                print("วาปแล้ว")
                            end
                            wait(1)
                            if game.PlaceId == 7274690025 or game.PlaceId == 6938803436 or game.PlaceId == 7338881230 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = true,
                                    ["MapName"] = _G.Save["mapraid"],
                                    ["Hardcore"] = false
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            end
                        else
                            if lvl == 1 or lvl <= 5 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Titan Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 6 or lvl <= 10 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Hard",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Titan Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 11 or lvl <= 15 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Titan Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 16 or lvl <= 20 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Demon Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 21 or lvl <= 25 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Hard",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Demon Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 26 or lvl <= 30 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Demon Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 31 or lvl <= 35 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Curse Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 36 or lvl <= 40 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Hard",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Curse Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 41 or lvl <= 45 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Curse Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 46 or lvl <= 50 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Villain Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 51 or lvl <= 55 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Hard",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Villain Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 56 or lvl <= 60 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Villain Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 61 or lvl <= 67 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Sword Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 68 or lvl <= 75 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Sword Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 76 or lvl <= 82 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Ghoul Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 83 or lvl <= 90 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Ghoul Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 91 or lvl <= 97 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Fate Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 98 or lvl <= 105 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Fate Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl == 106 or lvl <= 120 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Slime Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            elseif lvl >= 121 then
                                local ohString1 = "CreateRoom"
                                local ohTable2 = {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = false,
                                    ["MapName"] = "Devil Dimension",
                                    ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                wait(1)
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                            end
                        end
                    end
                end
            end
        
            function webhook()
                local url = getgenv().SaveSettings["Webhook_Url"]
                local data = {
                    ["content"] = " ",
                    ["embeds"] = {
                        {
                        ["title"] = "Record Anime Dimensons Simulator By Zeta Hub",
                        ["color"] = tonumber(0x7269da),
                        ["fields"] = {
                                {
                                ["name"] = "Name:",
                                ["value"] = "||"..game.Players.LocalPlayer.Name .. "||"
                                },
                                {
                                ["name"] = "Level 🧑🏽 :",
                                ["value"] = game:GetService("Players").LocalPlayer.leaderstats.Level.Value
                                },
                                {
                                ["name"] = "Dimensions 🌌:",
                                ["value"] = game:GetService("ReplicatedStorage")[game.Players.LocalPlayer.Name.."StatDisplay"].StageClear.Value
                                },
                                {
                                ["name"] = "Raid Boss 👾:",
                                ["value"] = game:GetService("ReplicatedStorage")[game.Players.LocalPlayer.Name.."StatDisplay"].RaidClears.Value
                                },
                                {
                                ["name"] = "Boss Rush 🚀:",
                                ["value"] = game:GetService("ReplicatedStorage")[game.Players.LocalPlayer.Name.."StatDisplay"].BossRushClears.Value
                                },
                                {
                                    ["name"] = "High Time Challenge 📡:",
                                    ["value"] = game:GetService("ReplicatedStorage")[game.Players.LocalPlayer.Name.."StatDisplay"].TimeChallengeHighScore.Value
                                },
                                {
                                ["name"] = "Total Damage 💪:",
                                ["value"] = game:GetService("ReplicatedStorage")[game.Players.LocalPlayer.Name.."StatDisplay"].TotalDamage.Value
                                }
                            },
                            ["image"] = {
                            ["url"] = "https://scontent.futp1-2.fna.fbcdn.net/v/t1.15752-9/289014254_601419314593329_3238247828058334659_n.png?_nc_cat=108&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGSIPZjMyYdK5uCgN902yN4JhIjs04LAUkmEiOzTgsBSWiUP6aC6BTCm0pZDJWOp67UaMuaojyfCyhZHTJjLJRi&_nc_ohc=wHtwK-WuZU4AX8dhuvN&_nc_ht=scontent.futp1-2.fna&oh=03_AVKOqXw5Idol9PTnch9shZPHkrwxwKxWvOCpJYnz89i4zA&oe=62E5C801"
                            }
                        }
                    }
                }
                local newdata = game:GetService("HttpService"):JSONEncode(data)
                
                local headers = {
                    ["content-type"] = "application/json"
                }
                request = http_request or request or HttpPost or syn.request
                local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                request(abcdef)
            end
        
        
            function Collection:checkraid()
                if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 or game.PlaceId == 7338881230 or game.PlaceId == 6990131029 then
                    local lvl = game:GetService("Players").LocalPlayer.leaderstats.Level.Value
                    if tonumber(lvl) >= 15 then
                        time = os.date ("*t")
                        minute = time.min
                        print(tonumber(minute))
                        if minute >= 0 and minute <= 9 then
                            local ohString1 = "CreateRoom"
                            local ohTable2 = {
                                ["Difficulty"] = "Easy",
                                ["FriendsOnly"] = false,
                                ["MapName"] = getgenv().SaveSettings["SelectRaid"],
                                ["Hardcore"] = false
                            }
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                        else
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportToAFK")
                        end
                    end
                end
            end
        
            function ATTK()
                local args = {
                    [1] = "UseSkill",
                    [2] = {
                        ["hrpCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
                        ["attackNumber"] = 1
                    },
                    [3] = "BasicAttack"
                }
                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
                wait(.2)
            end
        
            function SPMSKILL()
                local args = {
                    [1] = "UseSkill",
                    [2] = {
                        ["hrpCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    },
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
                wait(.2)
                local args = {
                    [1] = "UseSkill",
                    [2] = {
                        ["hrpCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    },
                    [3] = 2
                }
                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
                wait(.2)
                local args = {
                    [1] = "UseSkill",
                    [2] = {
                        ["hrpCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    },
                    [3] = 3
                }
                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
                wait(.2)
                local args = {
                    [1] = "UseSkill",
                    [2] = {
                        ["hrpCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    },
                    [3] = 4
                }
                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
                wait(.2)
                local args = {
                    [1] = "UseAssistSkill",
                    [2] = {
                        ["hrpCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    },
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
                wait(.2)
                local args = {
                    [1] = "UseAssistSkill",
                    [2] = {
                        ["hrpCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    },
                    [3] = 2
                }
                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
                wait(.2)
                local ohString1 = "UseSkill"
                local ohTable2 = {
                    ["hrpCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                }
                local ohNumber3 = 5
        
                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(ohString1, ohTable2, ohNumber3)
                wait(.2)
                for m, n in pairs(
                    getconnections(
                        LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill5.MouseButton1Click
                    )
                ) do
                    n:Fire()
                end
            end
        
        
            local listspeedcard = {}
        
            if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 or game.PlaceId == 7338881230 then
                pcall(function()
                    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.SpeedRaidCharacterSelector.Shade.SpeedRaidCharacterInventoryScrollingFrame:GetChildren()) do
                        if v:IsA("ImageButton") then
                            table.insert(listspeedcard, tostring(v.Name))
                        end
                    end
                end)
            end
        
        
        
        
        
            --------------------------- [[ End Function ]] ---------------------------
        
        
        
            --------------------------- [[ Tabs ]] ---------------------------
        
            local Tabs = {
                ["General"] = Window:AddTab('Main'), 
                ["Settings"] = Window:AddTab('Settings'),
            }
        
            --------------------------- [[ Local Value ]] ---------------------------
        
            local Players = game:GetService("Players");
            local LocalPlayer = Players.LocalPlayer;
            local TweenService = game:GetService("TweenService");
            local ReplicatedStorage = game:GetService("ReplicatedStorage");
            local RemoteFunctions = ReplicatedStorage:WaitForChild("RemoteFunctions", 1);
            local MainRemoteFunction = RemoteFunctions:WaitForChild("MainRemoteFunction", 1);
            local Modules = ReplicatedStorage:WaitForChild("Modules", 1);
            local settings = Modules:WaitForChild("settings", 1);
            local CardInfo = require(settings).CardInfo;
            if not CardInfo then return end;
        
        
            local Dimensions_Map = {
                [6938803436] = "Main",
                [7338881230] = "Raid Lobby",
                [6990131029] = "AFK and Fight Lobby",
                [7274690025] = "Raid Room",
                [6990129309] = "Dimensions Room"
            }
            if not Dimensions_Map[game.PlaceId] then return end
        
        
            if Dimensions_Map then
                --------------------------- [[ Section ]] ---------------------------
        
                --// #Tab: Settings
                local MainSection = Tabs.General:AddLeftGroupbox(Collection:ToSlash("Main"))
                local ModeSection = Tabs.General:AddLeftGroupbox(Collection:ToSlash("Mode Setting"))
                local CardSection = Tabs.General:AddLeftGroupbox(Collection:ToSlash("Card"))
                local ClaimSection = Tabs.General:AddLeftGroupbox(Collection:ToSlash("Claim"))
                local GameSection = Tabs.General:AddRightGroupbox(Collection:ToSlash("Game Setting"))
                local MiscSection = Tabs.General:AddRightGroupbox(Collection:ToSlash("Misc"))
                local CapsuleSection = Tabs.General:AddRightGroupbox(Collection:ToSlash("Capsule"))
        
                --// #Tab: Settings
                local MenuSection = Tabs.Settings:AddLeftGroupbox(Collection:ToSlash('Menu'))
                local ServerSection = Tabs.Settings:AddLeftGroupbox(Collection:ToSlash("Server"))
                local ServerJobSection = Tabs.Settings:AddLeftGroupbox(Collection:ToSlash("Server Job"))
                local WebhookSection = Tabs.Settings:AddLeftGroupbox(Collection:ToSlash("Web Hook"))
        
                --------------------------- [[ MainSection ]] ---------------------------
        
                local TimeRaid = MainSection:AddLabel("Raid Time :")
        
        
                MainSection:AddDropdown('Select_Raid', {
                    Text = 'Select Raid',
                    Values = ListRaid,
                    Default = getgenv().SaveSettings["SelectRaid"],
                    Multi = false,
                }) Collection:Dropdown_Slider_Input_Callback("Select_Raid")
        
                MainSection:AddToggle('Auto_AFK_Raid', {
                    Text = 'Auto AFK Raid ',
                    Default = getgenv().SaveSettings["Auto_AFK_Raid"] , 
                }) Collection:ToggleCallback("Auto_AFK_Raid")
        
                MainSection:AddToggle('Auto_Farm_Dimensions', {
                    Text = 'Auto Farm Dimensions',
                    Default = getgenv().SaveSettings["Auto_Farm_Dimensions"] , 
                }) Collection:ToggleCallback("Auto_Farm_Dimensions")
        
                MainSection:AddToggle('Auto_Boss_Rush', {
                    Text = 'Auto Boss Rush ',
                    Default = getgenv().SaveSettings["Auto_Boss_Rush"] , 
                }) Collection:ToggleCallback("Auto_Boss_Rush")
        
        
                MainSection:AddToggle('Auto_Speed_Raid', {
                    Text = 'Auto Speed Raid ',
                    Default = getgenv().SaveSettings["Auto_Speed_Raid"] , 
                }) Collection:ToggleCallback("Auto_Speed_Raid")
        
                MainSection:AddToggle('Auto_Time_Challenge', {
                    Text = 'Auto TimeChallenge ',
                    Default = getgenv().SaveSettings["Auto_Time_Challenge"] , 
                }) Collection:ToggleCallback("Auto_Time_Challenge")
        
                MainSection:AddToggle('Auto_Infinite', {
                    Text = 'Auto Infinite Mode ',
                    Default = getgenv().SaveSettings["Auto_Infinite"] , 
                }) Collection:ToggleCallback("Auto_Infinite")
        
                --------------------------- [[ ModeSection ]] ---------------------------
        
                ModeSection:AddDropdown('Select_Mode', {
                    Text = 'Select Mode',
                    Values = ListMethod,
                    Default = 1,
                    Multi = false,
                }) Collection:Dropdown_Slider_Input_Callback("Select_Mode")
        
        
        
                ModeSection:AddSlider('Set_Speed', {Text = 'Set Speed',Default = 80,Min = 50,Max = 100,Rounding = 0,Compact = false,})
                --Collection:Dropdown_Slider_Input_Callback("Set_Speed")
                Options.Set_Speed:OnChanged(function()
                    getgenv().SaveSettings["Speed"] = Options.Set_Speed.Value
                end)
        
                ModeSection:AddSlider('Set_Distance', {Text = 'Set Distance',Default = 5,Min = 0,Max = 15,Rounding = 0,Compact = false,})
                --Collection:Dropdown_Slider_Input_Callback("Set_Distance")
                Options.Set_Distance:OnChanged(function()
                    getgenv().SaveSettings["Set_Distance"] = Options.Set_Distance.Value
                end)
        
                --------------------------- [[ ClaimSection ]] ---------------------------
        
                ClaimSection:AddToggle('ClaimDaily', {
                    Text = 'Auto Claim DailyQuest',
                    Default = getgenv().SaveSettings["ClaimDaily"] , 
                }) Collection:ToggleCallback("ClaimDaily")
        
                ClaimSection:AddToggle('ClaimSpeedRaid', {
                    Text = 'Auto Claim SpeedRaid',
                    Default = getgenv().SaveSettings["ClaimSpeedRaid"] , 
                }) Collection:ToggleCallback("ClaimSpeedRaid")
        
        
                -- ClaimSection:AddToggle('ClaimEvent', {
                --     Text = 'Auto Claim Event',
                --     Default = getgenv().SaveSettings["ClaimEvent"] , 
                -- }) Collection:ToggleCallback("ClaimEvent")
        
        
                --------------------------- [[ CardSection ]] ---------------------------
        
                CardSection:AddDropdown('Select_Cards', {
                    Text = 'Select Tier',
                    Values = {"Uncommon", "Common", "Rare", "Epic", "Legendary", "Mythic"},
                    Default = getgenv().SaveSettings["Select_Cards"],
                    Multi = true,
                }) 
                Collection:Multi_Dropdown_Callback("Select_Cards")
                -- Options.Select_Cards:OnChanged(function()
                --     getgenv().SaveSettings["Select_Cards"] = Options.Select_Cards.Value
                --     Collection:Save()
                -- end)
                -- Collection:Load_Multi_Dropdown("Select_Cards")
                -- Collection:Multi_Dropdown_Callback("Select_Cards")
        
        
                
                CardSection:AddToggle('Sell_Cards', {
                    Text = 'Auto Sell Cards',
                    Default = getgenv().SaveSettings["Sell_Cards"] , 
                }) Collection:ToggleCallback("Sell_Cards")
        
        
        
                --------------------------- [[ GameSection ]] ---------------------------
                GameSection:AddDropdown('Select_Dimensions', {
                    Text = 'Select Mode',
                    Values = ListDimensions,
                    Default = 1,
                    Multi = false,
                }) Collection:Dropdown_Slider_Input_Callback("Select_Dimensions")
        
                GameSection:AddDropdown('Select_Mode_Dimensions', {
                    Text = 'Select Mode',
                    Values = ListMode,
                    Default = 1,
                    Multi = false,
                }) Collection:Dropdown_Slider_Input_Callback("Select_Mode_Dimensions")
        
                GameSection:AddToggle('Auto_Create_Dimensions', {
                    Text = 'Auto Create Dimensions',
                    Default = getgenv().SaveSettings["Auto_Create_Dimensions"] , 
                }) Collection:ToggleCallback("Auto_Create_Dimensions")
        
                GameSection:AddToggle('Auto_Retry', {
                    Text = 'Auto Retry',
                    Default = getgenv().SaveSettings["Auto_Retry"] , 
                }) Collection:ToggleCallback("Auto_Retry")
        
                GameSection:AddToggle('Auto_Hard_Core', {
                    Text = 'Auto Hard Core',
                    Default = getgenv().SaveSettings["Auto_Hard_Core"] , 
                }) Collection:ToggleCallback("Auto_Hard_Core")
        
                --------------------------- [[ MiscSection ]] ---------------------------
                MiscSection:AddToggle('Auto_Dodge', {
                    Text = 'Auto Dodge',
                    Default = getgenv().SaveSettings["Auto_Dodge"] , 
                }) Collection:ToggleCallback("Auto_Dodge")
        
                MiscSection:AddToggle('Auto_Equip_BestCard', {
                    Text = 'Auto Equip BestCard',
                    Default = getgenv().SaveSettings["Auto_Equip_BestCard"] , 
                }) Collection:ToggleCallback("Auto_Equip_BestCard")
        
                MiscSection:AddToggle('Auto_Invisible', {
                    Text = 'Auto Invisible',
                    Default = getgenv().SaveSettings["Auto_Invisible"] , 
                }) Collection:ToggleCallback("Auto_Invisible")
        
                MiscSection:AddToggle('Hide_Name', {
                    Text = 'Hide Name',
                    Default = getgenv().SaveSettings["Hide_Name"] , 
                }) Collection:ToggleCallback("Hide_Name")
        
                MiscSection:AddToggle('Kick_Rejoin', {
                    Text = 'Kick Rejoin',
                    Default = getgenv().SaveSettings["Kick_Rejoin"] , 
                }) Collection:ToggleCallback("Kick_Rejoin")
        
                -- ModeSection:AddSlider('Set_Speed', {Text = 'Set Speed',Default = 50,Min = 50,Max = 100,Rounding = 0,Compact = false,})
                -- --Collection:Dropdown_Slider_Input_Callback("Set_Speed")
                -- Options.Set_Speed:OnChanged(function()
                --     getgenv().SaveSettings["Speed"] = Options.Set_Speed.Value
                -- end)
        
                MiscSection:AddSlider('Walk_Speed', {Text = 'Walk Speed',Default = 16,Min = 16,Max = 100,Rounding = 0,Compact = false,})
                Options.Walk_Speed:OnChanged(function()
                    getgenv().SaveSettings["Walk_Speed"] = Options.Walk_Speed.Value
                end)
        
        
                MiscSection:AddSlider('Jump_Power', {Text = 'Jump Power',Default = 50,Min = 50,Max = 100,Rounding = 0,Compact = false,})
                -- Collection:Dropdown_Slider_Input_Callback("Jump_Power")
                Options.Jump_Power:OnChanged(function()
                    getgenv().SaveSettings["Jump_Power"] = Options.Jump_Power.Value
                end)
        
                MiscSection:AddButton({
                    Text = 'Redeem Code',
                    Func = function(bool)
                        Reddemcode = bool
                        task.spawn(function()
                            while Reddemcode do task.wait()
                                function UseCode(Text)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("RedeemPromoCode", Text)
                                end
                                UseCode("U16TA4")
                                UseCode("ESPER163")
                                UseCode("LOVE")
                                UseCode("1TEN6GU2")
                                UseCode("16RE1D")
                                UseCode("YO1R60")
                                UseCode("15VI9O")
                                UseCode("WO1R58LD")
                                UseCode("1TO57NJURO")
                                UseCode("WANO")
                                UseCode("1WA5TE6R")
                                UseCode("1S5LAYER5")
                                UseCode("SUN")
                                UseCode("1BATT5LE4")
                                UseCode("1Y5ZENS3")
                            end
                        end)
                    end,
                })
        
                
                --------------------------- [[ CapsuleSection ]] ---------------------------
                CapsuleSection:AddToggle('Auto_Capsule', {
                    Text = 'Auto Capsule',
                    Default = getgenv().SaveSettings["Auto_Capsule"] , 
                }) Collection:ToggleCallback("Auto_Capsule")
        
                CapsuleSection:AddDropdown('Select_Capsule', {
                    Text = 'Select Capsule',
                    Values = ListCapsule,
                    Default = 1,
                    Multi = false,
                }) Collection:Dropdown_Slider_Input_Callback("Select_Capsule")
        
        
                --------------------------- [[ MiscSection ]] ---------------------------
        
                WebhookSection:AddInput('Webhook_Url', {
                    Default = getgenv().SaveSettings["Webhook_Url"],
                    Numeric = false,
                    Finished = true,
                
                    Text = 'Enter url :',
                
                    Placeholder = 'Enter Url here.',
                })
                Options.Webhook_Url:OnChanged(function()
                    getgenv().SaveSettings["Webhook_Url"] = Options['Webhook_Url'].Value
                end)
        
        
                WebhookSection:AddToggle('Web_Hook', {
                    Text = 'Web Hook',
                    Default = getgenv().SaveSettings["Web_Hook"] , 
                }) Collection:ToggleCallback("Web_Hook")
        
        
                --------------------------- [[ UI ]] ---------------------------
        
                ServerSection:AddButton('Rejoin', function() 
                    TeleportService:Teleport(PlaceId, LocalPlayer)
                end)
                ServerSection:AddButton('Server Hop', function()
                    Collection:HopServer(getgenv().SaveSettings["ChooseRegion"])
                end)
        
                ServerJobSection:AddInput('JobIdInput', {
                    Default = _G.JobId,
                    Numeric = false,
                    Finished = true,
                    Text = 'Insert Job Id :',
                    Placeholder = 'Enter Job ID here.',
                })
                Options.JobIdInput:OnChanged(function()
                    _G.JobId = Options.JobIdInput.Value
                end)
        
                Library:OnUnload(function()
                    Library.Unloaded = true
                end)
        
                MenuSection:AddButton('Unload', function() Library:Unload() end)
                MenuSection:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 
                Library.ToggleKeybind = Options.MenuKeybind
                ThemeManager:SetLibrary(Library)
        
                ThemeManager:SetFolder('Zeta Hub')
                ThemeManager:ApplyToTab(Tabs['Settings'])
                -- Collection:Loading_UI()
                Library:SetWatermark('This is a really long watermark to text the resizing')
        
                --------------------------- [[ Script: Auto Farm ]] ---------------------------
        
                task.spawn(function()
                    while true do task.wait()
                        pcall(function()
                            TimeRaid:SetText(game:GetService("Workspace").InteractionCircles.RaidPortal.RaidTimer.Frame.RaidTimerText.Text)
                        end)
                    end
                end)
        
                FunctionTask["Auto_Boss_Rush"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Boss_Rush"].Value then
                                if not getgenv().SaveSettings["Auto_Boss_Rush"] then
                                    break
                                end
                                wait(.5)
                                if getgenv().SaveSettings["Auto_Boss_Rush"] then
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportToBossRush")
                                    wait(1)
                                end
                            end
                        end
                    end)
                end
        
        
        
                FunctionTask["Auto_Infinite"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Infinite"].Value then
                                if not getgenv().SaveSettings["Auto_Infinite"] then
                                    break
                                end
                                wait(.5)
                                
                                if getgenv().SaveSettings["Auto_Infinite"] then
                                    pcall(
                                        function()
                                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
                                            PYHumanoidRootPart.CanCollide = false
                                        end
                                    )
                                    if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
                                        local ohString1 = "CreateRoom"
                                        local ohTable2 = {
                                            ["Difficulty"] = "Infinite",
                                            ["FriendsOnly"] = false,
                                            ["MapName"] = "Infinite Mode",
                                            ["Hardcore"] = false
                                        }
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                        wait(0.2)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                                    end
                                end
                            end
                        end
                    end)
                end
        
                task.spawn(function()
                    while task.wait() do
                        pcall(function()
                            wait(.5)
                            if getgenv().SaveSettings["Auto_AFK_Raid"] then
                                Collection:checkraid()
                                Collection:checkafk()
                            end
                        end)
                    end
                end)
        
                FunctionTask["Auto_AFK_Raid"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_AFK_Raid"].Value then
                                if not getgenv().SaveSettings["Auto_AFK_Raid"] then
                                    break
                                end
                                if getgenv().SaveSettings["Auto_AFK_Raid"] then
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
                                    end)
                                    pcall(function()
                                        if Options["Select_Mode"].Value == "Behind" then
                                            for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                                repeat
                                                    game:GetService("RunService").Heartbeat:wait()
                                                    local T =
                                                        (n.HumanoidRootPart.Position -
                                                        LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                    if T < 999 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    elseif T < 1000 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    elseif T >= 1000 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    end
                                                    local U = game:service "TweenService"
                                                    local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                                    local W =
                                                        U:Create(
                                                        LocalPlayer.Character["HumanoidRootPart"],
                                                        V,
                                                        {
                                                            CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0),0,0)
                                                                * CFrame.new(0, 0, Options["Set_Distance"].Value)
                                                        }
                                                    )
                                                    W:Play()
                                                    wait(T / Speed2)
                                                until not getgenv().SaveSettings["Auto_AFK_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Behind"
                                            end
                                        elseif Options["Select_Mode"].Value == "Above" then
                                            for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                                repeat
                                                    game:GetService("RunService").Heartbeat:wait()
                                                    local T =
                                                        (n.Head.Position -
                                                        LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                    if T < 999 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    end
                                                    local U = game:service "TweenService"
                                                    local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                                    local W =
                                                        U:Create(
                                                        game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                        V,
                                                        {
                                                            CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(180),0,0)
                                                                * CFrame.Angles(math.rad(-90), 0, 0) +
                                                                Vector3.new(0, Options["Set_Distance"].Value, 0)
                                                        }
                                                    )
                                                    W:Play()
                                                    wait(T / Speed2)
                                                until not getgenv().SaveSettings["Auto_AFK_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Above"
                                            end
                                        elseif Options["Select_Mode"].Value == "Under" then
                                            for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                                repeat
                                                    game:GetService("RunService").Heartbeat:wait()
                                                    local T =
                                                        (n.Head.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                    if T < 999 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    end
                                                    local U = game:service "TweenService"
                                                    local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                                    local W =
                                                        U:Create(
                                                        game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                        V,
                                                        {
                                                            CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(270),0,0)
                                                                * CFrame.Angles(math.rad(90), 0, 0) +
                                                                Vector3.new(0, Options["Set_Distance"].Value, 0)
                                                        }
                                                    )
                                                    W:Play()
                                                    wait(T / Speed2)
                                                until not getgenv().SaveSettings["Auto_AFK_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Under"
                                            end
                                        end
                                    end)
                                else
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                                    end)
                                end
                            end
                        end
                    end)
                end
        
                FunctionTask["Auto_Time_Challenge"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Time_Challenge"].Value then
                                if not getgenv().SaveSettings["Auto_Time_Challenge"] then
                                    break
                                end
                                wait(.5)
                                pcall(
                                        function()
                                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
                                            PYHumanoidRootPart.CanCollide = false
                                        end
                                    )
                                if getgenv().SaveSettings["Auto_Time_Challenge"] then
                                    pcall(function()
                                        if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
                                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportToTimeChallenge")
                                        end
                                    end)
                                end
                            end
                        end
                    end)
                end
        
                task.spawn(function()
                    while true do task.wait()
                        if getgenv().SaveSettings["Auto_Time_Challenge"] then
                            pcall(function()
                                if game.PlaceId == 6990129309 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-65.73489379882812, 60.25306701660156, 103.57148742675781) * CFrame.Angles(math.rad(262.5),0,0) * CFrame.new(0,5,0)
                                end
                            end)
                        end
                    end
                end)
        
                FunctionTask["Auto_Speed_Raid"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Speed_Raid"].Value then
                                if not getgenv().SaveSettings["Auto_Speed_Raid"] then
                                    break
                                end
                                wait()
                                pcall(
                                        function()
                                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
                                            PYHumanoidRootPart.CanCollide = false
                                        end
                                    )
                                if getgenv().SaveSettings["Auto_Speed_Raid"] then
                                    wait()
                                    local X = {
                                        "Sung Jin Woo",
                                        "MilimCharacter (Valentine)",
                                        "Ryuko",
                                        "Saber Alter Character",
                                        "Alice",
                                        "Broly",
                                        "Gilgamesh",
                                        "Kokushibo",
                                        "Ice Queen Esdeath",
                                        "Katakuri",
                                        "Levi",
                                        "Naruto Six Paths",
                                        "RimuruDemonLord",
                                        "KiritoCharacter",
                                        "Megumin (Halloween)",
                                        "RengokuCharacter",
                                        "KanekiCharacter",
                                        "Lancer",
                                        "Nezuko (New Year)",
                                        "TogaCharacter (Halloween)",
                                        "Megumin (Halloween)",
                                        "Emiya Archer",
                                        "Sukuna",
                                        "Infinity Gojo",
                                        "AsunaCharacter",
                                        "Zoro",
                                        "All Might",
                                        "Rukia",
                                        "Shinra",
                                        "Tanjiro",
                                        "Gray",
                                        "Sasuke",
                                        "Akaza",
                                        "Asta",
                                        "Killua",
                                        "Natsu",
                                        "Sakura",
                                        "Accelerator",
                                        "Deku",
                                        "Goku",
                                        "Ichigo",
                                        "Luffy",
                                        "Naruto",
                                        "Gojo",
                                        "Genos",
                                        "Attack Titan",
                                        "Eugeo",
                                        "Gear 5 Luffy",
                                        "Esper",
                                        "Katakuri (Summer) Character",
                                        "Astolfo Summer Character"
                                    }
                                    local Y = math.random(1, #X)
                                    local Z = X[Y]
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportToShadowRaid",
                                        Z
                                    )
                                end
                            end
                        end
                    end)
                end
        
        
        
                FunctionTask["Auto_Farm_Dimensions"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Farm_Dimensions"].Value then
                                if not getgenv().SaveSettings["Auto_Farm_Dimensions"] then
                                    break
                                end
                                wait(3)
                                Lvl = LocalPlayer.leaderstats.Level.Value
                                if Lvl > 0 and Lvl < 6 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Titan Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 5 and Lvl < 11 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Hard",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Titan Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 10 and Lvl < 16 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Titan Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 15 and Lvl < 21 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Demon Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 20 and Lvl < 26 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Hard",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Demon Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 25 and Lvl < 31 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Demon Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 30 and Lvl < 36 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Curse Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 35 and Lvl < 41 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Hard",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Curse Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 40 and Lvl < 46 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Curse Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 45 and Lvl < 51 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Villain Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 50 and Lvl < 56 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Hard",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Villain Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 55 and Lvl < 61 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Villain Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 60 and Lvl < 68 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Sword Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 67 and Lvl < 76 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Sword Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 75 and Lvl < 83 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Ghoul Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 82 and Lvl < 91 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Ghoul Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 90 and Lvl < 98 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Fate Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 97 and Lvl < 106 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Fate Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 105 and Lvl < 121 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Slime Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 106 and Lvl < 114 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Slime Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl > 113 and Lvl < 129 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Devil Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                elseif Lvl >= 130 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Nightmare",
                                            ["FriendsOnly"] = getgenv().SaveSettings["FriendsOnly"],
                                            ["MapName"] = "Pirate Dimension",
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                end
                            end
                        end
                    end)
                end
        
        
                --------------------------- [[ Script: Speed Raid ]] ---------------------------
        
                FunctionTask["Auto_Speed_Raid"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Speed_Raid"].Value then
                                if not getgenv().SaveSettings["Auto_Speed_Raid"] then
                                    break
                                end
                                if getgenv().SaveSettings["Auto_Speed_Raid"] then
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
                                    end)
                                    pcall(function()
                                        if Options["Select_Mode"].Value == "Behind" then
                                            for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                                repeat
                                                    game:GetService("RunService").Heartbeat:wait()
                                                    local T =
                                                        (n.HumanoidRootPart.Position -
                                                        LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                    if T < 999 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    elseif T < 1000 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    elseif T >= 1000 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    end
                                                    local U = game:service "TweenService"
                                                    local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                                    local W =
                                                        U:Create(
                                                        LocalPlayer.Character["HumanoidRootPart"],
                                                        V,
                                                        {
                                                            CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0),0,0)
                                                                * CFrame.new(0, 0, Options["Set_Distance"].Value)
                                                        }
                                                    )
                                                    W:Play()
                                                    wait(T / Speed2)
                                                until not getgenv().SaveSettings["Auto_Speed_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Behind"
                                            end
                                        elseif Options["Select_Mode"].Value == "Above" then
                                            for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                                repeat
                                                    game:GetService("RunService").Heartbeat:wait()
                                                    local T =
                                                        (n.Head.Position -
                                                        LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                    if T < 999 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    end
                                                    local U = game:service "TweenService"
                                                    local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                                    local W =
                                                        U:Create(
                                                        game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                        V,
                                                        {
                                                            CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(180),0,0)
                                                                * CFrame.Angles(math.rad(-90), 0, 0) +
                                                                Vector3.new(0, Options["Set_Distance"].Value, 0)
                                                        }
                                                    )
                                                    W:Play()
                                                    wait(T / Speed2)
                                                until not getgenv().SaveSettings["Auto_Speed_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Above"
                                            end
                                        elseif Options["Select_Mode"].Value == "Under" then
                                            for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                                repeat
                                                    game:GetService("RunService").Heartbeat:wait()
                                                    local T =
                                                        (n.Head.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                    if T < 999 then
                                                        Speed2 = getgenv().SaveSettings["Speed"]
                                                    end
                                                    local U = game:service "TweenService"
                                                    local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                                    local W =
                                                        U:Create(
                                                        game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                        V,
                                                        {
                                                            CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(270),0,0)
                                                                * CFrame.Angles(math.rad(90), 0, 0) +
                                                                Vector3.new(0, Options["Set_Distance"].Value, 0)
                                                        }
                                                    )
                                                    W:Play()
                                                    wait(T / Speed2)
                                                until not getgenv().SaveSettings["Auto_Speed_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Under"
                                            end
                                        end
                                    end)
                                else
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                                    end)
                                end
                            end
                        end
                    end)
                end
        
        
        
                task.spawn(function()
                    while task.wait() do
                        if getgenv().SaveSettings["Auto_Farm_Dimensions"] then
                            if workspace.Gravity ~= 0 then
                                workspace.Gravity = 0
                            end
                        else
                            workspace.Gravity = 196.1999969482422
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if getgenv().SaveSettings["Auto_Boss_Rush"] or getgenv().SaveSettings["Auto_Infinite"] or getgenv().SaveSettings["Auto_Farm_Dimensions"] or getgenv().SaveSettings["Auto_AFK_Raid"] or getgenv().SaveSettings["Auto_Speed_Raid"] or getgenv().SaveSettings["Auto_Time_Challenge"]then
                            pcall(function()
                                ATTK()
                            end)
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if getgenv().SaveSettings["Auto_Boss_Rush"] or getgenv().SaveSettings["Auto_Infinite"] or getgenv().SaveSettings["Auto_Farm_Dimensions"] or getgenv().SaveSettings["Auto_AFK_Raid"] or getgenv().SaveSettings["Auto_Speed_Raid"] or getgenv().SaveSettings["Auto_Time_Challenge"]then
                            pcall(function()
                                SPMSKILL()
                            end)
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if getgenv().SaveSettings["Auto_Infinite"] or getgenv().SaveSettings["Auto_Farm_Dimensions"] or getgenv().SaveSettings["Auto_Speed_Raid"] or getgenv().SaveSettings["Auto_Time_Challenge"]then
                            if LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.Visible == true then
                                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer("RetryDungeon")
                            end
                        end
                    end
                end)
        
        
        
                --------------------------- [[ Script: Mode Setting ]] ---------------------------
        
                -- task.spawn(function()
                --     while task.wait() do
                --         if getgenv().SaveSettings["Auto_AFK_Raid"] then
                            
                --         end
                --     end
                -- end)
        
        
        
        
        
                task.spawn(function()
                    while task.wait() do
                        if not getgenv().SaveSettings["Auto_Farm_Dimensions"] then
                            break
                        end
                        if getgenv().SaveSettings["Auto_Farm_Dimensions"] then
                            pcall(function()
                                if Options["Select_Mode"].Value == "Behind" then
                                    for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            local T =
                                                (n.HumanoidRootPart.Position -
                                                LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if T < 999 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            elseif T < 1000 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            elseif T >= 1000 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            end
                                            local U = game:service "TweenService"
                                            local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                            local W =
                                                U:Create(
                                                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                V,
                                                {
                                                    CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0),0,0)
                                                        * CFrame.new(0, 0, Options["Set_Distance"].Value)
                                                }
                                            )
                                            W:Play()
                                            wait(T / Speed2)
                                        until not getgenv().SaveSettings["Auto_Farm_Dimensions"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Behind"
                                    end
                                    task.wait()
                                elseif Options["Select_Mode"].Value == "Above" then
                                    for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            local T =
                                                (n.Head.Position -
                                                LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if T < 999 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            end
                                            local U = game:service "TweenService"
                                            local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                            local W =
                                                U:Create(
                                                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                V,
                                                {
                                                    CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(180),0,0)
                                                        * CFrame.Angles(math.rad(-90), 0, 0) +
                                                        Vector3.new(0, Options["Set_Distance"].Value, 0)
                                                }
                                            )
                                            W:Play()
                                            wait(T / Speed2)
                                        until not getgenv().SaveSettings["Auto_Farm_Dimensions"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Above"
                                    end
                                    task.wait()
                                elseif Options["Select_Mode"].Value == "Under" then
                                    for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            local T =
                                                (n.Head.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if T < 999 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            end
                                            local U = game:service "TweenService"
                                            local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                            local W =
                                                U:Create(
                                                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                V,
                                                {
                                                    CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(270),0,0)
                                                        * CFrame.Angles(math.rad(90), 0, 0) +
                                                        Vector3.new(0, Options["Set_Distance"].Value, 0)
                                                }
                                            )
                                            W:Play()
                                            wait(T / Speed2)
                                        until not getgenv().SaveSettings["Auto_Farm_Dimensions"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Under"
                                    end
                                    task.wait()
                                end
                            end)
                        end
                    end
                end)
        
        
                task.spawn(function()
                    while task.wait() do
                        if not getgenv().SaveSettings["Auto_Boss_Rush"] then
                            break
                        end
                        if getgenv().SaveSettings["Auto_Boss_Rush"] then
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
                            end)
                            pcall(function()
                                if Options["Select_Mode"].Value == "Behind" then
                                    for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            local T =
                                                (n.HumanoidRootPart.Position -
                                                LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if T < 999 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            elseif T < 1000 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            elseif T >= 1000 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            end
                                            local U = game:service "TweenService"
                                            local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                            local W =
                                                U:Create(
                                                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                V,
                                                {
                                                    CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0),0,0)
                                                        * CFrame.new(0, 0, Options["Set_Distance"].Value)
                                                }
                                            )
                                            W:Play()
                                            wait(T / Speed2)
                                        until not getgenv().SaveSettings["Auto_Boss_Rush"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Behind"
                                    end
                                    task.wait()
                                elseif Options["Select_Mode"].Value == "Above" then
                                    for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            local T =
                                                (n.Head.Position -
                                                LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if T < 999 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            end
                                            local U = game:service "TweenService"
                                            local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                            local W =
                                                U:Create(
                                                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                V,
                                                {
                                                    CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(180),0,0)
                                                        * CFrame.Angles(math.rad(-90), 0, 0) +
                                                        Vector3.new(0, Options["Set_Distance"].Value, 0)
                                                }
                                            )
                                            W:Play()
                                            wait(T / Speed2)
                                        until not getgenv().SaveSettings["Auto_Boss_Rush"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Above"
                                    end
                                    task.wait()
                                elseif Options["Select_Mode"].Value == "Under" then
                                    for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            local T =
                                                (n.Head.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if T < 999 then
                                                Speed2 = getgenv().SaveSettings["Speed"]
                                            end
                                            local U = game:service "TweenService"
                                            local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                            local W =
                                                U:Create(
                                                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                                V,
                                                {
                                                    CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(270),0,0)
                                                        * CFrame.Angles(math.rad(90), 0, 0) +
                                                        Vector3.new(0, Options["Set_Distance"].Value, 0)
                                                }
                                            )
                                            W:Play()
                                            wait(T / Speed2)
                                        until not getgenv().SaveSettings["Auto_Boss_Rush"] or n.Humanoid.Health <= 0 or not n.Parent or not n or Options["Select_Mode"].Value ~= "Under"
                                    end
                                    task.wait()
                                end
                            end)
                        else
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                            end)
                        end
                    end
                end)
        
                -- task.spawn(function()
                --     while task.wait() do
                --         if getgenv().SaveSettings["Auto_AFK_Raid"] then
                --             repeat
                --                 moveto(getNPC().HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0),0,0) + Vector3.new(0,tonumber(1),0), tonumber(85))
                --             until not getgenv().SaveSettings["Auto_AFK_Raid"] or n.Humanoid.Health <= 0 or not n.Parent or not n 
                --         end
                --     end
                -- end)
        
        
                --------------------------- [[ Script: Function Claim ]] ---------------------------
        
                FunctionTask["ClaimDaily"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["ClaimDaily"].Value then
                                if not getgenv().SaveSettings["ClaimDaily"] then
                                    break
                                end
                                wait(3)
                                if getgenv().SaveSettings["ClaimDaily"] then
                                    if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.RightUIFrame.QuestOpen.ExclamationPoint.Visible == true then
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "DailyQuest_Enemies")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "QuestTemplate")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "DailyQuest_Login")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "DailyQuest_TimeChallenge")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "DailyQuest_DungeonClear")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "DailyQuest_Raid")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "DailyQuest_BossRush")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "DailyQuest_AllQuestClear")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "WeeklyQuest_SpeedRaid")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "WeeklyQuest_Raid")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "WeeklyQuest_TimePlayed")
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("CompleteDailyQuest", "WeeklyQuest_Logins")
                                    end
                                end
                            end
                        end
                    end)
                end
                
                FunctionTask["ClaimSpeedRaid"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["ClaimSpeedRaid"].Value then
                                if not getgenv().SaveSettings["ClaimSpeedRaid"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["ClaimSpeedRaid"] then
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 1)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 2)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 3)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 4)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 5)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 6)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 7)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 8)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward", 9)
                                    wait(0.5)
                                end
                            end
                        end
                    end)
                end
        
        
                FunctionTask["ClaimEvent"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["ClaimEvent"].Value then
                                if not getgenv().SaveSettings["ClaimEvent"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["ClaimEvent"] then
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_1")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_2")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_3")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_4")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_5")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_6")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_7")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_8")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_9")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_10")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_11")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("ClaimOnlineReward", "OnlineReward_12")
                                end
                            end
                        end
                    end)
                end
        
                --------------------------- [[ Script: Cards ]] ---------------------------
        
        
                FunctionTask["Sell_Cards"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Sell_Cards"].Value then
                                if not getgenv().SaveSettings["Sell_Cards"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["Sell_Cards"] then
                                    for i,v in pairs(CardInfo) do
                                        for g,c in pairs(LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame:GetChildren()) do
                                            if c:IsA("ImageButton") and c.CardImage and c.CardImage.Image == v.icon then
                                                for ii,vv in pairs(Options["Select_Cards"].Value) do
                                                    if ii == v.rarity then
                                                        MainRemoteFunction:InvokeServer("SellCard",c.Name)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
        
                --------------------------- [[ Script: Cards ]] ---------------------------
                FunctionTask["Auto_Create_Dimensions"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Create_Dimensions"].Value then
                                if not getgenv().SaveSettings["Auto_Create_Dimensions"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["Auto_Create_Dimensions"] then
                                    pcall(function()
                                        local ohString1 = "CreateRoom"
                                        local ohTable2 = {
                                            ["Difficulty"] = Options["Select_Mode_Dimensions"].Value,
                                            ["FriendsOnly"] = false,
                                            ["MapName"] = Options["Select_Dimensions"].Value,
                                            ["Hardcore"] = getgenv().SaveSettings["Auto_Hard_Core"]
                                        }
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(ohString1, ohTable2)
                                        wait(1)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("TeleportPlayers")
                                    end)
                                end
                            end
                        end
                    end)
                end
        
                
                FunctionTask["Auto_Retry"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Retry"].Value then
                                if not getgenv().SaveSettings["Auto_Retry"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["Auto_Retry"] then
                                    if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.Visible == true then
                                        game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer("RetryDungeon")
                                    end
                                end
                            end
                        end
                    end)
                end
        
        
                --------------------------- [[ Script: Equip BestCard ]] ---------------------------
        
                local Rarities = {
                    [1] = "Mythic",
                    [2] = "Legendary",
                    [3] = "Epic",
                    [4] = "Rare",
                    [5] = "Uncommon",
                    [6] = "Common"
                }        
                FunctionTask["Auto_Equip_BestCard"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Equip_BestCard"].Value then
                                if not getgenv().SaveSettings["Auto_Equip_BestCard"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["Auto_Equip_BestCard"] then
                                    local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
                                    local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
                                    for _, card in pairs(K:GetChildren()) do
                                        if card:IsA("ImageButton") then
                                            for _, event in next, getconnections(card.CardClick.MouseButton1Down) do
                                                event:Fire()
                                                local rarityText = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
            
                                                if rarityText == Rarities[1] then
                                                    EquipCard(card.Name)
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
        
                --------------------------- [[ Script: Capsule ]] ---------------------------
        
                FunctionTask["Auto_Capsule"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Capsule"].Value then
                                if not getgenv().SaveSettings["Auto_Capsule"] then
                                    break
                                end
                                wait(.5)
                                if getgenv().SaveSettings["Auto_Capsule"] then
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer("BuyEgg",Options["Select_Capsule"].Value)
                                    wait(1)
                                end
                            end
                        end
                    end)
                end
        
        
        
        
                --------------------------- [[ Script: Dodge ]] ---------------------------
        
        
        
                task.spawn(function()
                    while true do
                        if not getgenv().SaveSettings["Auto_Dodge"] then
                            break
                        end
                        if getgenv().SaveSettings["Auto_Dodge"] then
                            pcall(function()
                                Dodge()
                            end)
                            task.wait()
                        end
                    end
                end)
        
                FunctionTask["Auto_Invisible"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Auto_Invisible"].Value then
                                if not getgenv().SaveSettings["Auto_Invisible"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["Auto_Invisible"] then
                                    local NamePlr = game:GetService("Players").LocalPlayer.Name
                                    for i,v in pairs(workspace.Folders.Players[NamePlr]:GetChildren()) do
                                        if v.Name == "LowerTorso" then
                                            v:Destroy()
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
        
                FunctionTask["Hide_Name"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Hide_Name"].Value then
                                if not getgenv().SaveSettings["Hide_Name"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["Hide_Name"] then
                                    for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                                        if v:IsA("BillboardGui") then
                                            v:Remove()
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
        
                FunctionTask["Kick_Rejoin"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Kick_Rejoin"].Value then
                                if not getgenv().SaveSettings["Kick_Rejoin"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["Kick_Rejoin"] then
                                    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
                                    function(a3)
                                        if
                                            a3.Name == "ErrorPrompt" and a3:FindFirstChild("MessageArea") and
                                                a3.MessageArea:FindFirstChild("ErrorFrame")
                                         then
                                            game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
                                        end
                                    end
                                )
                                end
                            end
                        end
                    end)
                end
        
                task.spawn(function()
                    while true do task.wait()
                        pcall(function()
                            local speed = Options["Walk_Speed"].Value
                            LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
                        end)
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        pcall(function()
                            local power = Options["Jump_Power"].Value
                            if LocalPlayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
                                LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = power
                            else
                                LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = power
                            end
                        end)
                    end
                end)
        
                FunctionTask["Web_Hook"] = function()
                    pcall(function()
                        while wait() do
                            if Library.Unloaded then break end
                            if Toggles["Web_Hook"].Value then
                                if not getgenv().SaveSettings["Web_Hook"] then
                                    break
                                end
                                wait(2)
                                if getgenv().SaveSettings["Web_Hook"] then
                                    if LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.Visible or LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.RaidResultUI then
                                        if Options["Webhook_Url"].Value ~= "" then
                                            webhook()
                                            wait(300)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
        
                --------------------------- [[ Run Task ]] ---------------------------
        
                for TaskName,TaskFunction in pairs(FunctionTask) do
                    coroutine.wrap(function()
                        repeat task.wait(1) until Toggles[TaskName] ~= nil and Toggles[TaskName].Value == true
                        TaskFunction()
                    end)()
                end
            end
        end
        Load_ADS()
    elseif games == "ShindoLife" then
        warn("ShindoLife Successfully")
        function Load_SHINDO()
            local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/rayrei0112/Pampel/main/pepsi.lua"))()
            local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops
        
            local PepsisWorld = library:CreateWindow({
                Name = "Zeta Hub | Shindo Life",
                Themeable = {
                    Info = "Discord Server: discord.gg/qynSBZTdpQ"
                }
            })
        
            local General_Tab = PepsisWorld:CreateTab({
                Name = "General" -- Name
            })
        
            --- Main ---
                local Shindo_Life_Map = {
                    [5431069982] = "Akatsuki",
                    [5431071837] = "Training",
                    [4601350394] = "Sand",
                    [5743370338] = "arenax",
                    [5447073001] = "Forest",
                    [5824792748] = "war",
                    [4601350760] = "Mist",
                    [4601350656] = "Cloud",
                    [6341670805] = "Conquest",
                    [5943872934] = "World",
                    [4601350214] = "Leaf",
                    [4601350809] = "Stone",
                    [5451401540] = "ShindaiValley",
                    [5084678830] = "Rain",
                    [5451398863] = "Narumaki",
                    [590798306] = "none",
                    [7923764447] = "Jejunes",
                    [6901575446] = "Tempest",
                    [7554179068] = "gladiator",
                    [5307141034] = "shindostorm",
                    [6986372023] = "NewEmber",
                    [4616652839] = 'ShindoLife',
                    [8184506020] = "Mentors",
                    [6984568732] = "eventemberpain",
                    [7214033433] = "forgedevent",
                    [7534339269] = "shindaievent",
                    [8472733618] = "kagokuevent",
                    [9310522814] = "jinshikievent",
                    [7524809704] = "DungeonsHub",
                    [7524811367] = "dungeon1",
                    [5451405681] = "vinland"
                }
            if not Shindo_Life_Map[game.PlaceId] then return end
        
            _G.Save = {
                ["Automaru"] = false,
                ["Autofarm"] = false,
                ["Slotlist"] = {},
                ["Spinlist"] = {"akimichi","aduritewood","shisuisharingan","sengoku","bolt","rinnegan","sasukesharingan","whitelightning","byakugangold","itachisharingan","namikazegod","bubble","obitosharingan","boil","byakugan","crystal","dust","earth","explosion","fire","golddust","hoshigaki","ice","ironsand","kaguya","kamizuru","ketsuryugan","lava","lightning","mud","namikaze","nara","sand","sarutobi","scorch","senjuwood","sharingan","shirogane","storm","uzumaki","water","wind","wood","yukiice","clay","jashin","blacklightning","paper","inuzuka","tenseigan","sound","azimsenko","aburame","purplelightning","saberu","kenichi","dangan","combustion","riser","yang","yin","acid","renshiki","cement","gale","shindaiakuma","seishin","ink","frost","hair","inferno","vine","raionrengoku","mechaspirit","odinsaberu","lightjokei","darkjokei","pikapika","snakegreen","giovannishizen","jotaroshizen","snakewhite","chaos","emerald","devarengoku","devasengoku","typhoon","order","ghostazarashi","infernoazarashi","narumaki","varietymud","xenodokei","narumakiyang","renshikigold","goldlightning","forgedsengoku","forgedrengoku","blood","tsunami","smoke","raionsengoku","borumaki","kamakipurple","kamaki","borumakigold","sarachiasharingan","sarachiasharingangold","minakaze","windbreathing","waterbreathing","thunderbreathing","flamebreathing","mistbreathing","moonbreathing","sunbreathing","infernobreathing","shindairengokuyang","shindairengoku","bloodmoonbreathing","godinsect","ryujikenichi","shiverbreathing","minakazeazure","narumakiruby","jayramaki","ryujikenichiwhite","horsemankorashi","bankaiinferno","jayramazure","raionazure","satorirengoku","satorigold","riserinferno","dokuscorpion","dokutengoku","namikazegodazure","goldjokei","alphiramashizen","spiderman","toshiroice","kagoku","kagokuplatinum","sengokuinferno","morbius","menza","tengokuplatinum","obirengoku","batman","narumakisixpaths","soundbreathing","raiongaiden","sengokugaiden","sunknight","namikazegodrose","jinshikiekg","drstrange","drfate"},
                ["KillAR"] = false,
                ["Autorank"] = false,
                ["listevent"] = false,
                ["lalalistevent"] = "",
                ["Rankmax"] = false,
                ["Claimhee"] = false,
                ["scrollMS"] = false,
                ["KKFC"] = false,
                ["KKFCMAX"] = false,
                ["Autostats"] = false,
                ["liststats"] = {},
                ["train"] = false,
                ["Autoboss"] = false,
                ["Nocool"] = false,
                ["spawmE"] = false,
                ["skipsc"] = false,
                ["killmob"] = false,
                ['Savestt'] = false,
                ['Loadtt'] = false,
                ["KKFC"] = false,
                ["KKFCMAX"] = false,
                ["train"] = false,
                ["Autospin"] = false,
                ['listfarm'] = {},
                ['listquestt'] = {},
                ["points"] = 1,
                ["elementlistman"] = {},
                ["elementlist"] = {},
            }
        
            if game.PlaceId == 4616652839 then
                Editmain = true
            end
        
            local listquest = {"storymission","dirt","weeds","defeat","graffiti","envelope","grocerybag","cat"}
            local liststats = {"health", "taijutsu", "ninjutsu", "chakra"}
            local points = 1
            slot = {"kg1", "kg2", "kg3", "kg4", "element1", "element2", "element3", "element4"}
            local quest_table = {}
            local killmob = _G.killmob
        
            local baglist = game:GetService("Players").LocalPlayer.PlayerGui.Main.Customization.Genkaibag.Frame2.BossTab
        
            for i,v in pairs(baglist:GetChildren()) do
                if v:IsA("Frame") and not table.find(_G.Save["elementlist"], tostring(v.Name)) then
                    table.insert(_G.Save["elementlist"], tostring(v.Name))
                end
            end
        
            function killaura()
                for i,v in pairs(workspace.npc:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                        for i = 1, 10 do
                            task.spawn(function()
                                pcall(function()
                                    v.Humanoid.Health = 0
                                end)                                
                            end)
                        end
                    end                            
                end
            end
        
            local function GetScroll()
                for i,v in pairs(workspace:GetChildren()) do
                    if v:IsA("Model") and v:FindFirstChild("sh") and Plyr:DistanceFromCharacter(v:FindFirstChild("sh").Position) <= 5000 and v:FindFirstChild("sh").CFrame.p ~= Vector3.new(0, -40000, 0) then
                        return v:FindFirstChild("sh")
                    end
                end
                return nil
            end
        
            local function checkquest()
                for i,v in pairs(game:GetService("Workspace").bossdropmission.missions:GetChildren()) do 
                    if v:FindFirstChild("missiongiver") then
                        for ii,vv in pairs(v:GetChildren()) do
                            if vv:FindFirstChild("Talk") and vv:FindFirstChild("Talk"):FindFirstChild("typ") and vv:FindFirstChild("Talk"):FindFirstChild("typ").Value == "storymission" and vv:FindFirstChild("Talk"):FindFirstChild("cooldown").Value == -1 and vv:FindFirstChild("Talk"):FindFirstChild("accepted").Value == false then
                                return vv
                            end
                        end
                    end
                end
                for i,v in pairs(game:GetService("Workspace").missiongivers:GetChildren()) do
                    if v:FindFirstChild("Talk") and v:FindFirstChild("Talk"):FindFirstChild("typ") and v:FindFirstChild("Talk"):FindFirstChild("typ").Value and v:FindFirstChild("Head") and v:FindFirstChild("Head"):FindFirstChild("givemission").Enabled then 
                        return v
                    end
                end
                return nil
            end
        
            local function checkboss()
                for i,v in pairs(game:GetService("Workspace").MARUmission.missions.Hollow2.missiongiver:GetChildren()) do
                    if v:FindFirstChild("Talk") and v:FindFirstChild("Talk"):FindFirstChild("typ") and v:FindFirstChild("Talk"):FindFirstChild("typ").Value == "storymission" and v:FindFirstChild("Talk"):FindFirstChild("cooldown").Value == -1 and v:FindFirstChild("Talk"):FindFirstChild("accepted").Value == false then
                        return v
                    end
                end
                return nil
            end
        
            task.spawn(function()
                while true do wait()
                    if true then
                        for i,v in pairs(game:GetService("Workspace").ClientEffects:GetChildren()) do
                            if v.Name == "fireball" then
                                v:Destroy()    
                            end
                        end
                    end
                end
            end)
        
        
            local HttpService = game:GetService("HttpService")
            --print(HttpService:JSONEncode(_G.Save))
        
            function Savefiles()
                if isfile("Zeta.JSON") == true then
                    writefile("Zeta.JSON", tostring(HttpService:JSONEncode(_G.Save)))
                end
            end
        
            function Loadflies()
                if isfile("Zeta.JSON") == false then
                    writefile("Zeta.JSON", tostring(HttpService:JSONEncode(_G.Save)))
                else
                    local contents = readfile("Zeta.JSON")
                    for i,v in pairs(HttpService:JSONDecode(contents)) do
                        _G.Save[i] = v
                    end
                end
            end
            Loadflies()
        
        
            -- Aniti AFK
            local VirtualUser = game:GetService('VirtualUser')
            game:GetService('Players').LocalPlayer.Idled:connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        
            local Plyr = game:GetService("Players").LocalPlayer
        
            if syn then
                spawn(function()
                    game:GetService("RunService").Heartbeat:Connect(function()
                        pcall(function()
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and _G.Save["Autofarm"] then
                            setfflag("HumanoidParallelRemoveNoPhysics", "False")
                            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                        end
                    end)
                    end)
                end)
            end
        
            ---- value ---
        
            local Questnakub = General_Tab:CreateSection({
                Name = "Quest", -- Name
                Side = 'Left' -- Left or Right
            })
        
        
            local Questdf = Questnakub:AddLabel({
                Text = "defeat :"
            })
        
            local Questgroo = Questnakub:AddLabel({
                Text = "cat : "
            })
        
            local Questez = Questnakub:AddLabel({
                Text = "weeds : "
            })
        
            local Questkuay = Questnakub:AddLabel({
                Text = "grocerybag : "
            })
        
            local Questtopmarket = Questnakub:AddLabel({
                Text = "graffiti : "
            })
        
            local Questbanana = Questnakub:AddLabel({
                Text = "dirt : "
            })
        
            pcall(function()
                for i,v in pairs(workspace.missiongivers:GetChildren()) do
                    if v:FindFirstChild("Talk") and v:FindFirstChild("Talk"):FindFirstChild("typ") and not table.find(quest_table, v:FindFirstChild("Talk"):FindFirstChild("typ").Value) then
                        quest_table[v:FindFirstChild("Talk"):FindFirstChild("typ").Value] = {
                            Value = 0
                        }
                    end
                end
        
                for i,v in pairs(workspace.missiongivers:GetChildren()) do
                    if v:FindFirstChild("Talk") and v:FindFirstChild("Talk"):FindFirstChild("typ") and quest_table[v:FindFirstChild("Talk"):FindFirstChild("typ").Value] then
                    quest_table[v:FindFirstChild("Talk"):FindFirstChild("typ").Value].Value = quest_table[v:FindFirstChild("Talk"):FindFirstChild("typ").Value].Value + 1
                    end
                end
        
        
                task.spawn(function()
                    while true do wait()
                        local quest_table = {}
                        for i,v in pairs(workspace.missiongivers:GetChildren()) do
                            if v:FindFirstChild("Talk") and v:FindFirstChild("Talk"):FindFirstChild("typ") and not table.find(quest_table, v:FindFirstChild("Talk"):FindFirstChild("typ").Value) then
                                quest_table[v:FindFirstChild("Talk"):FindFirstChild("typ").Value] = {
                                    Value = 0
                                }
                            end
                        end
                        
                        for i,v in pairs(workspace.missiongivers:GetChildren()) do
                            if v:FindFirstChild("Talk") and v:FindFirstChild("Talk"):FindFirstChild("typ") and quest_table[v:FindFirstChild("Talk"):FindFirstChild("typ").Value] then
                                quest_table[v:FindFirstChild("Talk"):FindFirstChild("typ").Value].Value = quest_table[v:FindFirstChild("Talk"):FindFirstChild("typ").Value].Value + 1
                            end
                        end
        
                        for i,v in pairs(quest_table) do
                            if i == "defeat" then
                                Questdf:Set("defeat : "..tostring(v.Value))
                            elseif i == "cat" then
                                Questgroo:Set("cat : "..tostring(v.Value))
                            elseif i == "weeds" then
                                Questez:Set("weeds : "..tostring(v.Value))
                            elseif i == "grocerybag" then
                                Questkuay:Set("grocerybag : "..tostring(v.Value))
                            elseif i == "graffiti" then
                                Questtopmarket:Set("graffiti : "..tostring(v.Value))
                            elseif i == "dirt" then
                                Questbanana:Set("dirt : "..tostring(v.Value))
                            end
                        end
                    end
                end)
            end)
        
            local Mains = General_Tab:CreateSection({
                Name = "Main", -- Name
                Side = 'Left' -- Left or Right
            })
        
            Mains:AddDropdown({
                Name = 'Select Farm',
                Value = _G.Save['listfarm'],
                List = listquest,
                Multi = true,
                Callback = function(bool)
                    _G.Save['listfarm'] = bool
                end,
            })
        
            Mains:AddToggle({
                Name = 'Auto Farm',
                Value = _G.Save["Autofarm"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["Autofarm"] = bool
                end,
            })
        
            Mains:AddToggle({
                Name = 'Kill Aura',
                Value = _G.Save["KillAR"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["KillAR"] = bool
                end,
            })
        
            Mains:AddToggle({
                Name = 'Auto Rank',
                Value = _G.Save["Autorank"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["Autorank"] = bool
                end,
            })
        
            Mains:AddToggle({
                Name = 'Auto Rank (Z3 - Max)',
                Value = _G.Save["Rankmax"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["Rankmax"] = bool
                end,
            })
        
            Mains:AddToggle({
                Name = 'Auto Claim',
                Value = _G.Save["Claimhee"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["Claimhee"] = bool
                end,
            })
        
            Mains:AddToggle({
                Name = 'Auto Scroll',
                Value = _G.Save["scrollMS"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["scrollMS"] = bool
                end,
            })
        
        
            task.spawn(function()
                while true do
                    task.wait()
                    if _G.Save["Autofarm"] then
                        pcall(function()
                            if Plyr.currentmission.Value == nil then
                                local qt = checkquest()
                                warn(qt)
                                if qt ~= nil then
                                    repeat
                                        Plyr.Character.HumanoidRootPart.CFrame = qt.HumanoidRootPart.CFrame * CFrame.new(2,0,0)
                                        qt.CLIENTTALK:FireServer()
                                        qt.CLIENTTALK:FireServer("accept")
                                        wait()
                                    until qt == nil or qt.Head.givemission.Enabled == false or not _G.Save["Autofarm"]
                                end
                            else
                                if Plyr.currentmission.Value.objective.Value == "Mission" then
                                    local a = Plyr:WaitForChild("currentmission").Value.text.Value
                                    if Plyr:WaitForChild("currentmission").intercept.Value then
                                        a = Plyr:WaitForChild("currentmission").Value.enemytext.Value
                                    end
                                    local b = a
                                    local c = b:gsub('Defeat ', '')
                                    local d = c:gsub('%)', '')
                                    local e = d:gsub('%(', '')
                                    for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("npctype") and string.match(tostring(e), tostring(v:FindFirstChild("npctype").Value)) and v:FindFirstChild("Head") and v.ClassName == "Model" and v.Head.CFrame.Y > -1000  then
                                            repeat
                                                local args = {
                                                    [1] = "mouse1",
                                                    [2] = true
                                                }
                                                Plyr.Character.combat.update:FireServer(unpack(args))
                                                wait()
                                                local args = {
                                                    [1] = "mouse1",
                                                    [2] = false
                                                }
                                                Plyr.Character.combat.update:FireServer(unpack(args))
                                                wait(.5)
                                                Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,5)
                                                wait()
                                                killaura()
                                            wait()
                                            until not v.Parent or Plyr.currentmission.Value == nil or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not v:FindFirstChild("HumanoidRootPart") or not _G.Save["Autofarm"] or _G.killmob == false
                                        end
                                    end
                                elseif Plyr.currentmission.Value.objective.Value == "Delivery" then
                                        if Plyr.currentmission.Value:FindFirstChild("envelope") then
                                            repeat
                                                Plyr.Character.HumanoidRootPart.CFrame = Plyr.currentmission.Value.point.Value
                                                wait()
                                            until Plyr.currentmission.Value == nil or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not Plyr.currentmission.Value:FindFirstChild("envelope") or not _G.Save["Autofarm"]
                                        end
                                elseif Plyr.currentmission.Value.objective.Value == "Cleaning" then
                                    for i,v in pairs(game:GetService("Workspace").missiontypes.getspawns:FindFirstChild(tostring(game.PlaceId)):FindFirstChild("grafitti"):GetChildren()) do
                                        if v:FindFirstChild("taken").Value == true then
                                            repeat
                                                Plyr.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(-2,0,0) * CFrame.Angles(math.rad(180),0,0)
                                                wait(1)
                                                fireclickdetector(v.ClickDetector)
                                            wait()
                                            until Plyr.currentmission.Value == nil or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or v:FindFirstChild("taken").Value == false or not _G.Save["Autofarm"]
                                        end
                                    end
                                    wait(.5)
                                    for i,v in pairs(game:GetService("Workspace").missiontypes.getspawns:FindFirstChild(tostring(game.PlaceId)):FindFirstChild("dirt"):GetChildren()) do
                                        if v:FindFirstChild("taken").Value == true then
                                            repeat
                                                Plyr.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,2,0) * CFrame.Angles(math.rad(180),0,0)
                                                wait(2.5)
                                                fireclickdetector(v.ClickDetector)
                                                wait(2)
                                            wait(1)
                                            until Plyr.currentmission.Value == nil or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or v:FindFirstChild("taken").Value == false or not _G.Save["Autofarm"]
                                        end
                                    end
                                elseif Plyr.currentmission.Value.objective.Value == "Lost and Found" then
                                    if Plyr.currentmission.Value:FindFirstChild("cat") then
                                        repeat
                                            Plyr.Character.HumanoidRootPart.CFrame = Plyr.currentmission.Value.point.Value
                                        wait(.2)
                                        until Plyr.currentmission.Value == nil or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not Plyr.currentmission.Value:FindFirstChild("cat") or not _G.Save["Autofarm"]
                                    end
                                elseif Plyr.currentmission.Value.objective.Value == "Gardening" then
                                    for i,v in pairs(game:GetService("Workspace").missiontypes.getspawns:FindFirstChild(tostring(game.PlaceId)):FindFirstChild("weeds"):GetChildren()) do
                                        if v:FindFirstChild("taken").Value == true then
                                            repeat
                                                Plyr.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,2,0) * CFrame.Angles(math.rad(180),0,0)
                                                wait(2)
                                                fireclickdetector(v.ClickDetector)
                                            wait()
                                            until Plyr.currentmission.Value == nil or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or v:FindFirstChild("taken").Value == false or not _G.Save["Autofarm"]
                                        end
                                    end
                                elseif Plyr.currentmission.Value.objective.Value == "Groceries" then
                                    if Plyr.currentmission.Value:FindFirstChild("grocerybag") then
                                        repeat
                                            Plyr.Character.HumanoidRootPart.CFrame = Plyr.currentmission.Value.point.Value
                                        wait()
                                        until Plyr.currentmission.Value == nil or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not Plyr.currentmission.Value:FindFirstChild("grocerybag") or not _G.Save["Autofarm"]
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do wait()
                    if _G.Save["Autofarm"] then
                        pcall(function()
                            if Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not _G.Save["Autofarm"] then
                                local acc = checkquest()
                                repeat
                                    Plyr.Character.HumanoidRootPart.CFrame = acc.HumanoidRootPart.CFrame
                                    acc.CLIENTTALK:FireServer()
                                    acc.CLIENTTALK:FireServer("accept")
                                    wait()
                                until acc.accepted.Value == true or not _G.Save["Autofarm"]
                            else
                                if Plyr.PlayerGui.Main.ingame.Missionstory.Visible == true then
                                    local a = Plyr:WaitForChild("currentmission").Value.text.Value
                                    if Plyr:WaitForChild("currentmission").intercept.Value then
                                        a = Plyr:WaitForChild("currentmission").Value.enemytext.Value
                                    end
                                    local b = a
                                    local c = b:gsub('Defeat ', '')
                                    local d = c:gsub('%)', '')
                                    local e = d:gsub('%(', '')
                                    for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("npctype") and string.match(tostring(e), tostring(v:FindFirstChild("npctype").Value)) and v:FindFirstChild("Head") and v.ClassName == "Model" and v.Head.CFrame.Y > -1000  then
                                            repeat
                                                local args = {
                                                    [1] = "mouse1",
                                                    [2] = true
                                                }
                                                Plyr.Character.combat.update:FireServer(unpack(args))
                                                wait(1)
                                                local args = {
                                                    [1] = "mouse1",
                                                    [2] = false
                                                }
                                                Plyr.Character.combat.update:FireServer(unpack(args))
                                                wait(.5)
                                                Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,5)
                                                killaura()
                                                wait(.2)
                                            until not v.Parent or Plyr.currentmission.Value == nil or v.Humanoid.Health <= 0 or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not v:FindFirstChild("HumanoidRootPart") or not _G.Save["Autofarm"] 
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if _G.Save["KillAR"] then
                        killaura()
                    end
                end
            end)
        
        
            local Kaitans = General_Tab:CreateSection({
                Name = "Kaitan", -- Name
                Side = 'Left' -- Left or Right
            })
        
            Kaitans:AddToggle({
                Name = 'Auto Kaitan',
                Value = _G.Save["KKFC"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["KKFC"] = bool
                end,
            })
        
            Kaitans:AddToggle({
                Name = 'Auto Kaitan(Z3 - Max)',
                Value = _G.Save["KKFCMAX"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["KKFCMAX"] = bool
                end,
            })
        
            Kaitans:AddToggle({
                Name = 'Auto Train',
                Value = _G.Save["train"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["train"] = bool
                end,
            })
        
            task.spawn(function ()
                while true do
                    if _G.Save["train"] then
                        pcall(function ()
                            for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                                if v.Name == "logtraining" then
                                    VirtualUser:CaptureController()
                                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                                    Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(360),0,0)
                                end 
                            end
                        end)
                    end
                    wait()
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if _G.Save["Autorank"] or _G.Save["KKFC"] then
                        pcall(function ()
                            if Plyr.statz.lvl:FindFirstChild("lvl").Value == 1000 then
                                Plyr.startevent:FireServer("rankup")
                                wait()
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do wait()
                    if _G.Save["KKFC"] then
                        pcall(function()
                            if Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not _G.Save["KKFC"] then
                                local acc = checkquest()
                                if acc == nil then
                                    hopserver()
                                end
                                repeat
                                    Plyr.Character.HumanoidRootPart.CFrame = acc.HumanoidRootPart.CFrame
                                    acc.CLIENTTALK:FireServer()
                                    acc.CLIENTTALK:FireServer("accept")
                                    wait(.5)
                                until acc.accepted.Value == true or _G.Save["KKFC"] 
                            elseif Plyr.PlayerGui.Main.ingame.Missionstory.Visible == true then
                                local a = Plyr:WaitForChild("currentmission").Value.text.Value
                                if Plyr:WaitForChild("currentmission").intercept.Value then
                                    a = Plyr:WaitForChild("currentmission").Value.enemytext.Value
                                end
                                local b = a
                                local c = b:gsub('Defeat ', '')
                                local d = c:gsub('%)', '')
                                local e = d:gsub('%(', '')
                                for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("npctype") and string.match(tostring(e), tostring(v:FindFirstChild("npctype").Value)) and v:FindFirstChild("Head") and v.ClassName == "Model" and v.Head.CFrame.Y > -1000  then
                                        repeat
                                            local args = {
                                                [1] = "mouse1",
                                                [2] = true
                                            }
                                            Plyr.Character.combat.update:FireServer(unpack(args))
        
                                            local args = {
                                                [1] = "mouse1",
                                                [2] = false
                                            }
                                            Plyr.Character.combat.update:FireServer(unpack(args))
                                            Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,5)
                                            wait(.2)
                                            killaura()
                                            wait(.2)
                                        until not v.Parent or Plyr.currentmission.Value == nil or v.Humanoid.Health <= 0 or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not v:FindFirstChild("HumanoidRootPart") or not _G.Save["KKFC"]
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do wait()
                    if _G.Save["KKFCMAX"] then
                        pcall(function()
                            if Plyr.statz.lvl:FindFirstChild("lvl").Value == 1000 then
                                game:GetService("Players").LocalPlayer.startevent:FireServer("maxlvlpres")
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do wait()
                    if _G.Save["KKFCMAX"] then
                        pcall(function()
                            if Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not _G.Save["KKFCMAX"] then
                                local yes = checkquest()
                                if yes == nil then
                                    hopserver()
                                end
                                repeat
                                    Plyr.Character.HumanoidRootPart.CFrame = yes.HumanoidRootPart.CFrame
                                    yes.CLIENTTALK:FireServer()
                                    yes.CLIENTTALK:FireServer("accept")
                                    wait(.5)
                                until yes.accepted.Value == true or _G.Save["KKFCMAX"] 
                            elseif Plyr.PlayerGui.Main.ingame.Missionstory.Visible == true then
                                local a = Plyr:WaitForChild("currentmission").Value.text.Value
                                if Plyr:WaitForChild("currentmission").intercept.Value then
                                    a = Plyr:WaitForChild("currentmission").Value.enemytext.Value
                                end
                                local b = a
                                local c = b:gsub('Defeat ', '')
                                local d = c:gsub('%)', '')
                                local e = d:gsub('%(', '')
                                for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("npctype") and string.match(tostring(e), tostring(v:FindFirstChild("npctype").Value)) and v:FindFirstChild("Head") and v.ClassName == "Model" and v.Head.CFrame.Y > -1000  then
                                        repeat
                                            local args = {
                                                [1] = "mouse1",
                                                [2] = true
                                            }
                                            Plyr.Character.combat.update:FireServer(unpack(args))
        
                                            local args = {
                                                [1] = "mouse1",
                                                [2] = false
                                            }
                                            Plyr.Character.combat.update:FireServer(unpack(args))
                                            Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,5)
                                            wait(.2)
                                            killaura()
                                            wait(.2)
                                        until not v.Parent or Plyr.currentmission.Value == nil or v.Humanoid.Health <= 0 or Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not v:FindFirstChild("HumanoidRootPart") or not _G.Save["KKFCMAX"]
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
        
            local Stats = General_Tab:CreateSection({
                Name = "Player Stats", -- Name
                Side = 'Right' -- Left or Right
            })
        
            Stats:AddDropdown({
                Name = "Select Stats",
                Multi = false,
                Value = _G.Save["liststats"],
                List = liststats,
                Callback = function(bool)
                    _G.Save["liststats"] = bool
                end,
            })
        
            Stats:AddToggle({
                Name = 'Auto Stats',
                Value = _G.Save["Autostats"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["Autostats"] = bool
                end,
            })
        
            Stats:AddSlider({
                Name = "Points",
                Min = 0,
                Max = 6000,
                Value = _G.Save["points"],
                Callback = function(bool)
                    _G.Save["points"] = bool
                end,
            })
        
            task.spawn(function()
                while true do wait()
                    if _G.Save["Autostats"] then
                        if _G.Save["liststats"] == "health" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("addstat", "health", _G.Save["points"])
                        end
                        if  _G.Save["liststats"] == "taijutsu" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("addstat", "taijutsu", _G.Save["points"])
                        end
                        if  _G.Save["liststats"] == "ninjutsu" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("addstat", "ninjutsu", _G.Save["points"])
                        end
                        if  _G.Save["liststats"] == "chakra" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("addstat", "chakra", _G.Save["points"])
                        end
                    end
                end
            end)
        
            local Events = General_Tab:CreateSection({
                Name = "Events", -- Name
                Side = 'Right' -- Left or Right
            })
        
            Events:AddLabel({
                Text = "--- Anti AFK Work!!!!!!!!!! ---"
            })
        
            local listevent = {"eventemberpain", "forgedevent", "shindaievent", "kagokuevent", "jinshikievent"}
            Events:AddDropdown({
                Name = "Select Events",
                Multi = false,
                List = listevent,
                Value = _G.Save["lalalistevent"],
                Callback = function(bool)
                    _G.Save["lalalistevent"] = bool
                end,
            })
        
            Events:AddToggle({
                Name = 'Teleport',
                Value = _G.Save["listevent"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["listevent"] = bool
                end,
            })
        
            Events:AddToggle({
                Name = 'Auto Boss',
                Value = _G.Save["Autoboss"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["Autoboss"] = bool
                end,
            })
        
            Events:AddToggle({
                Name = 'No cool down (Skill Z)',
                Value = _G.Save["Nocool"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["Nocool"] = bool
                end,
            })
        
            Events:AddToggle({
                Name = 'Spam E',
                Value = _G.Save["spawmE"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["spawmE"] = bool
                end,
            })
        
            Events:AddToggle({
                Name = 'Skip Cutscene',
                Value = _G.Save["skipsc"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["skipsc"] = bool
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    if _G.Save["listevent"] then
                        if _G.Save["lalalistevent"] == "eventemberpain" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("eventemberpain")
                        end
                        if _G.Save["lalalistevent"] == "forgedevent" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("forgedevent")
                        end
                        if _G.Save["lalalistevent"] == "shindaievent" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("shindaievent")
                        end
                        if _G.Save["lalalistevent"] == "kagokuevent" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("kagokuevent")
                        end
                        if _G.Save["lalalistevent"] == "jinshikievent" then
                            game:GetService("Players").LocalPlayer.startevent:FireServer("jinshikievent")
                        end
                    end
                end
            end)
        
            task.spawn(function()
                while true do wait()
                    if _G.Save["scrollMS"] then
                        local Scroll = GetScroll()
                        if _G.Save["scrollMS"] and Scroll ~= nil then
                            Plyr.Character.HumanoidRootPart.CFrame = Scroll.CFrame
                            if Plyr:DistanceFromCharacter(Scroll.Position) <= 10 then
                                fireclickdetector(Scroll:FindFirstChild("ClickDetector"))
                            end
                        end
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if _G.Save["Autoboss"] then
                        local Scroll = GetScroll()
                        if _G.Save["scrollMS"] and Scroll ~= nil then
                            Plyr.Character.HumanoidRootPart.CFrame = Scroll.CFrame
                            if Plyr:DistanceFromCharacter(Scroll.Position) <= 10 then
                                fireclickdetector(Scroll:FindFirstChild("ClickDetector"))
                            end
                        else
                            for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                                if v:FindFirstChild("npctype") and v:FindFirstChild("npctype").Value and v:FindFirstChild("npctype").Value == "Jinshiki" then
                                    Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,40,5)
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v.HumanoidRootPart.Position)                        Plyr.CameraMaxZoomDistance = 0.5
                                elseif v:FindFirstChild("npctype") and v:FindFirstChild("npctype").Value and v:FindFirstChild("npctype").Value == "Deva" then
                                    Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,40,5)
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v.HumanoidRootPart.Position)
                                    Plyr.CameraMaxZoomDistance = 0.5
                                elseif v:FindFirstChild("npctype") and v:FindFirstChild("npctype").Value and v:FindFirstChild("npctype").Value == "Forged" then
                                    Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,55,5)
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v.HumanoidRootPart.Position)
                                    Plyr.CameraMaxZoomDistance = 0.5
                                elseif v:FindFirstChild("npctype") and v:FindFirstChild("npctype").Value and v:FindFirstChild("npctype").Value == "Shindai Rengoku" then
                                    Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,40,5)
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v.HumanoidRootPart.Position)
                                    Plyr.CameraMaxZoomDistance = 0.5
                                elseif v:FindFirstChild("npctype") and v:FindFirstChild("npctype").Value and v:FindFirstChild("npctype").Value == "Kagoku" then
                                    Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,40,5)
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v.HumanoidRootPart.Position)
                                    Plyr.CameraMaxZoomDistance = 0.5
                                end
                            end
                        end
                    else
                        Plyr.CameraMaxZoomDistance = 30
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if _G.Save["Nocool"] then
                        pcall(function()
                            if not game.Players.LocalPlayer.Character:FindFirstChild("bodyeffect") then
                                Plyr.Character.combat.update:FireServer("key", "z")
                            end
                            wait(5)
                            game.Players.LocalPlayer.Character.combat.mode:Destroy()
                        end)
                    end
            end
            end)
        
            function nocool()
                if not game.Players.LocalPlayer.Character:FindFirstChild("bodyeffect") then
                    Plyr.Character.combat.update:FireServer("key", "z")
                else
                    workspace.VC.RemoteEvent:FireServer("!spirit")
                    wait(.5)
                    if pcall(function() return game:GetService("Players").LocalPlayer.PlayerGui.Main.ingame.chat end) then
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.ingame.chat.Visible = false
                    end
                    workspace.Camera.CameraSubject = Plyr.Character
                    wait(.5)
                    if Plyr.Character:FindFirstChild("beserk") then
                        Plyr.Character.beserk:Destroy()
                    end
                    if Plyr.PlayerGui:FindFirstChild("Main"):FindFirstChild("Frame") then
                        Plyr.PlayerGui:FindFirstChild("Main"):FindFirstChild("Frame"):Destroy()
                    end
                end
            end
        
            task.spawn(function()
                while true do wait()
                    if _G.Save["spawmE"] then
                        pcall(function()
                            nocool()
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do wait()
                    if _G.Save["spawmE"] then
                        pcall(function()
                            Plyr.Character.combat.update:FireServer("key", "e")
                            Plyr.Character.combat.update:FireServer("key", "eend")
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                        pcall(function()
                            Plyr.Character.stayonground:Destroy()
                        end)
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    pcall(function()
                    if _G.Save["skipsc"] then
                        game:GetService("Players").LocalPlayer.startevent:FireServer("stopcutscene")
                        Plyr.PlayerGui:FindFirstChild("cutscene"):Remove()
                    end
                    end)
                end
            end)
        
            local Trails = General_Tab:CreateSection({
                Name = "Farm Trail", -- Name
                Side = 'Right' -- Left or Right
            })
        
            Trails:AddLabel({
                Text = "- use with tail and spam E -"
            })
        
            Trails:AddLabel({
                Text = "- Use NinjaTool: Dagai bomb -"
            })
        
            Trails:AddToggle({
                Name = 'MARU (Gen3)',
                Value = _G.Save['Automaru'],
                Locked = false,
                Callback = function(bool)
                    _G.Save['Automaru'] = bool
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                pcall(function()
                        if _G.Save['Automaru'] then
                            if Plyr.PlayerGui.Main.ingame.Missionstory.Visible == false or not _G.Save['Automaru'] then
                                local qut = checkboss()
                                if qut == nil then
                                    hopserver()
                                end
                                repeat
                                    Plyr.Character.HumanoidRootPart.CFrame = qut.HumanoidRootPart.CFrame
                                    qut.CLIENTTALK:FireServer()
                                    qut.CLIENTTALK:FireServer("accept")
                                    wait(.5)
                                until qut.accepted.Value == true or _G.Save['Automaru']
                            elseif Plyr.PlayerGui.Main.ingame.Missionstory.Visible == true then
                                local a = Plyr:WaitForChild("currentmission").Value.text.Value
                                if Plyr:WaitForChild("currentmission").intercept.Value then
                                    a = Plyr:WaitForChild("currentmission").Value.enemytext.Value
                                end
                                local b = a
                                local c = b:gsub('Defeat ', '')
                                local d = c:gsub('%)', '')
                                local e = d:gsub('%(', '')
                                for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                                    if v:FindFirstChild("npctype") and v:FindFirstChild("npctype").Value and v:FindFirstChild("npctype").Value == "Maru" then
                                        Plyr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,40,5)
                                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v.HumanoidRootPart.Position)
                                        Plyr.CameraMaxZoomDistance = 0.5
                                    end
                                end
                            end
                        else
                            Plyr.CameraMaxZoomDistance = 30
                        end
            end)
                end
            end)
        
            local Setting = General_Tab:CreateSection({
                Name = "Setting", -- Name
                Side = 'Right' -- Left or Right
            })
        
            Setting:AddToggle({
                Name = 'Save Setting',
                Value = _G.Save['Savestt'],
                Locked = false,
                Callback = function(bool)
                    _G.Save['Savestt'] = bool
                end,
            })
        
        
            local Spintab = PepsisWorld:CreateTab({
                Name = "Spin" -- Name
            })
        
        
            local Spins = Spintab:CreateSection({
                Name = "Spin", -- Name
                Side = 'Left' -- Left or Right
            })
        
            local statas = Spins:AddLabel({
                Text = ""
            })
        
            Spins:AddLabel({
                Text = "--------"
            })
        
            Spins:AddLabel({
                Text = "BLOOD AND ELEMENT"
            })
        
            Spins:AddLabel({
                Text = "--------"
            })
        
        
            Spins:AddDropdown({
                Name = "Select Bloodline",
                Multi = true,
                List = _G.Save["elementlist"],
                Value = _G.Save["elementlistman"],
                Flag = "selectedBloodline",
                Callback = function(bool)
                    _G.Save["elementlistman"] = bool
                end,
            })
        
            Spins:AddLabel({
                Text = ""
            })
        
            Spins:AddLabel({
                Text = "///Element and Slot///"
            })
        
            Spins:AddDropdown({
                Name = "Select Element and Slot",
                Multi = false,
                List = slot,
                Value = _G.Save["Slotlist"],
                Flag = "selectedElementandSlot",
                Callback = function(bool)
                    _G.Save["Slotlist"] = bool
                end,
            })
        
            Spins:AddToggle({
                Name = 'Auto Spins',
                Value = _G.Save["Autospin"],
                Locked = false,
                Callback = function(bool)
                    _G.Save["Autospin"] = bool
                end,
            })
        
            repeat task.wait() until game:isLoaded()
            repeat task.wait() until game:GetService("Players").LocalPlayer:FindFirstChild("startevent")
                
            tpsrv = game:GetService("TeleportService")
            print("Creating variables")
            game:GetService("Players").LocalPlayer.startevent:FireServer("band", "\128")
                
            print("Starting")
            getgenv().atspn = true
        
            task.spawn(function()
                while getgenv().atspn do
                    wait(.3)
                    if _G.Save["Autospin"] then
                        pcall(function()
                            statas:Set("Rolled: " .. game:GetService("Players").LocalPlayer.statz.main[_G.Save["Slotlist"]].Value)
                            game:GetService("Players").LocalPlayer.startevent:FireServer("spin", _G.Save["Slotlist"])  
                            if game:GetService("Players").LocalPlayer.statz.main[_G.Save["Slotlist"]].Value == _G.Save["elementlistman"] then
                                game:GetService("Players").LocalPlayer.startevent:FireServer("band", "Eye")
                                wait()
                                game.Players.LocalPlayer:Kick("leave you got it leave")
                            end
                            if game:GetService("Players").LocalPlayer.statz.spins.Value <= 1 then
                                tpsrv:Teleport(game.PlaceId, game.Players.LocalPlayer)
                            end
                        end)
                    end
                end
            end)
        end
        Load_SHINDO()
    elseif games == "KL" then
        warn("King Legacy Successfully")
        function Load_KL()
            repeat wait() until game:IsLoaded()
            if game.PlaceId == 6381829480 or game.PlaceId == 5931540094 or game.PlaceId == 4520749081 then
                game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                if game.PlaceId == 5931540094 and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Stats")  then
                    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ChooseMap")
                end
                if game.PlaceId == 6381829480 or game.PlaceId == 4520749081 then
                game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Stats")
                game:GetService("Players").LocalPlayer:WaitForChild("PlayerStats")
                end
            end
            -- bypass tp
            if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
                game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
            end
        
            -- bypass chair
            if oldworld then
                for i,v in pairs(game:GetDescendants()) do
                    if v:IsA("Seat") then
                    v.CFrame = CFrame.new(1000,1000,1000)
                    end
                end
            end
        
            -- Aniti AFK
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                game:GetService('VirtualInputManager'):SendMouseButtonEvent(0,0,0,true,game,0)
                wait()
                game:GetService('VirtualInputManager'):SendMouseButtonEvent(0,0,0,false,game,0)
            end)
        
            if syn then
                spawn(function()
                    game:GetService("RunService").Heartbeat:Connect(function()
                        pcall(function()
                        if SaveSettings["Autofarm"] or SaveSettings["AutonewW"]  or NW_AlreadyGetQuest or SaveSettings["Autosea"] or SaveSettings["AutoseaHop"] or SaveSettings["AutoGhostS"] or SaveSettings["AutoGhostSHop"] or SaveSettings["CollectGhost"] or SaveSettings["Onimask"] or SaveSettings["kaidouHop"] or SaveSettings["kaidou"] or SaveSettings["Autoboss"] or SaveSettings["Tengumask"] 
                        or SaveSettings["SaveType"] or SaveSettings["farmplayers"] then
                            setfflag("HumanoidParallelRemoveNoPhysics", "False")
                            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                        end
                    end)
                    end)
                end)
            end
        
        
        
        
            local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/rayrei0112/Pampel/main/pepsi.lua"))()
            local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops
        
            local PepsisWorld = library:CreateWindow({
                Name = "Zeta Hub",
                Themeable = {
                    Info = "Discord Server: discord.gg/qynSBZTdpQ"
                }
            })
        
            local General_Tab = PepsisWorld:CreateTab({
                Name = "General" -- Name
            })
        
            local Toggle_Section = General_Tab:CreateSection({
                Name = "Autofarm", -- Name
                Side = 'Left' -- Left or Right
            })
        
            if game.PlaceId == 4520749081 then
                oldworld = true
            elseif game.PlaceId == 6381829480 then
                newworld = true
            end
        
            SaveSettings = {
                ["Autofarm"] = false,
                ["Autoredeem"] = false,
                ["Autosea"] = false,
                ["WeaponType"]  = "Sword",
                ["Autosword"] = false,
                ["AutonewW"] = false,
                ["automelee"] = false,
                ["autodefense"] = false,
                ["autosword"] = false,
                ["autofruit"] = false,
                ["AutoNewWorld"] = false,
                ["Weaponlist"] = {"Fruit Power", "Sword", "Combat"},
                ["Eqweapon"] = false,
                ["weapon"] = nil,
                ["AutoseaHop"] = false,
                ["CollectChest"] = false,
                ["SaveSet"] = false,
                ["SkillZ"] = false,
                ["SkillX"] = false,
                ["SkillC"] = false,
                ["SkillV"] = false,
                ["SkillQ"] = false,
                ["SkillB"] = false,
                ["AutoGhostS"] = false,
                ["CollectGhost"] = false,
                ["AutoGhostSHOP"] = false,
                ["Typefarm"] = {"Above", "Under", "Behind"},
                ["SaveType"] = "Above",
                ["Distance"] = 5,
                ["AutoBuso"] = false,
                ["AutoKen"] = false,
                ["Onimask"] = false,
                ["ListStats"] = {"Melee", "Defense", "Sword", "Devil Fruit"},
                ["Savestats"] = nil,
                ["Pointstats"] = 1,
                ["kaidou"] = false,
                ["kaidouHop"] = false,
                ["Saber"] = false,
                ["SaberHop"] = false,
                ["Bigmom"] = false,
                ["BigmomHop"] = false,
                ["Jitter"] = false,
                ["APole"] = false,
                ["ASunken"] = false,
                ["Aswordshark"] = false,
                ["Atriplekatana"] = false,
                ["Abisento"] = false,
                ["AHellSword"] = false,
                ["AHellSwordHop"] = false,
                ["AMuramasa"] = false,
                ["AMuramasaHop"] = false,
                ["APhoenixBlade"] = false,
                ["APhoenixBladeHop"] = false,
                ["AMetalTrident"] = false,
                ["AMetalTridentHop"] = false,
                ["APondereBlade"] = false,
                ["ACookieSword"] = false,
                ["AKioru"] = false,
                ["AAdvenknife"] = false,
                ["AAnubis"] = false,
                ["Tengumask"] = false,
                ["Autoboss"] = false,
                ["Selectboss"] = "",
                ["SavetpO"] = {},
                ["SavetpN"] = {},
                ["Melee"] = false,
                ["Defense"] = false,
                ["Sword"] = false,
                ["Devil Fruit"] = false,
                ["teleport"] = false,
                ["Gooldworld"] = false,
                ["Gosecondworld"] = false,
                ["listbossold"] = {
                    "Smoky [Lv. 20]",
                    "Tashi [Lv. 30]",
                    "The Clown [Lv. 75]",
                    "Captain [Lv. 120]",
                    "The Barbaric [Lv. 145]",
                    "Karate Fishman [Lv. 200]",
                    "Shark Man [Lv. 230]",
                    "Dark Leg [Lv. 300]",
                    "Dory [Lv. 350]",
                    "King Snow [Lv. 450]",
                    "Little Dear [Lv. 500]",
                    "Candle Man [Lv. 525]",
                    "Bomb Man [Lv. 625]",
                    "King of Sand [Lv. 725]",
                    "Ball Man [Lv. 850]",
                    "Rumble Man [Lv. 900]",
                    "Leader [Lv. 1100]",
                    "Pasta [Lv. 1150]",
                    "Wolf [Lv. 1250]",
                    "Giraffe [Lv. 1325]",
                    "Leo [Lv. 1400]",
                    "Shadow Master [Lv. 1600]",
                    "True Karate Fishman [Lv. 1850]",
                    "Quake Woman [Lv. 1925]",
                    "Combat Fishman [Lv. 2050]",
                    "Sword Fishman [Lv. 2100]",
                    "Seasoned Fishman [Lv. 2200]",
                },
                ["listbossnew"] = {
                    "Gazelle Man [Lv. 2350]",
                    "Violet Samurai [Lv. 2500]",
                    "Duke [Lv. 2550]",
                    "Magician [Lv. 2600]",
                    "Kitsune Samurai [Lv. 2650]",
                    "Bear Man [Lv. 2750]",
                    "Meji [Lv. 2850]",
                    "Pachy Woman [Lv. 2900]",
                    "Kappa [Lv. 2950]",
                    "Joey [Lv. 3000]",
                    "Elite Skeleton [Lv. 3100]",
                    "Desert Thief [Lv. 3125]",
                    "Anubis [Lv. 3150]",
                    "Pharaoh [Lv. 3175]",
                    "Flame User [Lv. 3200]",
                    "Sunken Vessel [Lv. 3225]",
                    "Biscuit Man [Lv. 3250]",
                    "Dough Master [Lv. 3275]",
                    "Ms. Mother [Lv. 3275]",
                    "Supreme Swordman [Lv. 3425]",
                    "Sally [Lv. 3450]",
                    "Pondere [Lv. 3525]",
                    "Hefty [Lv. 3550]",
                },
                ["listold"] = {
                    "Town",
                    "Pirate Island",
                    "Soldier Town",
                    "Shark Island",
                    "Chef Shipd",
                    "Snow Island",
                    "Desert Island",
                    "Skyland",
                    "Bubbleland",
                    "War Island",
                    "Lobby Island",
                    "Fishland",
                    "Stone Arena",
                    "Zombie Island",
                    "Stone Rain Sea",
                },
                ["listnew"] = {
                    "Japan Island",
                    "Hibernus Land",
                    "Loaf Island",
                    "Floresco",
                    "Mirror Room",
                    "Torrefacio",
                    "Viridans",
                    "Skull Island",
                    "Dead Tundra",
                    "Loaf Island",
                    "Shred Endangering",
                    "Pirate Skull Island",
                    "Soldier Headquater",
                },
                ["Saveplayer"] = {},
                ["farmplayers"] = false,
                ["Spectateplayers"] = false,
                ["GeppoInf"] = false,
                ["DashCD"] = false,
                ["RemoveEffect"] = false,
                ["listDifficulty"] = {"Normal","Easy"},
                ["SaveDifficulty"] = {},
                ["Autoraid"] = false,
                ["BlackScreen"] = false,
                ["listrandom"] = {"Beli", "Gem"},
                ["Savelistrandom"] = {},
                ["randomfruit"] = false,
                ["ESPPlayers"] = false,
                ["ESPDevilFruit"] = false,
                ["ESPSeabeat"] = false,
                ["AutoCyborg"] = false,
                ["AutoBlackleg"] = false,
                ["Autofishkarate"] = false,
                ["AutoDragonclaw"] = false,
                ["AutoElectro"] = false,
                ["listFruitSniper"] = {
                    "AlloAllo",
                    "BarrierBarrier",
                    "BombBomb",
                    "BrachioBrachio",
                    "BuddhaBuddha",
                    "DarkDark",
                    "DoughDough",
                    "DragonDragon",
                    "FlameFlame",
                    "GasGas",
                    "GiraffeGiraffe",
                    "GravityGravity",
                    "GumGum",
                    "HumanHuman",
                    "IceIce",
                    "LeopardLeopard",
                    "LightLight",
                    "LoveLove",
                    "MagmaMagma",
                    "MammothMammoth",
                    "PawPaw",
                    "PhoenixPhoenix",
                    "QuakeQuake",
                    "RumbleRumble",
                    "SandSand",
                    "ShadowShadow",
                    "SmokeSmoke",
                    "SnowSnow",
                    "SpikeSpike",
                    "SpinSpin",
                    "SpinoSpino",
                    "SpiritSpirit",
                    "StringString",
                    "VenomVenom",
                    "WolfWolf",
                },
                ["listFruit"] = {
                    "AlloFruit",
                    "BarrierFruit",
                    "BombFruit",
                    "BrachioFruit",
                    "BuddhaFruit",
                    "DarkFruit",
                    "DoughFruit",
                    "DragonFruit",
                    "FlameFruit",
                    "GasFruit",
                    "GiraffeFruit",
                    "GravityFruit",
                    "GumFruit",
                    "HumanFruit",
                    "IceFruit",
                    "LeopardFruit",
                    "LightFruit",
                    "LoveFruit",
                    "MagmaFruit",
                    "MammothFruit",
                    "PawFruit",
                    "PhoenixFruit",
                    "QuakeFruit",
                    "RumbleFruit",
                    "SandFruit",
                    "ShadowFruit",
                    "SmokeFruit",
                    "SnowFruit",
                    "SpikeFruit",
                    "SpinFruit",
                    "SpinoFruit",
                    "SpiritFruit",
                    "StringFruit",
                    "VenomFruit",
                    "WolfFruit",
                },
                ["SaveFruitsSniper"] = {},
                ["SaveFruits"] = {},
                ["SniperFruit"] = false,
                ["Eatfruit"] = false,
                ["Dropfruit"] = false,
                ["Collectfruit"] = false,
                ["Bringfruit"] = false,
                ["Autohydra"] = false,
                ["AutohydraHop"] = false,
                ["collectCheatHy"] = false,
                ["AutoStainless"] = false,
                ["AutoHorned"] = false,
                ["AutoGazelle"] = false,
                ["AutoSallyCrown"] = false,
                ["AutoBeardClock"] = false,
                ["AutoBeardClockHop"] = false,
                ["AutoBeardHat"] = false,
                ["AutoBeardHatHop"] = false,
                ["AutoPondereCoat"] = false,
                ["AHeftyGlasses"] = false,
                ["AHeftyCoat"] = false,
                ["ALucidusCoat"] = false,
                ["ALucidusCoatHop"] = false,
                ["ASoulCane"] = false,
                ["Kaitan"] = false,
                ["weaponfarmkai"] = "Sword",
                ["jitterfarm"] = false,
            }
        
            function Load()
                if readfile and writefile and isfile and isfolder then
                    if isfolder("ZetaHub") == false then
                        makefolder("ZetaHub")
                    end
                    if isfile("/ZetaHub/KingLegacy-" .. game.Players.LocalPlayer.Name .. ".json") == false then
                        writefile("/ZetaHub/KingLegacy-" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
                    else
                        local Decode = game:GetService("HttpService"):JSONDecode(readfile("/ZetaHub/KingLegacy-" .. game.Players.LocalPlayer.Name .. ".json"))
                        for i,v in pairs(Decode) do
                            SaveSettings[i] = v
                        end
                    end
                else
                    warn("Failed Load")
                    return false
                end
            end
            function Save()
                if readfile and writefile and isfile then
                    if isfile("/ZetaHub/KingLegacy-" .. game.Players.LocalPlayer.Name .. ".json") == false then
                        Load()
                    else
                        local Decode = game:GetService("HttpService"):JSONDecode(readfile("/ZetaHub/KingLegacy-" .. game.Players.LocalPlayer.Name .. ".json"))
                        local Array = {}
                        for i,v in pairs(SaveSettings) do
                            Array[i] = v
                        end
                        writefile("/ZetaHub/KingLegacy-" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
                    end
                else
                    warn("Failed Save")
                    return false
                end
            end
        
            Load()
        
            local Playersinsert = {}
        
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                    table.insert(Playersinsert, v.Name)
                end
            end
        
        
        
            function checkseaking()
                local Seahuman = game:GetService("Workspace").SeaMonster.SeaKing.HumanoidRootPart.Position
                local SeaHP = Vector3.new(Seahuman.X, Seahuman.Y, Seahuman.Z)
        
                if Seahuman.Y == -1000000 then
                    print("bug") 
                    HopServer()
                end
            end
        
        
        
        
            local function LegacyIsland()
                if game:GetService("Workspace").Island:FindFirstChild("Legacy Island1") then
                    return {true,"1"}
                elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island2") then
                    return {true,"2"}
                elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island3") then
                    return {true,"3"}
                elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island4") then
                    return {true,"4"}
                elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island5") then
                    return {true,"5"}
                else 
                    return {false,"nil"}
                end
            end
        
            function equipekaitan()
                pcall(function()
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA("Tool") and v.ToolTip == "Sword" then
                            return
                        end
                    end
                    
                    function getweapionname()
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") and v.ToolTip ==  "Sword" then
                                return v.Name   
                            end
                        end
                        return "NotFound"
                    end
                    local ResToolname = getweapionname()
                    if ResToolname == "NotFound" then
                    
                    else
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(ResToolname))
                    end
                end)
            end
        
            function equipeweapontype()
                pcall(function()
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA("Tool") and v.ToolTip == SaveSettings["weapon"] then
                            return
                        end
                    end
                    
                    function getweapionname()
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") and v.ToolTip ==  SaveSettings["weapon"] then
                                return v.Name   
                            end
                        end
                        return "NotFound"
                    end
                    local ResToolname = getweapionname()
                    if ResToolname == "NotFound" then
                    
                    else
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(ResToolname))
                    end
                end)
            end
        
            function equipeFruittype()
                pcall(function()
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA("Tool") and v.ToolTip == "Devil Fruit" then
                            return
                        end
                    end
                    
                    function getweapionname()
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") and v.ToolTip ==  "Devil Fruit" then
                                return v.Name   
                            end
                        end
                        return "NotFound"
                    end
                    local ResToolname = getweapionname()
                    if ResToolname == "NotFound" then
                    
                    else
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(ResToolname))
                    end
                end)
            end
        
            function isnil(thing)
                return (thing == nil)
            end
            local function round(n)
                return math.floor(tonumber(n) + 0.5)
            end
            Number = math.random(1, 1000000)
            function UpdatePlayerChams()
                for i,v in pairs(game:GetService'Players':GetChildren()) do
                    pcall(function()
                        if not isnil(v.Character) then
                            if SaveSettings["ESPPlayers"] then
                                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v.Character.Head)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v.Character.Head
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    if v.Team == game.Players.LocalPlayer.Team then
                                        name.TextColor3 = Color3.new(0,255,0)
                                    else
                                        name.TextColor3 = Color3.new(255,0,0)
                                    end
                                else
                                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                                end
                            else
                                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                                end
                            end
                        end
                    end)
                end
            end
        
            function UpdateDevilChams() 
                for i,v in pairs(game.Workspace:GetChildren()) do
                    pcall(function()
                        if SaveSettings["ESPDevilFruit"] then
                            if string.find(v.Name, "Fruit") then   
                                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v.Handle)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v.Handle
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                                else
                                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                                end
                            end
                        else
                            if v.Handle:FindFirstChild('NameEsp'..Number) then
                                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                            end
                        end
                    end)
                end
            end
        
        
            function UpdateSeabeatChams() 
                for i,v in pairs(game:GetService("Workspace").SeaMonster:GetChildren()) do
                    pcall(function()
                        if SaveSettings["ESPSeabeat"] then
                            if string.find(v.Name, "SeaKing") then   
                                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v.Handle)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v.Handle
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    name.TextColor3 = Color3.fromRGB(172, 69, 240)
                                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                                else
                                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                                end
                            end
                        else
                            if v.Handle:FindFirstChild('NameEsp'..Number) then
                                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                            end
                        end
                    end)
                end
            end
        
        
            local function skill(skilluse)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,skilluse,false,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart)
                wait()
                game:GetService("VirtualInputManager"):SendKeyEvent(false,skilluse,false,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart)
            end
        
            function checkskill()
                if skilluse == "Z" then
                    return 
                end
                if skilluse == "X" then
                    return 
                end
                if skilluse == "C" then
                    return 
                end
                if skilluse == "V" then
                    return 
                end 
                if skilluse == "Q" then
                    return 
                end
                if skilluse == "B" then
                    return 
                end
            end
        
        
        
        
            function checklevel()
                local LV = game:GetService("Players").LocalPlayer.PlayerStats.lvl.Value
                if oldworld then
                    if LV == 1 or LV <= 9 then
                        Mon = "Soldier [Lv. 1]"
                        QuestUIName = "QuestLvl0"
                        CFramemon = CFrame.new(-1798.3651123046875, 81.02809143066406, -4335.2958984375)
                        QuestPosition = CFrame.new(-1962.6959228515625, 48.14298629760742, -4498.88427734375)
                    elseif LV == 10 or LV <= 19 then
                        Mon = "Clown Pirate [Lv. 10]"
                        QuestUIName = "QuestLvl10"
                        CFramemon = CFrame.new(-1798.3651123046875, 81.02809143066406, -4335.2958984375)
                        QuestPosition = CFrame.new(-1892.3594970703125, 48.301116943359375, -4522.083984375)
                    elseif LV == 20 or LV <= 29 then
                        Mon = "Smoky [Lv. 20]"
                        QuestUIName = "QuestLvl20"
                        CFramemon = CFrame.new(-1819.415283203125, 86.51949310302734, -4771.5673828125)
                        QuestPosition = CFrame.new(-1965.014404296875, 48.30112838745117, -4617.02392578125)
                    elseif LV == 30 or LV <= 49 then
                        Mon = "Tashi [Lv. 30]"
                        QuestUIName = "QuestLvl30"
                        CFramemon = CFrame.new(-2272.403564453125, 48.30112075805664, -4680.3046875)
                        QuestPosition = CFrame.new(-2272.403564453125, 48.30112075805664, -4680.3046875)
                    elseif LV == 50 or LV <= 74 then
                        Mon = "Clown Swordman [Lv. 50]"
                        QuestUIName = "QuestLvl50"
                        CFramemon = CFrame.new(-450.70819091796875, 42.668861389160156, -3374.28125)
                        QuestPosition = CFrame.new(-682.4449462890625, 37.813323974609375, -3465.025390625)
                    elseif LV == 75 or LV <= 99 then
                        Mon = "The Clown [Lv. 75]"
                        QuestUIName = "QuestLvl75"
                        CFramemon = CFrame.new(-341.8336486816406, 89.38086700439453, -3638.275634765625)
                        QuestPosition = CFrame.new(-392.7812194824219, 68.74812316894531, -3491.158447265625)
                    elseif LV == 100 or LV <= 119 then
                        Mon = "Commander [Lv. 100]"
                        QuestUIName = "QuestLvl100"
                        CFramemon = CFrame.new(-2219.557373046875, 59.732784271240234, -2509.1484375)
                        QuestPosition = CFrame.new(-2276.7255859375, 39.32878875732422, -2690.717041015625)
                    elseif LV == 120 or LV <= 144 then
                        Mon = "Captain [Lv. 120]"
                        QuestUIName = "QuestLvl120"
                        CFramemon = CFrame.new(-2219.557373046875, 59.732784271240234, -2509.1484375)
                        QuestPosition = CFrame.new(-2236.301513671875, 59.98377227783203, -2566.328369140625)
                    elseif LV == 145 or LV <= 179 then
                        Mon = "The Barbaric [Lv. 145]"
                        QuestUIName = "QuestLvl145"
                        CFramemon = CFrame.new(-2379.98291015625, 68.58027648925781, -2523.383544921875)
                        QuestPosition = CFrame.new(-2464.396728515625, 68.60761260986328, -2542.28125)
                    elseif LV == 180 or LV <= 199 then
                        Mon = "Fighter Fishman [Lv. 180]"
                        QuestUIName = "QuestLvl180"
                        CFramemon = CFrame.new(-939.0033569335938, 10.491670608520508, -1272.0576171875)
                        QuestPosition = CFrame.new(-960.82666015625, 10.541629791259766, -1366.80859375)
                    elseif LV == 200 or LV <= 229 then ------
                        Mon = "Karate Fishman [Lv. 200]"
                        QuestUIName = "QuestLvl200"
                        CFramemon = CFrame.new(-939.0033569335938, 10.491670608520508, -1272.0576171875)
                        QuestPosition = CFrame.new(-647.0335083007812, 10.491669654846191, -1328.0653076171875)
                    elseif LV == 230 or LV <= 249 then
                        Mon = "Shark Man [Lv. 230]"
                        QuestUIName = "QuestLvl230"
                        CFramemon = CFrame.new(-466.8975830078125, 10.466651916503906, -1474.9945068359375)
                        QuestPosition = CFrame.new(-552.7167358398438, 10.491669654846191, -1373.2091064453125)
                    elseif LV == 250 or LV <= 299 then
                        Mon = "Trainer Chef [Lv. 250]"
                        QuestUIName = "QuestLvl250"
                        CFramemon = CFrame.new(-4115.0673828125, 16.532974243164062, -3078.74365234375)
                        QuestPosition = CFrame.new(-4095.0234375, 64.05916595458984, -3016.69970703125)
                    elseif LV == 300 or LV <= 349 then
                        Mon = "Dark Leg [Lv. 300]"
                        QuestUIName = "QuestLvl300"
                        CFramemon = CFrame.new(-4115.0673828125, 16.532974243164062, -3078.74365234375)
                        QuestPosition = CFrame.new(-4196.56640625, 64.05915069580078, -3026.7587890625)
                    elseif LV == 350 or LV <= 399 then
                        Mon = "Dory [Lv. 350]"
                        QuestUIName = "QuestLvl350"
                        CFramemon = CFrame.new(-4115.0673828125, 16.532974243164062, -3078.74365234375)
                        QuestPosition = CFrame.new(-4403.431640625, 64.95037078857422, -2943.181640625)
                    elseif LV == 400 or LV <= 449 then
                        Mon = "Snow Soldier [Lv. 400]"
                        QuestUIName = "QuestLvl400"
                        CFramemon = CFrame.new(-5425.12939453125, 18.766359329223633, -1268.7513427734375)
                        QuestPosition = CFrame.new(-5462.10107421875, 18.28936767578125, -1344.8956298828125)
                    elseif LV == 450 or LV <= 499 then
                        Mon = "King Snow [Lv. 450]"
                        QuestUIName = "QuestLvl450"
                        CFramemon = CFrame.new(-5570.03515625, 22.22515869140625, -1664.440185546875)
                        QuestPosition = CFrame.new(-5537.57373046875, 18.289365768432617, -1478.3946533203125)
                    elseif LV == 500 or LV <= 524 then  -----
                        Mon = "Little Dear [Lv. 500]"
                        QuestUIName = "QuestLvl500"
                        CFramemon = CFrame.new(-5164.076171875, 18.387239456176758, -964.0694580078125)
                        QuestPosition = CFrame.new(-5300.5498046875, 18.0730037689209, -1099.422607421875)
                    elseif LV == 525 or LV <= 624 then
                        Mon = "Candle Man [Lv. 525]"
                        QuestUIName = "QuestLvl525"
                        CFramemon = CFrame.new(-2609.872802734375, 12.84097957611084, -645.6546020507812)
                        QuestPosition = CFrame.new(-2730.482666015625, 12.84097671508789, -597.11865234375)
                    elseif LV == 625 or LV <= 724 then
                        Mon = "Bomb Man [Lv. 625]"
                        QuestUIName = "QuestLvl625"
                        CFramemon = CFrame.new(-2915.44677734375, 14.481791496276855, -861.3796997070312)
                        QuestPosition = CFrame.new(-2945.37548828125, 12.840978622436523, -807.525146484375)
                    elseif LV == 725 or LV <= 799 then
                        Mon = "King of Sand [Lv. 725]"
                        QuestUIName = "QuestLvl725"
                        CFramemon = CFrame.new(-3098.426513671875, 97.05123901367188, -505.8830871582031)
                        QuestPosition = CFrame.new(-2952.3857421875, 42.979312896728516, -700.6138916015625)
                    elseif LV == 800 or LV <= 849 then
                        Mon = "Sky Soldier [Lv. 800]"
                        QuestUIName = "QuestLvl800"
                        CFramemon = CFrame.new(-4637.2841796875, 222.30621337890625, 1076.8336181640625)
                        QuestPosition = CFrame.new(-4483.509765625, 200.6437530517578, 1038.103759765625)
                    elseif LV == 850 or LV <= 899 then
                        Mon = "Ball Man [Lv. 850]"
                        QuestUIName = "QuestLvl850"
                        CFramemon = CFrame.new(-3965.90087890625, 394.2970275878906, 1230.6192626953125)
                        QuestPosition = CFrame.new(-4047.749755859375, 386.430908203125, 1209.1556396484375)
                    elseif LV == 900 or LV <= 999 then
                        Mon = "Rumble Man [Lv. 900]"
                        QuestUIName = "QuestLvl900"
                        CFramemon = CFrame.new(-4077.582763671875, 386.42041015625, 1480.9727783203125)
                        QuestPosition = CFrame.new(-4093.2626953125, 386.4204406738281, 1339.425537109375)
                    elseif LV == 1000 or LV <= 1099 then
                        Mon = "Elite Soldier [Lv. 1000]"
                        QuestUIName = "QuestLvl1000"
                        CFramemon = CFrame.new(1899.1019287109375, 11.849752426147461, 791.579833984375)
                        QuestPosition = CFrame.new(1738.0611572265625, 11.846578598022461, 713.4981079101562)
                    elseif LV == 1100 or LV <= 1149 then
                        Mon = "Leader [Lv. 1100]"
                        QuestUIName = "QuestLvl1100"
                        CFramemon = CFrame.new(1925.5885009765625, 45.16677474975586, 642.844482421875)
                        QuestPosition = CFrame.new(1725.6585693359375, 11.846578598022461, 656.7521362304688)
                    elseif LV == 1150 or LV <= 1249 then
                        Mon = "Pasta [Lv. 1150]"
                        QuestUIName = "QuestLvl1150"
                        CFramemon = CFrame.new(1503.2926025390625, 21.24049949645996, 1144.559814453125)
                        QuestPosition = CFrame.new(1539.1173095703125, 11.846578598022461, 981.768798828125)
                    elseif LV == 1250 or LV <= 1324 then
                        Mon = "Wolf [Lv. 1250]"
                        QuestUIName = "QuestLvl1250"
                        CFramemon = CFrame.new(-1396.669189453125, 18.01056480407715, 2169.44482421875)
                        QuestPosition = CFrame.new(-1245.978759765625, 13.030521392822266, 2180.800048828125)
                    elseif LV == 1325 or LV <= 1399 then
                        Mon = "Giraffe [Lv. 1325]"
                        QuestUIName = "QuestLvl1325"
                        CFramemon = CFrame.new(-1052.2403564453125, 15.132707595825195, 2191.0927734375)
                        QuestPosition = CFrame.new(-1189.65576171875, 13.030524253845215, 2215.811279296875)
                    elseif LV == 1400 or LV <= 1499 then
                        Mon = "Leo [Lv. 1400]"
                        QuestUIName = "QuestLvl1400"
                        CFramemon = CFrame.new(-1065.7257080078125, 13.672046661376953, 2971.991943359375)
                        QuestPosition = CFrame.new(-1117.2855224609375, 13.307784080505371, 2845.467529296875)
                    elseif LV == 1500 or LV <= 1599 then
                        Mon = "Zombie [Lv. 1500]"
                        QuestUIName = "QuestLvl1500"
                        CFramemon = CFrame.new(-2752.33349609375, 39.12177276611328, 4112.046875)
                        QuestPosition = CFrame.new(-2735.677001953125, 15.7509183883667, 4084.87060546875)
                    elseif LV == 1600 or LV <= 1699 then
                        Mon = "Shadow Master [Lv. 1600]"
                        QuestUIName = "QuestLvl1600"
                        CFramemon = CFrame.new(-2830.63525390625, 19.986780166625977, 4400.28076171875)
                        QuestPosition = CFrame.new(-2795.5693359375, 19.600242614746094, 4230.74658203125)
                    elseif LV == 1700 or LV <= 1799 then
                        Mon = "New World Pirate [Lv. 1700]"
                        QuestUIName = "QuestLvl1700"
                        CFramemon = CFrame.new(2280.5712890625, 49.60475158691406, -1704.531982421875)
                        QuestPosition = CFrame.new(2391.417724609375, 49.58180236816406, -1780.8143310546875)
                    elseif LV == 1800 or LV <= 1849 then
                        Mon = "Rear Admiral [Lv. 1800]"
                        QuestUIName = "QuestLvl1800"
                        CFramemon = CFrame.new(2316.619384765625, 49.60078430175781, -2195.380859375)
                        QuestPosition = CFrame.new(2398.609130859375, 49.57575988769531, -2239.0302734375)
                    elseif LV == 1850 or LV <= 1924 then
                        Mon = "True Karate Fishman [Lv. 1850]"
                        QuestUIName = "QuestLvl1850"
                        CFramemon = CFrame.new(2382.624755859375, 80.13693237304688, -1960.2882080078125)
                        QuestPosition = CFrame.new(2378.4365234375, 49.57575988769531, -2066.774169921875)
                    elseif LV == 1925 or LV <= 1999 then
                        Mon = "Quake Woman [Lv. 1925]"
                        QuestUIName = "QuestLvl1925"
                        CFramemon = CFrame.new(2265.5498046875, 11.373345375061035, -1931.3072509765625)
                        QuestPosition = CFrame.new(2115.751953125, 49.59974670410156, -2117.072021484375)
                    elseif LV == 2000 or LV <= 2049 then
                        Mon = "Fishman [Lv. 2000]"
                        QuestUIName = "QuestLvl2000"
                        CFramemon = CFrame.new(-1540.005615234375, 40.3702392578125, 6210.8525390625)
                        QuestPosition = CFrame.new(-1466.1104736328125, 40.245174407958984, 6226.30908203125)
                    elseif LV == 2050 or LV <= 2099 then
                        Mon = "Combat Fishman [Lv. 2050]"
                        QuestUIName = "QuestLvl2050"
                        CFramemon = CFrame.new(-1980.767822265625, 61.937740325927734, 6230.13232421875)
                        QuestPosition = CFrame.new(-1928.2281494140625, 40.24795150756836, 6268.9912109375)
                    elseif LV == 2100 or LV <= 2149 then
                        Mon = "Sword Fishman [Lv. 2100]"
                        QuestUIName = "QuestLvl2100"
                        CFramemon = CFrame.new(-1389.0233154296875, 51.46698760986328, 6742.76806640625)
                        QuestPosition = CFrame.new(-1413.809326171875, 40.37023162841797, 6434.171875)
                    elseif LV == 2150 or LV <= 2199 then
                        Mon = "Soldier Fishman [Lv. 2150]"
                        QuestUIName = "QuestLvl2150"
                        CFramemon = CFrame.new(-1827.664306640625, 45.15045928955078, 6587.40478515625)
                        QuestPosition = CFrame.new(-1772.1629638671875, 40.27396011352539, 6489.89013671875)
                    elseif LV >= 2200 then
                        Mon = "Seasoned Fishman [Lv. 2200]"
                        QuestUIName = "QuestLvl2200"
                        CFramemon = CFrame.new(-1835.0504150390625, 45.15045928955078, 6612.59423828125)
                        QuestPosition = CFrame.new(-1920.0546875, 40.27077865600586, 6468.94287109375)
                    end
                end
                if newworld then
                    if LV == 2250 or LV <= 2299 then
                        Mon = "Beast Pirate [Lv. 2250]"
                        QuestUIName = "QuestLvl2250"
                        CFramemon = CFrame.new(-3944.89892578125, 57.32535171508789, -50.63689041137695)
                        QuestPosition = CFrame.new(-3848.927001953125, 57.310550689697266, 134.02899169921875)
                    elseif LV == 2300 or LV <= 2349 then
                        Mon = "Beast Swordman [Lv. 2300]"
                        QuestUIName = "QuestLvl2300"
                        CFramemon = CFrame.new(-3991.196044921875, 98.40888214111328, -437.2437438964844)
                        QuestPosition = CFrame.new(-4223.97705078125, 98.37535858154297, -299.7986145019531)
                    elseif LV == 2350 or LV <= 2399 then
                        Mon = "Gazelle Man [Lv. 2350]"
                        QuestUIName = "QuestLvl2350"
                        CFramemon = CFrame.new(-4251.75732421875, 60.85749816894531, 188.61158752441406)
                        QuestPosition = CFrame.new(-4461.32373046875, 57.310546875, 139.21298217773438)
                    elseif LV == 2400 or LV <= 2449 then
                        Mon = "Bandit Beast Pirate [Lv. 2400]"
                        QuestUIName = "QuestLvl2400"
                        CFramemon = CFrame.new(-4485.435546875, 135.87039184570312, -1040.0574951171875)
                        QuestPosition = CFrame.new(-4542.17333984375, 135.8592529296875, -917.8226318359375)
                    elseif LV == 2450 or LV <= 2499 then
                        Mon = "Powerful Beast Pirate [Lv. 2450]"
                        QuestUIName = "QuestLvl2450"
                        CFramemon = CFrame.new(-4628.68505859375, 135.86195373535156, -745.543701171875)
                        QuestPosition = CFrame.new(-4564.63134765625, 135.8592529296875, -858.3712768554688)
                    elseif LV == 2500 or LV <= 2549 then
                        Mon = "Violet Samurai [Lv. 2500]"
                        QuestUIName = "QuestLvl2500"
                        CFramemon = CFrame.new(-5103.10302734375, 85.60206604003906, -930.0324096679688)
                        QuestPosition = CFrame.new(-5186.7451171875, 85.32792663574219, -881.58349609375)
                    elseif LV == 2550 or LV <= 2599 then
                        Mon = "Duke [Lv. 2550]"
                        QuestUIName = "QuestLvl2550"
                        CFramemon = CFrame.new(-5452.1015625, 100.40453338623047, -299.9353332519531)
                        QuestPosition = CFrame.new(-5410.4404296875, 99.7646255493164, -111.78041076660156)
                    elseif LV == 2600 or LV <= 2649 then
                        Mon = "Magician [Lv. 2600]"
                        QuestUIName = "QuestLvl2600"
                        CFramemon = CFrame.new(-4985.248046875, 57.260536193847656, 52.113990783691406)
                        QuestPosition = CFrame.new(-4985.248046875, 57.260536193847656, 52.113990783691406)
                    elseif LV == 2650 or LV <= 2699 then
                        Mon = "Kitsune Samurai [Lv. 2650]"
                        QuestUIName = "QuestLvl2650"
                        CFramemon = CFrame.new(-5508.32861328125, 107.39733123779297, 111.27311706542969)
                        QuestPosition = CFrame.new(-5264.65625, 99.76463317871094, 170.60182189941406)
                    elseif LV == 2700 or LV <= 2749 then
                        Mon = "Elite Beast Pirate [Lv. 2700]"
                        QuestUIName = "QuestLvl2700"
                        CFramemon = CFrame.new(-4590.54248046875, 29.2312068939209, 1160.435302734375)
                        QuestPosition = CFrame.new(-4717.111328125, 29.18121910095215, 1159.519287109375)
                    elseif LV == 2750 or LV <= 2799 then
                        Mon = "Bear Man [Lv. 2750]"
                        QuestUIName = "QuestLvl2750"
                        CFramemon = CFrame.new(-4454.2041015625, 29.2312068939209, 881.9096069335938)
                        QuestPosition = CFrame.new(-4692.966796875, 29.18121910095215, 1038.3306884765625)
                    elseif LV == 2800 or LV <= 2849 then
                        Mon = "Bean [Lv. 2800]"
                        QuestUIName = "QuestLvl2800"
                        CFramemon = CFrame.new(-4105.7744140625, 29.19121742248535, 967.008544921875)
                        QuestPosition = CFrame.new(-4185.1904296875, 29.18121910095215, 1299.2454833984375)
                    elseif LV == 2850 or LV <= 2899 then
                        Mon = "Meji [Lv. 2850]"
                        QuestUIName = "QuestLvl2850"
                        CFramemon = CFrame.new(-5335.333984375, 71.97783660888672, 1152.7501220703125)
                        QuestPosition = CFrame.new(-5496.90869140625, 57.260536193847656, 965.646728515625)
                    elseif LV == 2900 or LV <= 2949 then
                        Mon = "Pachy Woman [Lv. 2900]"
                        QuestUIName = "QuestLvl2900"
                        CFramemon = CFrame.new(-5834.5927734375, 57.26054382324219, 1282.63818359375)
                        QuestPosition = CFrame.new(-5520.2568359375, 57.26054763793945, 1180.7684326171875)
                    elseif LV == 2950 or LV <= 2999 then
                        Mon = "Kappa [Lv. 2950]"
                        QuestUIName = "QuestLvl2950"
                        CFramemon = CFrame.new(-4847.7021484375, 59.443397521972656, 1953.459228515625)
                        QuestPosition = CFrame.new(-5112.10400390625, 57.310585021972656, 1889.4305419921875)
                    elseif LV == 3000 or LV <= 3024 then
                        Mon = "Joey [Lv. 3000]"
                        QuestUIName = "QuestLvl3000"
                        CFramemon = CFrame.new(-5202.92822265625, 57.31475830078125, 1983.2637939453125)
                        QuestPosition = CFrame.new(-5156.14013671875, 57.310585021972656, 1879.4945068359375)
                    elseif LV == 3025 or LV <= 3074 then
                        Mon = "Skull Pirate [Lv. 3050]"
                        QuestUIName = "QuestLvl3025"
                        CFramemon = CFrame.new(-6304.4638671875, 57.678077697753906, 6971.90478515625)
                        QuestPosition = CFrame.new(-6177.43701171875, 57.68203353881836, 6894.18994140625)
                    elseif LV == 3075 or LV <= 3099 then
                        Mon = "Elite Skeleton [Lv. 3100]"
                        QuestUIName = "QuestLvl3075"
                        CFramemon = CFrame.new(-5947.3740234375, 98.17839050292969, 7219.18505859375)
                        QuestPosition = CFrame.new(-6039.3720703125, 158.2159423828125, 7228.33837890625)
                    elseif LV == 3100 or LV <= 3124 then
                        Mon = "Desert Thief [Lv. 3125]"
                        QuestUIName = "QuestLvl3100"
                        CFramemon = CFrame.new(1367.941650390625, 14.446194648742676, 1554.822265625)
                        QuestPosition = CFrame.new(1552.96923828125, 14.360448837280273, 1329.865478515625)
                    elseif LV == 3125 or LV <= 3149 then
                        Mon = "Anubis [Lv. 3150]"
                        QuestUIName = "QuestLvl3125"
                        CFramemon = CFrame.new(2121.1474609375, 14.360448837280273, 958.4701538085938)
                        QuestPosition = CFrame.new(1847.9866943359375, 14.360448837280273, 986.4815063476562)
                    elseif LV == 3150 or LV <= 3199 then
                        Mon = "Pharaoh [Lv. 3175]"
                        QuestUIName = "QuestLvl3150"
                        CFramemon = CFrame.new(2041.7005615234375, 48.80284881591797, 1644.022705078125)
                        QuestPosition = CFrame.new(2260.275146484375, 14.361406326293945, 1473.019775390625)
                    elseif LV == 3200 or LV <= 3224 then
                        Mon = "Flame User [Lv. 3200]"
                        QuestUIName = "QuestLvl3200"
                        CFramemon = CFrame.new(2650.991455078125, 14.36140251159668, 1680.7032470703125)
                        QuestPosition = CFrame.new(2561.00830078125, 14.361403465270996, 1601.8577880859375)
                    elseif LV == 3225 or LV <= 3249 then
                        Mon = "Sunken Vessel [Lv. 3225]"
                        QuestUIName = "QuestLvl3225"
                        CFramemon = CFrame.new(-1182.27685546875, 58.331050872802734, 8201.4580078125)
                        QuestPosition = CFrame.new(-930.7415161132812, 28.6209774017334, 7952.38037109375)
                    elseif LV == 3250 or LV <= 3299 then
                        Mon = "Biscuit Man [Lv. 3250]"
                        QuestUIName = "QuestLvl3250"
                        CFramemon = CFrame.new(-1392.253173828125, 192.52328491210938, 8828.34765625)
                        QuestPosition = CFrame.new(-1297.1552734375, 202.25027465820312, 8822.5908203125)
                    elseif LV == 3300 or LV <= 3349 then
                        Mon = "Azlan [Lv. 3300]"
                        QuestUIName = "QuestLvl3300"
                        CFramemon = CFrame.new(-788.7841796875, 56.882041931152344, -2865.118896484375)
                        QuestPosition = CFrame.new(-551.0328369140625, 56.913753509521484, -2591.9833984375)
                    elseif LV == 3350 or LV <= 3399 then
                        Mon = "The Volcano [Lv. 3325]"
                        QuestUIName = "QuestLvl3325"
                        CFramemon = CFrame.new(-28.500959396362305, 140.8487091064453, -3678.32958984375)
                        QuestPosition = CFrame.new(-221.179443359375, 119.87242889404297, -3490.9130859375)
                    elseif LV == 3400 or LV <= 3424 then
                        Mon = "Dark Beard Servant [Lv. 3400]"
                        QuestUIName = "QuestLvl3400"
                        CFramemon = CFrame.new(-9225.876953125, 59.20870590209961, -4710.7548828125)
                        QuestPosition = CFrame.new(-9268.2490234375, 57.701961517333984, -4993.87841796875)
                    elseif LV == 3425 or LV <= 3449 then
                        Mon = "Supreme Swordman [Lv. 3425]"
                        QuestUIName = "QuestLvl3425"
                        CFramemon = CFrame.new(-9737.37109375, 59.225555419921875, -4589.32861328125)
                        QuestPosition = CFrame.new(-9258.763671875, 68.25308990478516, -5126.3896484375)
                    elseif LV == 3450 or LV <= 3499 then
                        Mon = "Sally [Lv. 3450]"
                        QuestUIName = "QuestLvl3450"
                        CFramemon = CFrame.new(-9510.95703125, 59.24544906616211, -5220.14111328125)
                        QuestPosition = CFrame.new(-9534.033203125, 59.21963119506836, -4856.48974609375)
                    elseif LV == 3500 or LV <= 3524 then
                        Mon = "Vice Admiral [Lv. 3500]"
                        QuestUIName = "QuestLvl3500"
                        CFramemon = CFrame.new(-9999.3837890625, 73.99882507324219, 613.2525634765625)
                        QuestPosition = CFrame.new(-9848.0146484375, 37.8201789855957, 935.1932983398438)
                    elseif LV == 3525 or LV <= 3549 then
                        Mon = "Pondere [Lv. 3525]"
                        QuestUIName = "QuestLvl3525"
                        CFramemon = CFrame.new(-10009.771484375, 39.64752960205078, 1292.1866455078125)
                        QuestPosition = CFrame.new(-9926.197265625, 37.820167541503906, 1134.358154296875)
                    elseif LV >= 3549 then
                        Mon = "Hefty [Lv. 3550]"
                        QuestUIName = "QuestLvl3550"
                        CFramemon = CFrame.new(-10508.76953125, 83.25090789794922, 994.3049926757812)
                        QuestPosition = CFrame.new(-10311.259765625, 88.30504608154297, 995.5743408203125)
                    end
                end
            end
            checklevel()
        
        
        
            function checkboss()
                if oldworld then
                    if SaveSettings["Selectboss"] == "Smoky [Lv. 20]" then
                        MsBoss = "Smoky [Lv. 20]"
                        CFrameboss = CFrame.new(-1819.415283203125, 86.51949310302734, -4771.5673828125)
                    elseif SaveSettings["Selectboss"] == "Tashi [Lv. 30]" then
                        MsBoss = "Tashi [Lv. 30]"
                        CFrameboss = CFrame.new(-2272.403564453125, 48.30112075805664, -4680.3046875)
                    elseif SaveSettings["Selectboss"] == "The Clown [Lv. 75]" then
                        MsBoss = "The Clown [Lv. 75]"
                        CFrameboss = CFrame.new(-341.8336486816406, 89.38086700439453, -3638.275634765625)
                    elseif SaveSettings["Selectboss"] == "Captain [Lv. 120]" then
                        MsBoss = "Captain [Lv. 120]"
                        CFrameboss = CFrame.new(-2219.557373046875, 59.732784271240234, -2509.1484375)
                    elseif SaveSettings["Selectboss"] == "The Barbaric [Lv. 145]" then
                        MsBoss = "The Barbaric [Lv. 145]"
                        CFrameboss = CFrame.new(-2379.98291015625, 68.58027648925781, -2523.383544921875)
                    elseif SaveSettings["Selectboss"] == "Karate Fishman [Lv. 200]" then
                        MsBoss = "Karate Fishman [Lv. 200]"
                        CFrameboss = CFrame.new(-939.0033569335938, 10.491670608520508, -1272.0576171875)
                    elseif SaveSettings["Selectboss"] == "Shark Man [Lv. 230]" then
                        MsBoss = "Shark Man [Lv. 230]"
                        CFrameboss = CFrame.new(-466.8975830078125, 10.466651916503906, -1474.9945068359375)
                    elseif SaveSettings["Selectboss"] == "Dark Leg [Lv. 300]" then
                        MsBoss = "Dark Leg [Lv. 300]"
                        CFrameboss = CFrame.new(-4115.0673828125, 16.532974243164062, -3078.74365234375)
                    elseif SaveSettings["Selectboss"] == "Dory [Lv. 350]" then
                        MsBoss = "Dory [Lv. 350]"
                        CFrameboss = CFrame.new(-4115.0673828125, 16.532974243164062, -3078.74365234375)
                    elseif SaveSettings["Selectboss"] == "King Snow [Lv. 450]" then
                        MsBoss = "King Snow [Lv. 450]"
                        CFrameboss = CFrame.new(-5570.03515625, 22.22515869140625, -1664.440185546875)
                    elseif SaveSettings["Selectboss"] == "Little Dear [Lv. 500]" then
                        MsBoss = "Little Dear [Lv. 500]"
                        CFrameboss = CFrame.new(-5164.076171875, 18.387239456176758, -964.0694580078125)
                    elseif SaveSettings["Selectboss"] == "Candle Man [Lv. 525]" then
                        MsBoss = "Candle Man [Lv. 525]"
                        CFrameboss = CFrame.new(-2609.872802734375, 12.84097957611084, -645.6546020507812)
                    elseif SaveSettings["Selectboss"] == "Bomb Man [Lv. 625]" then
                        MsBoss = "Bomb Man [Lv. 625]"
                        CFrameboss = CFrame.new(-2915.44677734375, 14.481791496276855, -861.3796997070312)
                    elseif SaveSettings["Selectboss"] == "King of Sand [Lv. 725]" then
                        MsBoss = "King of Sand [Lv. 725]"
                        CFrameboss = CFrame.new(-3098.426513671875, 97.05123901367188, -505.8830871582031)
                    elseif SaveSettings["Selectboss"] == "Ball Man [Lv. 850]" then
                        MsBoss = "Ball Man [Lv. 850]"
                        CFrameboss = CFrame.new(-3965.90087890625, 394.2970275878906, 1230.6192626953125)
                    elseif SaveSettings["Selectboss"] == "Rumble Man [Lv. 900]" then
                        MsBoss = "Rumble Man [Lv. 900]"
                        CFrameboss = CFrame.new(-4077.582763671875, 386.42041015625, 1480.9727783203125)
                    elseif SaveSettings["Selectboss"] == "Leader [Lv. 1100]" then
                        MsBoss = "Leader [Lv. 1100]"
                        CFrameboss = CFrame.new(1925.5885009765625, 45.16677474975586, 642.844482421875)
                    elseif SaveSettings["Selectboss"] == "Pasta [Lv. 1150]" then
                        MsBoss = "Pasta [Lv. 1150]"
                        CFrameboss = CFrame.new(1503.2926025390625, 21.24049949645996, 1144.559814453125)
                    elseif SaveSettings["Selectboss"] == "Wolf [Lv. 1250]" then
                        MsBoss = "Wolf [Lv. 1250]"
                        CFrameboss = CFrame.new(-1396.669189453125, 18.01056480407715, 2169.44482421875)
                    elseif SaveSettings["Selectboss"] == "Giraffe [Lv. 1325]" then
                        MsBoss = "Giraffe [Lv. 1325]"
                        CFrameboss = CFrame.new(-1052.2403564453125, 15.132707595825195, 2191.0927734375)
                    elseif SaveSettings["Selectboss"] == "Leo [Lv. 1400]" then
                        MsBoss = "Leo [Lv. 1400]"
                        CFrameboss = CFrame.new(-1065.7257080078125, 13.672046661376953, 2971.991943359375)
                    elseif SaveSettings["Selectboss"] == "Shadow Master [Lv. 1600]" then
                        MsBoss = "Shadow Master [Lv. 1600]"
                        CFrameboss = CFrame.new(-2830.63525390625, 19.986780166625977, 4400.28076171875)
                    elseif SaveSettings["Selectboss"] == "True Karate Fishman [Lv. 1850]" then
                        MsBoss = "True Karate Fishman [Lv. 1850]"
                        CFrameboss = CFrame.new(2382.624755859375, 80.13693237304688, -1960.2882080078125)
                    elseif SaveSettings["Selectboss"] == "Quake Woman [Lv. 1925]" then
                        MsBoss = "Quake Woman [Lv. 1925]"
                        CFrameboss = CFrame.new(2265.5498046875, 11.373345375061035, -1931.3072509765625)
                    elseif SaveSettings["Selectboss"] == "Combat Fishman [Lv. 2050]" then
                        MsBoss = "Combat Fishman [Lv. 2050]"
                        CFrameboss = CFrame.new(-1980.767822265625, 61.937740325927734, 6230.13232421875)
                    elseif SaveSettings["Selectboss"] == "Sword Fishman [Lv. 2100]" then
                        MsBoss = "Sword Fishman [Lv. 2100]"
                        CFrameboss = CFrame.new(-1389.0233154296875, 51.46698760986328, 6742.76806640625)
                    elseif SaveSettings["Selectboss"] == "Seasoned Fishman [Lv. 2200]" then
                        MsBoss = "Seasoned Fishman [Lv. 2200]"
                        CFrameboss = CFrame.new(-1835.0504150390625, 45.15045928955078, 6612.59423828125)
                    end
                end
                if newworld then
                    if SaveSettings["Selectboss"] == "Gazelle Man [Lv. 2350]" then
                        MsBoss = "Gazelle Man [Lv. 2350]"
                        CFrameboss = CFrame.new(-4251.75732421875, 60.85749816894531, 188.61158752441406)
                        QuestPosition = CFrame.new(2878.932373046875, 57.34375762939453, 210.9672393798828)
                    elseif SaveSettings["Selectboss"] == "Violet Samurai [Lv. 2500]" then
                        MsBoss = "Violet Samurai [Lv. 2500]"
                        CFrameboss = CFrame.new(-5103.10302734375, 85.60206604003906, -930.0324096679688)
                        QuestPosition = CFrame.new(2106.35791015625, 85.36114501953125, -813.2427978515625)
                    elseif SaveSettings["Selectboss"] == "Duke [Lv. 2550]" then
                        MsBoss = "Duke [Lv. 2550]"
                        CFrameboss = CFrame.new(-5452.1015625, 100.40453338623047, -299.9353332519531)
                        QuestPosition = CFrame.new(1882.872314453125, 99.74776458740234, -41.73821258544922)
                    elseif SaveSettings["Selectboss"] == "Magician [Lv. 2600]" then
                        MsBoss = "Magician [Lv. 2600]"
                        CFrameboss = CFrame.new(-4985.248046875, 57.260536193847656, 52.113990783691406)
                        QuestPosition = CFrame.new(2306.781005859375, 57.29374313354492, 124.85055541992188)
                    elseif SaveSettings["Selectboss"] == "Kitsune Samurai [Lv. 2650]" then
                        MsBoss = "Kitsune Samurai [Lv. 2650]"
                        CFrameboss = CFrame.new(-5508.32861328125, 107.39733123779297, 111.27311706542969)
                        QuestPosition = CFrame.new(2019.0948486328125, 99.74776458740234, 259.51104736328125)
                    elseif SaveSettings["Selectboss"] == "Bear Man [Lv. 2750]" then
                        MsBoss = "Bear Man [Lv. 2750]"
                        CFrameboss = CFrame.new(-4454.2041015625, 29.2312068939209, 881.9096069335938)
                        QuestPosition = CFrame.new(3108.916015625, 29.21441078186035, 1369.2991943359375)
                    elseif SaveSettings["Selectboss"] == "Meji [Lv. 2850]" then
                        MsBoss = "Meji [Lv. 2850]"
                        CFrameboss = CFrame.new(-5335.333984375, 71.97783660888672, 1152.7501220703125)
                        QuestPosition = CFrame.new(1795.4217529296875, 57.29374313354492, 1035.3172607421875)
                    elseif SaveSettings["Selectboss"] == "Pachy Woman [Lv. 2900]" then
                        MsBoss = "Pachy Woman [Lv. 2900]"
                        CFrameboss = CFrame.new(-5834.5927734375, 57.26054382324219, 1282.63818359375)
                        QuestPosition = CFrame.new(1775.2606201171875, 57.29374313354492, 1278.7637939453125)
                    elseif SaveSettings["Selectboss"] == "Kappa [Lv. 2950]" then
                        MsBoss = "Kappa [Lv. 2950]"
                        CFrameboss = CFrame.new(-4847.7021484375, 59.443397521972656, 1953.459228515625)
                        QuestPosition = CFrame.new(2184.30126953125, 57.3437614440918, 1961.7701416015625)
                    elseif SaveSettings["Selectboss"] == "Joey [Lv. 3000]" then
                        MsBoss = "Joey [Lv. 3000]"
                        CFrameboss = CFrame.new(-5202.92822265625, 57.31475830078125, 1983.2637939453125)
                        QuestPosition = CFrame.new(2138.514892578125, 57.3437614440918, 1957.2843017578125)
                    elseif SaveSettings["Selectboss"] == "Elite Skeleton [Lv. 3100]" then
                        MsBoss = "Elite Skeleton [Lv. 3100]"
                        CFrameboss = CFrame.new(-5947.3740234375, 98.17839050292969, 7219.18505859375)
                        QuestPosition = CFrame.new(1256.404541015625, 57.75295639038086, 7061.60498046875)
                    elseif SaveSettings["Selectboss"] == "Desert Thief [Lv. 3125]" then
                        MsBoss = "Desert Thief [Lv. 3125]"
                        CFrameboss = CFrame.new(1367.941650390625, 14.446194648742676, 1554.822265625)
                        QuestPosition = CFrame.new(8845.3447265625, 14.393640518188477, 1401.0155029296875)
                    elseif SaveSettings["Selectboss"] == "Anubis [Lv. 3150]" then
                        MsBoss = "Anubis [Lv. 3150]"
                        CFrameboss = CFrame.new(2121.1474609375, 14.360448837280273, 958.4701538085938)
                        QuestPosition = CFrame.new(9140.7509765625, 14.393640518188477, 1057.4765625)
                    elseif SaveSettings["Selectboss"] == "Pharaoh [Lv. 3175]" then
                        MsBoss = "Pharaoh [Lv. 3175]"
                        CFrameboss = CFrame.new(2041.7005615234375, 48.80284881591797, 1644.022705078125)
                        QuestPosition = CFrame.new(9551.80859375, 14.394594192504883, 1545.6085205078125)
                    elseif SaveSettings["Selectboss"] == "Flame User [Lv. 3200]" then
                        MsBoss = "Flame User [Lv. 3200]"
                        CFrameboss = CFrame.new(2650.991455078125, 14.36140251159668, 1680.7032470703125)
                        QuestPosition = CFrame.new(9854.30859375, 14.36164665222168, 1685.126220703125)
                    elseif SaveSettings["Selectboss"] == "Sunken Vessel [Lv. 3225]" then
                        MsBoss = "Sunken Vessel [Lv. 3225]"
                        CFrameboss = CFrame.new(-1182.27685546875, 58.331050872802734, 8201.4580078125)
                        QuestPosition = CFrame.new(6362.99365234375, 28.61766242980957, 8022.49560546875)
                    elseif SaveSettings["Selectboss"] == "Biscuit Man [Lv. 3250]" then ----- ถึงนี้
                        MsBoss = "Biscuit Man [Lv. 3250]"
                        CFrameboss = CFrame.new(-1392.253173828125, 192.52328491210938, 8828.34765625)
                        QuestPosition = CFrame.new(5994.8876953125, 202.25051879882812, 8882.9052734375)
                    elseif SaveSettings["Selectboss"] == "Dough Master [Lv. 3275]" then
                        MsBoss = "Dough Master [Lv. 3275]"
                        CFrameboss = CFrame.new(30327.8125, 65.4273681640625, 93191.46875)
                        QuestPosition = CFrame.new(30327.8125, 65.4273681640625, 93191.46875)
                    elseif SaveSettings["Selectboss"] == "Ms. Mother [Lv. 3275]" then
                        MsBoss = "Ms. Mother [Lv. 3275]"
                        CFrameboss = CFrame.new(6924.48047, 182.758865, 9076.78906, 0.959941387, 0, 0.280200899, 0, 1, 0, -0.280200899, 0, 0.959941387)
                        QuestPosition = CFrame.new(6924.48047, 182.758865, 9076.78906, 0.959941387, 0, 0.280200899, 0, 1, 0, -0.280200899, 0, 0.959941387)
                    elseif SaveSettings["Selectboss"] == "Supreme Swordman [Lv. 3425]" then
                        MsBoss = "Supreme Swordman [Lv. 3425]"
                        CFrameboss = CFrame.new(-9737.37109375, 59.225555419921875, -4589.32861328125)
                        QuestPosition = CFrame.new(6924.48047, 182.758865, 9076.78906, 0.959941387, 0, 0.280200899, 0, 1, 0, -0.280200899, 0, 0.959941387)
                    elseif SaveSettings["Selectboss"] == "Sally [Lv. 3450]" then
                        MsBoss = "Sally [Lv. 3450]"
                        CFrameboss = CFrame.new(-9510.95703125, 59.24544906616211, -5220.14111328125)
                        QuestPosition = CFrame.new(6924.48047, 182.758865, 9076.78906, 0.959941387, 0, 0.280200899, 0, 1, 0, -0.280200899, 0, 0.959941387)
                    elseif SaveSettings["Selectboss"] == "Pondere [Lv. 3525]" then
                        MsBoss = "Pondere [Lv. 3525]"
                        CFrameboss = CFrame.new(-10009.771484375, 39.64752960205078, 1292.1866455078125)
                        QuestPosition = CFrame.new(6924.48047, 182.758865, 9076.78906, 0.959941387, 0, 0.280200899, 0, 1, 0, -0.280200899, 0, 0.959941387)
                    elseif SaveSettings["Selectboss"] == "Hefty [Lv. 3550]" then
                        MsBoss = "Hefty [Lv. 3550]"
                        CFrameboss = CFrame.new(-10508.76953125, 83.25090789794922, 994.3049926757812)
                        QuestPosition = CFrame.new(6924.48047, 182.758865, 9076.78906, 0.959941387, 0, 0.280200899, 0, 1, 0, -0.280200899, 0, 0.959941387)
                    end
                end
            end
            checkboss()
        
        
            local function click()
                if SaveSettings["weapon"] == "Sword" then
                    game:GetService("ReplicatedStorage").Remotes.Functions.SkillAction:InvokeServer("SW_".. game:GetService("Players").LocalPlayer.PlayerStats.SwordName.Value .."_M1")
                end
                if SaveSettings["weapon"] == "Combat" then
                    game:GetService("ReplicatedStorage").Remotes.Functions.SkillAction:InvokeServer("FS_".. game:GetService("Players").LocalPlayer.PlayerStats.FightingStyle.Value .."_M1")
                end
                if SaveSettings["weapon"] == "Fruit Power" then
                    game:GetService("ReplicatedStorage").Remotes.Functions.SkillAction:InvokeServer("DF_".. game:GetService("Players").LocalPlayer.PlayerStats.DFName.Value .."_M1")
                end
            end
        
            local function kaitanclick()
                if SaveSettings["weaponfarmkai"] == "Sword" then
                    game:GetService("ReplicatedStorage").Remotes.Functions.SkillAction:InvokeServer("SW_".. game:GetService("Players").LocalPlayer.PlayerStats.SwordName.Value .."_M1")
                end
                if SaveSettings["weaponfarmkai"] == "Combat" then
                    game:GetService("ReplicatedStorage").Remotes.Functions.SkillAction:InvokeServer("FS_".. game:GetService("Players").LocalPlayer.PlayerStats.FightingStyle.Value .."_M1")
                end
                if SaveSettings["weaponfarmkai"] == "Fruit Power" then
                    game:GetService("ReplicatedStorage").Remotes.Functions.SkillAction:InvokeServer("DF_".. game:GetService("Players").LocalPlayer.PlayerStats.DFName.Value .."_M1")
                end
            end
        
            function HopServer()
                local PlaceID = game.PlaceId
                local AllIDs = {}
                local foundAnything = ""
                local actualHour = os.date("!*t").hour
                local Deleted = false
                --[[
                local File = pcall(function()
                    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
                end)
                if not File then
                    table.insert(AllIDs, actualHour)
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                end
                ]]
                function TPReturner()
                    local Site;
                    if foundAnything == "" then
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                    else
                        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                    end
                    local ID = ""
                    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                        foundAnything = Site.nextPageCursor
                    end
                    local num = 0;
                    for i,v in pairs(Site.data) do
                        local Possible = true
                        ID = tostring(v.id)
                        if tonumber(v.maxPlayers) > tonumber(v.playing) then
                            for _,Existing in pairs(AllIDs) do
                                if num ~= 0 then
                                    if ID == tostring(Existing) then
                                        Possible = false
                                    end
                                else
                                    if tonumber(actualHour) ~= tonumber(Existing) then
                                        local delFile = pcall(function()
                                            -- delfile("NotSameServers.json")
                                            AllIDs = {}
                                            table.insert(AllIDs, actualHour)
                                        end)
                                    end
                                end
                                num = num + 1
                            end
                            if Possible == true then
                                table.insert(AllIDs, ID)
                                wait()
                                pcall(function()
                                    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                    wait()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                end)
                                wait(4)
                            end
                        end
                    end
                end
        
                function Teleport()
                    while wait() do
                        pcall(function()
                            TPReturner()
                            if foundAnything ~= "" then
                                TPReturner()
                            end
                        end)
                    end
                end
        
                Teleport()
                wait(1)
            end
        
        
            Toggle_Section:AddToggle({
                Name = "Auto Farm",
                Value = SaveSettings["Autofarm"],
                Callback = function(a)
                    checklevel()
                    wait(.5)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramemon
                    wait(.3)
                    SaveSettings["Autofarm"] = a
                    Save()
                end,
            })
        
            local SeaWorld = Toggle_Section:AddToggle({
                Name = "Auto Second World",
                Value = SaveSettings["AutonewW"],
                Callback = function(a)
                    SaveSettings["AutonewW"] = a
                    Save()
                end,
            })
        
            local Kaitan_Main = General_Tab:CreateSection({
                Name = "Kaitan", -- Name
                Side = 'Right' -- Left or Right
            })
        
            local Kaitanfarm = Kaitan_Main:AddToggle({
                Name = "Kaitan Farm",
                Value = SaveSettings["Kaitan"],
                Callback = function(a)
                    checklevel()
                    wait(.5)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramemon
                    wait(.3)
                    SaveSettings["Kaitan"] = a
                end,
            })
        
            local JitterFARM = Kaitan_Main:AddToggle({
                Name = "Sword",
                Value = SaveSettings["jitterfarm"],
                Callback = function(a)
                    SaveSettings["jitterfarm"] = a
                end,
            })
        
            task.spawn(function()
                if true then wait(.2)
                    function UseCode(Text)
                        game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer(Text)
                    end
                    UseCode("UPDATE4.0.2")
                    UseCode("HYDRAGLYPHICS")
                    UseCode("900KLIKES")
                    UseCode("UPDATE4")
                    UseCode("Peodiz")
                    UseCode("DinoxLive")
                end
            end)
            
            if oldworld then
                task.spawn(function()
                    while true do task.wait()
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Katana") then
                                repeat  task.wait()
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2190.2265625, 48.325706481933594, -4651.5263671875)
                                        wait()
                                        game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.SwordShop)
                                    end)
                                until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SwordShop")
                                wait(0.3)
                                local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SwordShop")
                                wait(0.5)
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Accept.ImageTransparency = 1
                                    end
                                end
                                wait(0.5)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                            end
                        end)
                    end
                end)
            end
            
            task.spawn(function()
                game:GetService("RunService").Stepped:Connect(function()
                    if SaveSettings["Kaitan"] then
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                        pcall(function()
                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                        end)
                    else
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = true
                            end
                        end
                    end
                end)
            end)
            
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Kaitan"] then
                        pcall(function()
                            checklevel()
                            if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible then
                                if game:GetService("Workspace").Monster.Mon:FindFirstChild(Mon) then
                                    for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                                        if v.Name == Mon and v.Humanoid.Health > 0 then
                                            repeat
                                                equipekaitan()
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,9,0)
                                                kaitanclick()
                                            until v.Humanoid.Health <= 0 or SaveSettings["Kaitan"] == false
                                        end 
                                    end
                                elseif game:GetService("Workspace").Monster.Boss:FindFirstChild(Mon) then
                                    for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                        if v.Name == Mon and v.Humanoid.Health > 0 then 
                                            repeat
                                                equipekaitan()
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,9.5,0)
                                                kaitanclick()
                                            until v.Humanoid.Health <= 0 or SaveSettings["Kaitan"] == false
                                        end 
                                    end
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramemon
                                end
                            else
                                pcall(function()
                                    getquest() 
                                end)
                            end
                        end)
                    end
                end
            end)
            
            if oldworld then
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["Kaitan"] then
                            if game:GetService("Players").LocalPlayer.PlayerStats.lvl.Value >= 2200 then
                                pcall(function()
                                    Kaitanfarm:Set(false)
                                    SeaWorld:Set(true)
                                end)
                            end
                        end
                    end
                end)
            end
        
        
        
        
        
            if oldworld then
                spawn(function()
                    while true do task.wait()
                        if SaveSettings["Kaitan"] then
                            for i,v in pairs(game:GetService("Players").LocalPlayer.Inventory:GetChildren()) do
                                local level = game:GetService("Players").LocalPlayer.PlayerStats.lvl.Value
                                if level >= 20 then
                                    if v.Name == "Jitter" then
                                        game:GetService("ReplicatedStorage").Remotes.Functions.InventoryEq:InvokeServer("Jitter")
                                        JitterFARM:Set(false)
                                        Kaitanfarm:Set(true)
                                        print("find jitter")
                                    else
                                        if not  game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Jitter") then
                                            repeat wait(.1)
                                                Kaitanfarm:Set(false)
                                                JitterFARM:Set(true)
                                                pcall(function()
                                                        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible then
                                                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Smoky [Lv. 20]") then
                                                                for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                                                    if v.Name == "Smoky [Lv. 20]" and v.Humanoid.Health > 0 then 
                                                                        repeat
                                                                            equipekaitan()
                                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,9.5,0)
                                                                            kaitanclick()
                                                                        until v.Humanoid.Health <= 0
                                                                    end 
                                                                end
                                                            else
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.415283203125, 86.51949310302734, -4771.5673828125)
                                                            end
                                                        else
                                                            pcall(function()
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1965.014404296875, 48.30112838745117, -4617.02392578125)
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                                                wait(0.3)
                                                                game:GetService("Players").LocalPlayer.PlayerGui["QuestLvl20"].Dialogue.Accept.Size = UDim2.new(5000, 5000, 5000, 5000)
                                                                game:GetService("Players").LocalPlayer.PlayerGui["QuestLvl20"].Dialogue.Accept.Position = UDim2.new(0, -700, 0, -700)
                                                                wait(0.3)
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                                            end)
                                                        end
                                                end)
                                            wait()
                                            until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Jitter") and game:GetService("ReplicatedStorage").Remotes.Functions.InventoryEq:InvokeServer("Jitter")
                                        end
                                    end
                                elseif level >= 900 then
                                    if v.Name == "Pole" then
                                        game:GetService("ReplicatedStorage").Remotes.Functions.InventoryEq:InvokeServer("Pole")
                                        JitterFARM:Set(false)
                                        Kaitanfarm:Set(true)
                                        print("find pole")
                                    else
                                        if not  game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Pole") then
                                            Kaitanfarm:Set(false)
                                            JitterFARM:Set(true)
                                            repeat wait(.1)
                                                pcall(function()
                                                        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible then
                                                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Rumble Man [Lv. 900]") then
                                                                for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                                                    if v.Name == "Rumble Man [Lv. 900]" and v.Humanoid.Health > 0 then 
                                                                        repeat
                                                                            equipekaitan()
                                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,9.5,0)
                                                                            kaitanclick()
                                                                        until v.Humanoid.Health <= 0
                                                                    end 
                                                                end
                                                            else
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4077.582763671875, 386.42041015625, 1480.9727783203125)
                                                            end
                                                        else
                                                            pcall(function()
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4093.2626953125, 386.4204406738281, 1339.425537109375)
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                                                wait(0.3)
                                                                game:GetService("Players").LocalPlayer.PlayerGui["QuestLvl900"].Dialogue.Accept.Size = UDim2.new(5000, 5000, 5000, 5000)
                                                                game:GetService("Players").LocalPlayer.PlayerGui["QuestLvl900"].Dialogue.Accept.Position = UDim2.new(0, -700, 0, -700)
                                                                wait(0.3)
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                                            end)
                                                        end
                                                end)
                                            wait()
                                            until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Pole") and game:GetService("ReplicatedStorage").Remotes.Functions.InventoryEq:InvokeServer("Pole")
                                        end
                                    end
                                elseif level >= 1925 then
                                    if v.Name == "Bisento" then
                                        game:GetService("ReplicatedStorage").Remotes.Functions.InventoryEq:InvokeServer("Bisento")
                                        JitterFARM:Set(false)
                                        Kaitanfarm:Set(true)
                                        print("find bisento")
                                    else
                                        if not  game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Bisento") then
                                            repeat wait(.1)
                                                Kaitanfarm:Set(false)
                                                JitterFARM:Set(true)
                                                pcall(function()
                                                        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible then
                                                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Quake Woman [Lv. 1925]") then
                                                                for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                                                    if v.Name == "Quake Woman [Lv. 1925]" and v.Humanoid.Health > 0 then 
                                                                        repeat
                                                                            equipekaitan()
                                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,9.5,0)
                                                                            kaitanclick()
                                                                        until v.Humanoid.Health <= 0
                                                                    end 
                                                                end
                                                            else
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2265.5498046875, 11.373345375061035, -1931.3072509765625)
                                                            end
                                                        else
                                                            pcall(function()
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2115.751953125, 49.59974670410156, -2117.072021484375)
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                                                wait(0.3)
                                                                game:GetService("Players").LocalPlayer.PlayerGui["QuestLvl1925"].Dialogue.Accept.Size = UDim2.new(5000, 5000, 5000, 5000)
                                                                game:GetService("Players").LocalPlayer.PlayerGui["QuestLvl1925"].Dialogue.Accept.Position = UDim2.new(0, -700, 0, -700)
                                                                wait(0.3)
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                                            end)
                                                        end
                                                end)
                                            wait()
                                            until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Pole") and game:GetService("ReplicatedStorage").Remotes.Functions.InventoryEq:InvokeServer("Pole")
                                        end
                                    end
                                end
                            end    
                        end
                    end
                end)
            end
            
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Kaitan"] or SaveSettings["jitterfarm"] then
                        pcall(function()
                            if game:GetService("Players").LocalPlayer.PlayerStats.sword.Value <= 4500 then
                                game.Players.LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Sword", 1)
                            else
                                game.Players.LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Defense", 1)
                            end
                        end)
                    end
                end
            end)
        
            spawn(function()
                while true do
                    wait()
                    if SaveSettings["AutonewW"] == true then
                        function checkcango()
                            NW_AlreadyGetQuest = false
                            repeat 
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2407.066162109375, 16.175718307495117, -4362.8046875)
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC:WaitForChild("Elite Pirate"))
                            until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Elite Pirate")
                            local UI =game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Elite Pirate")
                            wait(0.5)
                            local waitmeplease = UI.Dialogue.TextFrame.Line001.Container:WaitForChild("Group005")
                            if UI.Dialogue.TextFrame.Line001.Container.Group005.Text == "not" then
                                return "CANTGO"
                            else
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Accept.ImageTransparency = 1
                                    end
                                end
                                wait(0.1)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                                return "LETGO"
                            end
                        end
                    end
                end
            end)
        
        
            spawn(function()
                while true do 
                    wait()
                    if SaveSettings["AutonewW"] == true then
                    local Check = checkcango()
                    if Check == "LETGO" then
                        -- LET'S GO!! :D
                    elseif Check == "CANTGO" then
                        wait(0.5)
                        for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                            if v.Name == "Dialogue" then
                                v.Decline.Size = UDim2.new(0, 10000, 0, 10000)
                                v.Decline.Position = UDim2.new(-2, 0, -5, 0)
                            end
                        end
                        wait(0.5)
                        game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                        game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                        wait(2)
                        if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
                            game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
                        end
                        
                        repeat
                            wait()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard["exp"].Text ~= "Exp 16.5K" then
                                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Quest:GetDescendants()) do
                                    if v.Name == "Close" then
                                        v.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Position = UDim2.new(-2, 0, -5, 0)
                                    end
                                end
                                wait(0.5)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                            else
                                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Quest:GetDescendants()) do
                                    if v.Name == "Close" then
                                        v.Size = UDim2.new(0, 0, 0, 0)
                                        v.Position = UDim2.new(-2, 0, -5, 0)
                                    end
                                end
                            end
                            -- kill boss 
                            repeat
                                pcall(function()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Seasoned Fishman [Lv. 2200]") then
                                        NW_AlreadyGetQuest = true
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Seasoned Fishman [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Seasoned Fishman [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Seasoned Fishman [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"])  
                                        end
                                        equipeweapontype()
                                        click()
                                    else
                                        NW_AlreadyGetQuest = true
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1835.0504150390625, 45.15045928955078, 6612.59423828125)
                                    end
                                end)
                                wait()
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Map") or game.Players.LocalPlayer.Backpack:FindFirstChild("Map") or SaveSettings["AutoNewWorld"] == false
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Map") or game.Players.LocalPlayer.Backpack:FindFirstChild("Map") then
                                repeat 
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2608.69140625, 211.30348205566406, -1808.8570556640625)
                                        wait()
                                        game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC:WaitForChild("Traveler"))
                                    end)
                                until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Traveler") or SaveSettings["AutoNewWorld"] == false
                                local UI = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Traveler")
                                wait(0.5)
                                local waitmeplease = UI.Dialogue.TextFrame.Line001.Container:WaitForChild("Group005")
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Accept.ImageTransparency = 1
                                    end
                                end
                                wait(0.1)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                            end
                            -- kill boss
                        else
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2609.994384765625, 211.30348205566406, -1808.6585693359375)
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.Traveler)
                            wait(0.1)
                            local UI = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Traveler")
                            wait(1)
                            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                if v.Name == "Dialogue" then
                                    v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                    v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                    v.Accept.ImageTransparency = 1
                                end
                            end
                            wait(0.1)
                            game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                            game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                        end
                        until SaveSettings["AutoNewWorld"] == false
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Map")  then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2609.994384765625, 211.30348205566406, -1808.6585693359375)
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                            game:GetService("Players").LocalPlayer.PlayerGui.Traveler.Dialogue.Accept.Size = UDim2.new(5000, 5000, 5000, 5000)
                            game:GetService("Players").LocalPlayer.PlayerGui.Traveler.Dialogue.Accept.Position = UDim2.new(0, -700, 0, -700)
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                            wait(.5)
                            checkcango()
                        end
                    end
                    end
                end
            end)
        
        
        
            spawn(function()
                while true do
                    wait()
                    if SaveSettings["Autofarm"] == true then
                    function equipeweapontype()
                        pcall(function()
                            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                if v:IsA("Tool") and v.ToolTip == SaveSettings["WeaponType"] then
                                    return
                                end
                            end
                            function getweapionname()
                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") and v.ToolTip ==  SaveSettings["WeaponType"] then
                                        return v.Name   
                                    end
                                end
                                return "NotFound"
                            end
                            local ResToolname = getweapionname()
                            if ResToolname == "NotFound" then
                            
                            else
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(ResToolname))
                            end
                        end)
                    end
            SaveSettings["WeaponType"] = "Sword"
                end
            end
            end)
        
            function getquest()
                checklevel()
                wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = QuestPosition
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                wait(0.3)
                game:GetService("Players").LocalPlayer.PlayerGui[QuestUIName].Dialogue.Accept.Size = UDim2.new(5000, 5000, 5000, 5000)
                game:GetService("Players").LocalPlayer.PlayerGui[QuestUIName].Dialogue.Accept.Position = UDim2.new(0, -700, 0, -700)
                wait(0.3)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
            end
        
            task.spawn(function()
                game:GetService("RunService").Stepped:Connect(function()
                    if SaveSettings["Autofarm"] or SaveSettings["AutonewW"]  or NW_AlreadyGetQuest or SaveSettings["Autosea"] or SaveSettings["AutoseaHop"] or SaveSettings["AutoGhostS"] or SaveSettings["AutoGhostSHop"] or SaveSettings["CollectGhost"] or SaveSettings["Onimask"] or SaveSettings["kaidouHop"] or SaveSettings["kaidou"] or SaveSettings["Autoboss"] or SaveSettings["Tengumask"] 
                    or SaveSettings["SaveType"] or SaveSettings["farmplayers"] or SaveSettings["AutoStainless"] then
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                        pcall(function()
                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                        end)
                    else
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = true
                            end
                        end
                    end
                end)
            end)
        
            task.spawn(function()
                while true do task.wait()
                    pcall(function()
                        if SaveSettings["Autofarm"] then
                            checklevel()
                            if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible then
                                if game:GetService("Workspace").Monster.Mon:FindFirstChild(Mon) then
                                    for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                                        if v.Name == Mon and v.Humanoid.Health > 0 then
                                            repeat
                                                equipeweapontype()
                                                if SaveSettings["SaveType"] == "Above" then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                                elseif SaveSettings["SaveType"] == "Under" then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                                elseif SaveSettings["SaveType"] == "Behind" then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame  * CFrame.new(0,0,SaveSettings["Distance"])                     
                                                end
                                                click()
                                            until v.Humanoid.Health <= 0 or SaveSettings["Autofarm"] == false
                                        end 
                                    end
                                elseif game:GetService("Workspace").Monster.Boss:FindFirstChild(Mon) then
                                    for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                        if v.Name == Mon and v.Humanoid.Health > 0 then 
                                            repeat
                                                equipeweapontype()
                                                if SaveSettings["SaveType"] == "Above" then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                                elseif SaveSettings["SaveType"] == "Under" then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                                elseif SaveSettings["SaveType"] == "Behind" then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame  * CFrame.new(0,0,SaveSettings["Distance"])                     
                                                end
                                                click()
                                            until v.Humanoid.Health <= 0 or SaveSettings["Autofarm"] == false
                                        end 
                                    end
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramemon
                                end
                            else
                                pcall(function()
                                    getquest() 
                                end)
                            end
                        end
                    end)
                end
            end)
        
        
            spawn(function()
            while  wait(.2) do
                local busohee = game.Players.LocalPlayer.PlayerStats.BusoShopValue.Value
                if  SaveSettings["Autofarm"] or SaveSettings["Autosea"] or SaveSettings["AutoseaHop"] or SaveSettings["AutoBuso"] or SaveSettings["Kaitan"] or SaveSettings["jitterfarm"] then
                    pcall(function()
                        if game.Players.LocalPlayer.Character.Haki.Value == 0 then
                            game:GetService("Players").LocalPlayer.Character.Services.Client.Armament:FireServer()
                        end
                    end)
                end
            end
            end)
        
        
        
            local Weapon_Section = General_Tab:CreateSection({
                Name = "Weapon", -- Name
                Side = 'Right' -- Left or Right
            })
        
        
        
            local WPDropDown = Weapon_Section:AddDropdown({
                Name = "Select Weapon",
                Flag = "selectedweapon",
                Value = SaveSettings["weapon"],
                Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                List = SaveSettings["Weaponlist"], -- calls 'Method' (or GetChildren) on specifyed instance
                Callback = function(bool)
                    SaveSettings["weapon"] = bool
                    Save()
                end
            })
        
            Weapon_Section:AddToggle({
                Name = "Auto Equip",
                Value = SaveSettings["Eqweapon"],
                Callback = function(a)
                    SaveSettings["Eqweapon"] = a
                    Save()
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    pcall(function()
                        if SaveSettings["Eqweapon"] then
                            equipeweapontype()
                        end
                    end)
                end
            end)
        
        
            --- setting farm
            local Setfarm_Section = General_Tab:CreateSection({
                Name = "Weapon", -- Name
                Side = 'Right' -- Left or Right
            })
        
            local Typedropdown = Setfarm_Section:AddDropdown({
                Name = "Select Type Farm",
                Flag = "selectedtypefarm",
                Value = SaveSettings["SaveType"],
                Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                List = SaveSettings["Typefarm"], -- calls 'Method' (or GetChildren) on specifyed instance
                Callback = function(bool)
                    SaveSettings["SaveType"] = bool
                    Save()
                end
            })
        
            local Slider_distance = Setfarm_Section:AddSlider({
                Name = "Distance farm",
                Min = 0,
                Max = 50,
                Value = SaveSettings["Distance"],
                Callback = function(a)
                    SaveSettings["Distance"] = a
                    Save()
                end,
            })
        
            Setfarm_Section:AddToggle({
                Name = "Auto Buso",
                Value = SaveSettings["AutoBuso"],
                Callback = function(a)
                    SaveSettings["AutoBuso"] = a
                    Save()
                end,
            })
        
            Setfarm_Section:AddToggle({
                Name = "Auto Ken",
                Value = SaveSettings["AutoKen"],
                Callback = function(a)
                    SaveSettings["AutoKen"] = a
                    Save()
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AutoKen"] or SaveSettings["Kaitan"] or SaveSettings["jitterfarm"] then
                        pcall(function()
                            game.Players.LocalPlayer.Character.Services.Client.KenEvent:InvokeServer()  
                        end)
                    end
                end
            end)
        
        
        
        
        
            ----- Ghost Ships
            local GhostShip_Section = General_Tab:CreateSection({
                Name = "Ghost Ships", -- Name
                Side = 'Left' -- Left or Right
            })
        
            GhostShip_Section:AddToggle({
                Name = "Auto Ghost Ships",
                Value = SaveSettings["AutoGhostS"],
                Callback = function(a)
                    SaveSettings["AutoGhostS"] = a
                    Save()
                end,
            })
        
            GhostShip_Section:AddToggle({
                Name = "Auto Ghost Ships Hop",
                Value = SaveSettings["AutoGhostSHOP"],
                Callback = function(a)
                    SaveSettings["AutoGhostSHOP"] = a
                    Save()
                end,
            })
        
            GhostShip_Section:AddToggle({
                Name = "Auto Collect Chest",
                Value = SaveSettings["CollectGhost"],
                Callback = function(a)
                    SaveSettings["CollectGhost"] = a
                    Save()
                end,
            })
            if newworld then
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AutoGhostS"] then
                            if game:GetService("Workspace").GhostMonster:FindFirstChild("Ghost Ship") then
                                pcall(function()
                                    spawn(function()
                                        skill("Z")
                                        skill("X")		
                                        skill("C")		
                                        skill("V")		
                                    end)  
                                    spawn(function()
                                        click()
                                    end)
                                    spawn(function()
                                        pcall(function()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GhostMonster["Ghost Ship"].HumanoidRootPart.CFrame
                                        end)
                                    end)
                                end)
                            else
                                if SaveSettings["AutoGhostSHOP"] then
                                    if not game:GetService("Workspace"):FindFirstChild("Chest1") then
                                        HopServer()
                                    end
                                end
                            end
                        end
                    end
                end)
        
                task.spawn(function() task.wait()
                    while true do 
                        if SaveSettings["CollectGhost"] then
                            if game:GetService("Workspace"):FindFirstChild("Chest1") then
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest1").RootPart.CFrame
                                    wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest2").RootPart.CFrame
                                    wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest3").RootPart.CFrame
                                    wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest4").RootPart.CFrame
                                    wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest5").RootPart.CFrame
                                    wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest1").RootPart.CFrame
                                    wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest2").RootPart.CFrame
        
                                end)
                            end
                        end
                        wait()
                    end
                end)
            end
        
            ---- Hydra
            local Hydra_Section = General_Tab:CreateSection({
                Name = "Hydra", -- Name
                Side = 'Left' -- Left or Right
            })
        
            Hydra_Section:AddToggle({
                Name = "Auto Hydra",
                Value = SaveSettings["Autohydra"],
                Callback = function(a)
                    SaveSettings["Autohydra"] = a
                    Save()
                end,
            })
        
            Hydra_Section:AddToggle({
                Name = "Auto Hydra Hop",
                Value = SaveSettings["AutohydraHop"],
                Callback = function(a)
                    SaveSettings["AutohydraHop"] = a
                    Save()
                end,
            })
        
            Hydra_Section:AddToggle({
                Name = "CollectChest",
                Value = SaveSettings["collectCheatHy"],
                Callback = function(a)
                    SaveSettings["collectCheatHy"] = a
                    Save()
                end,
            })
        
            if newworld then
                task.spawn(function()
                    while true do task.wait()
                        pcall(function()
                            if SaveSettings["Autohydra"] then
                                if game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing") and game:GetService("Workspace").SeaMonster.HydraSeaKing.Humanoid.Health > 0 then
                                    repeat wait()
                                        spawn(function()
                                            skill("Z")
                                            skill("X")		
                                            skill("C")		
                                            skill("V")		
                                        end)
                                        spawn(function()
                                            click()
                                        end)
                                        spawn(function()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing").HB1.CFrame * CFrame.new(0,-70,0) * CFrame.Angles(math.rad(0),0,0)
                                        end)
                                    until game:GetService("Workspace").SeaMonster.HydraSeaKing.Humanoid.Health >= 0 or SaveSettings["Autohydra"] == false
                                    if SaveSettings["collectCheatHy"] then
                                        pcall(function()
                                            if game:GetService("Workspace").Island:FindFirstChild("Sea King Water") then
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island["Sea King Water"].SeaBeastChest.RootPart.CFrame
                                            end
                                        end)
                                    end
                                else
                                    if SaveSettings["AutohydraHop"] then
                                        if not game:GetService("Workspace").Island:FindFirstChild("Sea King Water") then
                                            HopServer()
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        
        
        
        
        
            ----- SEA MONSTER
            local Seamonter_Section = General_Tab:CreateSection({
                Name = "Sea Monster", -- Name
                Side = 'Left' -- Left or Right
            })
        
        
            Seamonter_Section:AddToggle({
                Name = "Auto Sea Monster",
                Value = SaveSettings["Autosea"],
                Callback = function(a)
                    SaveSettings["Autosea"] = a
                    Save()
                end,
            })
        
            Seamonter_Section:AddToggle({
                Name = "Auto Sea Monster HOP",
                Value = SaveSettings["AutoseaHop"],
                Callback = function(a)
                    SaveSettings["AutoseaHop"] = a
                    Save()
                end,
            })
        
            Seamonter_Section:AddToggle({
                Name = "CollectChest",
                Value = SaveSettings["CollectChest"],
                Callback = function(a)
                    SaveSettings["CollectChest"] = a
                    Save()
                end,
            })
        
            if newworld then
                task.spawn(function()
                    while true do wait()
                        pcall(function()
                            if SaveSettings["Autosea"] then
                                if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") and game:GetService("Workspace").SeaMonster.SeaKing.Humanoid.Health > 0 then
                                    checkseaking()
                                    repeat wait()
                                        spawn(function()
                                            skill("Z")
                                            skill("X")		
                                            skill("C")		
                                            skill("V")		
                                        end)
                                        spawn(function()
                                            click()
                                        end)
                                        spawn(function()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing").Head.CFrame * CFrame.new(0,-30,0) * CFrame.Angles(math.rad(135),0,0)
                                        end)
                                    until game:GetService("Workspace").SeaMonster.SeaKing.Humanoid.Health >= 0 or SaveSettings["Autosea"] == false
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island["Legacy Island" .. LegacyIsland()[2]].ChestSpawner.CFrame
                                end
                            end
                        end)
                    end
                    wait()
                end)
        
        
                task.spawn(function()
                    while true do wait()
                        pcall(function()
                            if SaveSettings["AutoseaHop"] then
                                if LegacyIsland()[1] == true then
                                    if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") and game:GetService("Workspace").SeaMonster.SeaKing.Humanoid.Health > 0 then
                                        checkseaking()
                                        repeat wait()
                                            spawn(function()
                                                skill("Z")
                                                skill("X")		
                                                skill("C")		
                                                skill("V")		
                                            end)
                                            spawn(function()
                                                click()
                                            end)
                                            spawn(function()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing").Head.CFrame * CFrame.new(0,-30,0) * CFrame.Angles(math.rad(135),0,0)
                                            end)
                                        until game:GetService("Workspace").SeaMonster.SeaKing.Humanoid.Health >= 0 or SaveSettings["AutoseaHop"] == false
                                    else
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island["Legacy Island" .. LegacyIsland()[2]].ChestSpawner.CFrame
                                    end
                                else
                                    HopServer()
                                end
                            end
                        end)
                    end
                    wait()
                end)
        
                spawn(function()
                    while true do
                        if SaveSettings["CollectChest"] then
                            if LegacyIsland()[1] == true then
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island["Legacy Island" .. LegacyIsland()[2]].ChestSpawner.CFrame
                                end)
                            end
                        end
                        wait(1)
                    end
                end)
            end
        
        
            local SkillSetting = General_Tab:CreateSection({
                Name = "Auto Skill", -- Name
                Side = 'Right' -- Left or Right
            })
        
            SkillSetting:AddToggle({
                Name = "SKILL Z",
                Value = SaveSettings["SkillZ"],
                Callback = function(a)
                    SaveSettings["SkillZ"] = a
                    Save()
                end,
            })
        
            SkillSetting:AddToggle({
                Name = "SKILL X",
                Value = SaveSettings["SkillX"],
                Callback = function(a)
                    SaveSettings["SkillX"] = a
                    Save()
                end,
            })
        
            SkillSetting:AddToggle({
                Name = "SKILL C",
                Value = SaveSettings["SkillC"],
                Callback = function(a)
                    SaveSettings["SkillC"] = a
                    Save()
                end,
            })
        
            SkillSetting:AddToggle({
                Name = "SKILL V",
                Value = SaveSettings["SkillV"],
                Callback = function(a)
                    SaveSettings["SkillV"] = a
                    Save()
                end,
            })
        
            SkillSetting:AddToggle({
                Name = "SKILL Q",
                Value = SaveSettings["SkillQ"],
                Callback = function(a)
                    SaveSettings["SkillQ"] = a
                    Save()
                end,
            })
        
            SkillSetting:AddToggle({
                Name = "SKILL B",
                Value = SaveSettings["SkillB"],
                Callback = function(a)
                    SaveSettings["SkillB"] = a
                    Save()
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    pcall(function()
                        if SaveSettings["SkillZ"] then
                            skill("Z")
                        end
                        if SaveSettings["SkillX"] then
                            skill("X")
                        end
                        if SaveSettings["SkillC"] then
                            skill("C")
                        end
                        if SaveSettings["SkillV"] then
                            skill("V")
                        end
                        if SaveSettings["SkillQ"] then
                            skill("Q")
                        end
                        if SaveSettings["SkillB"] then
                            skill("B")
                        end
                    end)
                end
            end)
        
            SkillSetting:AddButton({
                Name = "Redeem Code",
                Callback = function()
                    task.spawn(function()
                        while true do wait(.2)
                            function UseCode(Text)
                                game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer(Text)
                            end
                            UseCode("650KLIKES")
                            UseCode("Peodiz")
                            UseCode("DinoxLive")
                            UseCode("UPDATE3.5")
                            UseCode("THXFOR1BVISIT")
                            UseCode("1MFAV")
                        end
                    end)
                end,
            })
        
            local Statsettings = General_Tab:CreateSection({
                Name = "Auto Stats", -- Name
                Side = 'Left' -- Left or Right
            })
        
            Statsettings:AddToggle({
                Name = "Auto Melee",
                Value = SaveSettings["Melee"],
                Callback = function(a)
                    SaveSettings["Melee"] = a
                    Save()
                end,
            })
        
            Statsettings:AddToggle({
                Name = "Auto Defense",
                Value = SaveSettings["Defense"],
                Callback = function(a)
                    SaveSettings["Defense"] = a
                    Save()
                end,
            })
        
            Statsettings:AddToggle({
                Name = "Auto Sword",
                Value = SaveSettings["Sword"],
                Callback = function(a)
                    SaveSettings["Sword"] = a
                    Save()
                end,
            })
        
            Statsettings:AddToggle({
                Name = "Auto Devil Fruit",
                Value = SaveSettings["Devil Fruit"],
                Callback = function(a)
                    SaveSettings["Devil Fruit"] = a
                    Save()
                end,
            })
        
            local Slider_Stats = Statsettings:AddSlider({
                Name = "Points",
                Min = 1,
                Max = 50,
                Value = SaveSettings["Pointstats"],
                Callback = function(a)
                    SaveSettings["Pointstats"] = a
                    Save()
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Melee"] then
                        pcall(function()
                            game.Players.LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Melee", SaveSettings["Pointstats"])
                        end)
                    end
                    if SaveSettings["Defense"] then
                        pcall(function()
                            game.Players.LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Defense", SaveSettings["Pointstats"])
                        end)
                    end
                    if SaveSettings["Sword"] then
                        pcall(function()
                            game.Players.LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Sword", SaveSettings["Pointstats"])
                        end)
                    end
                    if SaveSettings["Devil Fruit"] then
                        pcall(function()
                            game.Players.LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Devil Fruit", SaveSettings["Pointstats"])
                        end)
                    end
                end
            end)
        
        
        
            local Tool_Tap = PepsisWorld:CreateTab({
                Name = "Tool" -- Name
            })
        
        
            local AutoBoss = Tool_Tap:CreateSection({
                Name = "Auto Boss", -- Name
                Side = 'Left' -- Left or Right
            })
        
            if oldworld then
                local Bossdropdown = AutoBoss:AddDropdown({
                    Name = "Select Boss",
                    Flag = "selectedboss",
                    Value = SaveSettings["Selectboss"],
                    Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                    List = SaveSettings["listbossold"], -- calls 'Method' (or GetChildren) on specifyed instance
                    Callback = function(bool)
                        SaveSettings["Selectboss"] = bool
                        Save()
                    end
                })
        
                AutoBoss:AddToggle({
                    Name = "Auto Boss",
                    Value = SaveSettings["Autoboss"],
                    Callback = function(a)
                        checkboss()
                        wait(.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameboss
                        wait(.3)
                        SaveSettings["Autoboss"] = a
                        Save()
                    end,
                })
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["Autoboss"] then
                            pcall(function()
                                if game:GetService("Workspace").Monster.Boss:FindFirstChild(MsBoss) then
                                    for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                        if v.Name == MsBoss and v.Humanoid.Health > 0 then 
                                            equipeweapontype()
                                            if SaveSettings["SaveType"] == "Above" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                            elseif SaveSettings["SaveType"] == "Under" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                            elseif SaveSettings["SaveType"] == "Behind" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame  * CFrame.new(0,0,SaveSettings["Distance"])                     
                                            end
                                            click()
                                        end
                                    end 
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameboss
                                end
                            end)
                        end
                    end 
                end)
            end
        
            if newworld then
                local Bossdropdown = AutoBoss:AddDropdown({
                    Name = "Select Boss",
                    Flag = "selectedboss",
                    Value = SaveSettings["Selectboss"],
                    Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                    List = SaveSettings["listbossnew"], -- calls 'Method' (or GetChildren) on specifyed instance
                    Callback = function(bool)
                        SaveSettings["Selectboss"] = bool
                        Save()
                    end
                })
        
                AutoBoss:AddToggle({
                    Name = "Auto Boss",
                    Value = SaveSettings["Autoboss"],
                    Callback = function(a)
                        checkboss()
                        wait(.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameboss
                        wait(.3)
                        SaveSettings["Autoboss"] = a
                        Save()
                    end,
                })
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["Autoboss"] then
                            pcall(function()
                                if game:GetService("Workspace").Monster.Boss:FindFirstChild(MsBoss) then
                                    for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                        if v.Name == MsBoss and v.Humanoid.Health > 0 then 
                                            equipeweapontype()
                                            if SaveSettings["SaveType"] == "Above" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                            elseif SaveSettings["SaveType"] == "Under" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                            elseif SaveSettings["SaveType"] == "Behind" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame  * CFrame.new(0,0,SaveSettings["Distance"])                     
                                            end
                                            click()
                                        end
                                    end 
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameboss
                                end
                            end)
                        end
                    end 
                end)
            end
        
        
        
        
        
        
        
        
        
        
        
            local Accessories = Tool_Tap:CreateSection({
                Name = "Accessories", -- Name
                Side = 'Right' -- Left or Right
            })
        
        
            Accessories:AddToggle({
                Name = "Auto Oni Mask",
                Value = SaveSettings["Onimask"],
                Callback = function(a)
                    SaveSettings["Onimask"] = a
                    Save()
                end,
            })
        
        
            Accessories:AddToggle({
                Name = "Auto Tengu Mask",
                Value = SaveSettings["Tengumask"],
                Callback = function(a)
                    SaveSettings["Tengumask"] = a
                    Save()
                end,
            })
        
        
        
            --------------- ONI mask
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Onimask"] then
                        if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Oni Mask") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1026.3511962890625, 153.41018676757812, -3210.331298828125)
                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("The Ice King [Lv. 3350]") then
                                if SaveSettings["SaveType"] == "Above" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Ice King [Lv. 3350]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                elseif SaveSettings["SaveType"] == "Under" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Ice King [Lv. 3350]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                elseif SaveSettings["SaveType"] == "Behind" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Ice King [Lv. 3350]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                end
                                click()
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1026.3511962890625, 153.41018676757812, -3210.331298828125)
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Crystal") then
                                    repeat wait(.1)
                                        pcall(function()
                                            local mononi = "Azlan [Lv. 3300]"
                                            if game:GetService("Workspace").Monster.Mon:FindFirstChild(mononi) then
                                                for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                                                    if v.Name == mononi and v.Humanoid.Health > 0 then
                                                        repeat
                                                            if SaveSettings["SaveType"] == "Above" then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                                            elseif SaveSettings["SaveType"] == "Under" then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                                            elseif SaveSettings["SaveType"] == "Behind" then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                                            end
                                                            click()
                                                        until v.Humanoid.Health <= 0 or SaveSettings["Onimask"] == false
                                                    end
                                                end
                                            else
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-818.5586547851562, 69.32247924804688, -2857.620361328125)
                                            end
                                        end)
                                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Crystal") or SaveSettings["Onimask"] == false
                                end
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Crystal") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Crystal") then
                                    repeat 
                                        pcall(function()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1009.7815551757812, 158.24595642089844, -3404.090576171875)
                                            wait()
                                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.QuestLvl3350)
                                        end)
                                    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("QuestLvl3350") or SaveSettings["Onimask"] == false
                                    wait(0.3)
                                    local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("QuestLvl3350")
                                    wait(0.5)
                                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                        if v.Name == "Dialogue" then
                                            v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                            v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                            v.Accept.ImageTransparency = 1
                                        end
                                    end
                                    wait(0.5)
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                                end
                            end
                        end
                    end
                end
            end)
        
        
        
            ---- TENGU MASK 
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Tengumask"] then
                        if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Tengu Mask") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.12242889404297, 131.56011962890625, -4001.4052734375)
                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("The Crimson Demon [Lv. 3375]") then
                                if SaveSettings["SaveType"] == "Above" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Crimson Demon [Lv. 3375]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                elseif SaveSettings["SaveType"] == "Under" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Crimson Demon [Lv. 3375]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                elseif SaveSettings["SaveType"] == "Behind" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Crimson Demon [Lv. 3375]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                end
                                click()
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17.896268844604492, 140.97601318359375, -3735.451171875)
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Crystal") then
                                    repeat wait(.1)
                                        pcall(function()
                                            local montengu = "The Volcano [Lv. 3325]"
                                            if game:GetService("Workspace").Monster.Mon:FindFirstChild(montengu) then
                                                for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                                                    if v.Name == montengu and v.Humanoid.Health > 0 then
                                                        repeat
                                                            if SaveSettings["SaveType"] == "Above" then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                                            elseif SaveSettings["SaveType"] == "Under" then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                                            elseif SaveSettings["SaveType"] == "Behind" then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                                            end
                                                            click()
                                                        until v.Humanoid.Health <= 0 or SaveSettings["Tengumask"] == false
                                                    end
                                                end
                                            else
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17.896268844604492, 140.97601318359375, -3735.451171875)
                                            end
                                        end)
                                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Crystal") or SaveSettings["Tengumask"] == false
                                end
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Crystal") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Crystal") then
                                    repeat 
                                        pcall(function()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.83430480957031, 135.00950622558594, -3910.845703125)
                                            wait()
                                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.QuestLvl3375)
                                        end)
                                    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("QuestLvl3375") or SaveSettings["Tengumask"] == false
                                    wait(0.3)
                                    local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("QuestLvl3375")
                                    wait(0.5)
                                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                        if v.Name == "Dialogue" then
                                            v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                            v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                            v.Accept.ImageTransparency = 1
                                        end
                                    end
                                    wait(0.5)
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                                end
                            end
                        end
                    end
                end
            end)
        
        
            local AutoSwordOther = Tool_Tap:CreateSection({
                Name = "Auto Sword Other", -- Name
                Side = 'Right' -- Left or Right
            })
        
        
            AutoSwordOther:AddToggle({
                Name = "Auto Hell Sword",
                Value = SaveSettings["AHellSword"],
                Callback = function(a)
                    SaveSettings["AHellSword"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5724.810546875, 353.7306823730469, 85.04705047607422)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Hell Sword Hop",
                Value = SaveSettings["AHellSwordHop"],
                Callback = function(a)
                    SaveSettings["AHellSwordHop"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5724.810546875, 353.7306823730469, 85.04705047607422)
                    Save()
                end,
            })
        
        
            AutoSwordOther:AddToggle({
                Name = "Auto Muramasa",
                Value = SaveSettings["AMuramasa"],
                Callback = function(a)
                    SaveSettings["AMuramasa"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5724.810546875, 353.7306823730469, 85.04705047607422)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Muramasa Hop",
                Value = SaveSettings["AMuramasaHop"],
                Callback = function(a)
                    SaveSettings["AMuramasaHop"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5724.810546875, 353.7306823730469, 85.04705047607422)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Phoenix Blade",
                Value = SaveSettings["APhoenixBlade"],
                Callback = function(a)
                    SaveSettings["APhoenixBlade"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-307.43280029296875, 175.8491973876953, 8864.9033203125)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Phoenix Blade Hop",
                Value = SaveSettings["APhoenixBladeHop"],
                Callback = function(a)
                    SaveSettings["APhoenixBladeHop"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-307.43280029296875, 175.8491973876953, 8864.9033203125)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Metal Trident",
                Value = SaveSettings["AMetalTrident"],
                Callback = function(a)
                    SaveSettings["AMetalTrident"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30384.408203125, 24.767988204956055, 93271.390625)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Metal Trident Hop",
                Value = SaveSettings["AMetalTridentHop"],
                Callback = function(a)
                    SaveSettings["AMetalTridentHop"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30384.408203125, 24.767988204956055, 93271.390625)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Pondere Blade",
                Value = SaveSettings["APondereBlade"],
                Callback = function(a)
                    SaveSettings["APondereBlade"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10060.326171875, 73.78651428222656, 1254.289306640625)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Soul Cane",
                Value = SaveSettings["ASoulCane"],
                Callback = function(a)
                    SaveSettings["ASoulCane"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9510.95703125, 59.24544906616211, -5220.14111328125)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Cookie Sword",
                Value = SaveSettings["ACookieSword"],
                Callback = function(a)
                    SaveSettings["ACookieSword"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1392.253173828125, 192.52328491210938, 8828.34765625)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Kioru",
                Value = SaveSettings["AKioru"],
                Callback = function(a)
                    SaveSettings["AKioru"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.6608581542969, 56.55436706542969, 8082.724609375)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Adventure Knife",
                Value = SaveSettings["AAdvenknife"],
                Callback = function(a)
                    SaveSettings["AAdvenknife"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2650.991455078125, 14.36140251159668, 1680.7032470703125)
                    Save()
                end,
            })
        
            AutoSwordOther:AddToggle({
                Name = "Auto Anubis",
                Value = SaveSettings["AAnubis"],
                Callback = function(a)
                    SaveSettings["AAnubis"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2121.1474609375, 14.360448837280273, 958.4701538085938)
                    Save()
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["ASoulCane"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Soul Cane") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Sally [Lv. 3450]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sally [Lv. 3450]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sally [Lv. 3450]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sally [Lv. 3450]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Soul Cane") or SaveSettings["ASoulCane"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["APondereBlade"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Pondere Blade") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Pondere [Lv. 3525]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Pondere [Lv. 3525]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Pondere [Lv. 3525]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Pondere [Lv. 3525]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Pondere Blade") or SaveSettings["APondereBlade"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AAdvenknife"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Adventure Knife") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Flame User [Lv. 3200]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Flame User [Lv. 3200]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Flame User [Lv. 3200]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Flame User [Lv. 3200]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Adventure Knife") or SaveSettings["AAdvenknife"] == false
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AAnubis"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Anubis Axe") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Anubis [Lv.3150]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Anubis [Lv.3150]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Anubis [Lv.3150]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Anubis [Lv.3150]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Anubis Axe") or SaveSettings["AAnubis"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AMetalTrident"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Metal Trident") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Dough Master [Lv.3275]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dough Master [Lv.3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dough Master [Lv.3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dough Master [Lv.3275]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Metal Trident") or SaveSettings["AMetalTrident"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AMetalTridentHop"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Metal Trident") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Dough Master [Lv.3275]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dough Master [Lv.3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dough Master [Lv.3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dough Master [Lv.3275]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Metal Trident") or SaveSettings["AMetalTridentHop"] == false
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AKioru"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Kioru") then
                                if not game:GetService("Players").raykeyza123.PlayerGui.Quest.QuestBoard.Visible == true then
                                    repeat  task.wait()
                                        pcall(function()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.6608581542969, 56.55436706542969, 8082.724609375)
                                            wait()
                                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.QuestKioru)
                                        end)
                                    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("QuestKioru") or SaveSettings["AKioru"] == false
                                    wait(0.3)
                                    local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("QuestKioru")
                                    wait(0.5)
                                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                        if v.Name == "Dialogue" then
                                            v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                            v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                            v.Accept.ImageTransparency = 1
                                        end
                                    end
                                    wait(0.5)
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                                end
                                --- kill boss
                                if game:GetService("Players").raykeyza123.PlayerGui.Quest.QuestBoard.Visible == true then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4847.7021484375, 59.443397521972656, 1953.459228515625)
                                    repeat task.wait()
                                        if game:GetService("Workspace").Monster.Boss:FindFirstChild("Kappa [Lv. 2950]") then
                                            if SaveSettings["SaveType"] == "Above" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Kappa [Lv. 2950]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                            elseif SaveSettings["SaveType"] == "Under" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Kappa [Lv. 2950]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                            elseif SaveSettings["SaveType"] == "Behind" then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Kappa [Lv. 2950]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                            end
                                            click()
                                        end
                                    until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Cookie Sword") or SaveSettings["AKioru"] == false
                                end
                            end
                        end)
                    end
                end
            end)
        
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["ACookieSword"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Cookie Sword") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Biscuit Man [Lv. 3250]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Biscuit Man [Lv. 3250]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Biscuit Man [Lv. 3250]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Biscuit Man [Lv. 3250]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Cookie Sword") or SaveSettings["ACookieSword"] == false
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["APhoenixBlade"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Phoenix Blade") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv.3275]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Phoenix Blade") or SaveSettings["APhoenixBlade"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["APhoenixBladeHop"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Phoenix Blade") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    else 
                                        HopServer()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Phoenix Blade") or SaveSettings["APhoenixBladeHop"] == false
                            end
                        end)
                    end
                end
            end)
        
        
        
        
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AHellSword"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Hell Sword") then
                                repeat wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Hell Sword") or SaveSettings["AHellSword"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AHellSwordHop"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Hell Sword") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    else
                                        HopServer()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Hell Sword") or SaveSettings["AHellSword"] == false
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AMuramasa"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Muramasa") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Muramasa") or SaveSettings["AMuramasa"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AMuramasaHop"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Muramasa") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    else 
                                        HopServer()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Muramasa") or SaveSettings["AMuramasa"] == false
                            end
                        end)
                    end
                end
            end)
        
        
        
        
        
        
        
        
            local AutoSword = Tool_Tap:CreateSection({
                Name = "Auto Sword", -- Name
                Side = 'Left' -- Left or Right
            })
        
        
            AutoSword:AddToggle({
                Name = "Auto Kaidou",
                Value = SaveSettings["kaidou"],
                Callback = function(a)
                    SaveSettings["kaidou"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5652.75830078125, 450.9053039550781, 7519.7900390625)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Kaidou Hop",
                Value = SaveSettings["kaidouHop"],
                Callback = function(a)
                    SaveSettings["kaidouHop"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5652.75830078125, 450.9053039550781, 7519.7900390625)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Saber",
                Value = SaveSettings["Saber"],
                Callback = function(a)
                    SaveSettings["Saber"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5467.13330078125, 64.3948974609375, -6864.13916015625)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Saber Hop",
                Value = SaveSettings["SaberHop"],
                Callback = function(a)
                    SaveSettings["SaberHop"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5467.13330078125, 64.3948974609375, -6864.13916015625)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Ms.Mother",
                Value = SaveSettings["Bigmom"],
                Callback = function(a)
                    SaveSettings["Bigmom"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-307.43280029296875, 175.8491973876953, 8864.9033203125)
                    Save()
                end,
            })
        
        
            AutoSword:AddToggle({
                Name = "Auto Ms.Mother Hop",
                Value = SaveSettings["BigmomHop"],
                Callback = function(a)
                    SaveSettings["BigmomHop"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-307.43280029296875, 175.8491973876953, 8864.9033203125)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Sunken Blade",
                Value = SaveSettings["ASunken"],
                Callback = function(a)
                    SaveSettings["ASunken"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1182.27685546875, 58.331050872802734, 8201.4580078125)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Pole",
                Value = SaveSettings["APole"],
                Callback = function(a)
                    SaveSettings["APole"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4077.582763671875, 386.42041015625, 1480.9727783203125)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Triple Katana",
                Value = SaveSettings["Atriplekatana"],
                Callback = function(a)
                    SaveSettings["Atriplekatana"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2019.1544189453125, 26.566877365112305, -5011.16259765625)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Jitter",
                Value = SaveSettings["Jitter"],
                Callback = function(a)
                    SaveSettings["Jitter"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.415283203125, 86.51949310302734, -4771.5673828125)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Shark Blade",
                Value = SaveSettings["Aswordshark"],
                Callback = function(a)
                    SaveSettings["Aswordshark"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-504.9869079589844, 44.48259735107422, -1446.1778564453125)
                    Save()
                end,
            })
        
            AutoSword:AddToggle({
                Name = "Auto Bisento",
                Value = SaveSettings["Abisento"],
                Callback = function(a)
                    SaveSettings["Abisento"] = a
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2265.5498046875, 11.373345375061035, -1931.3072509765625)
                    Save()
                end,
            })
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["ASunken"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Sunken Blade") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Sunken Vessel [Lv. 3225]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sunken Vessel [Lv. 3225]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sunken Vessel [Lv. 3225]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sunken Vessel [Lv. 3225]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Sunken Blade") or SaveSettings["ASunken"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Abisento"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Bisento") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Quake Woman [Lv. 1925]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Quake Woman [Lv. 1925]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Quake Woman [Lv. 1925]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Quake Woman [Lv. 1925]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Bisento") or SaveSettings["Abisento"] == false
                            end
                        end)
                    end
                end
            end)
        
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Atriplekatana"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Triple Katana") then
                                repeat  task.wait()
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2019.1544189453125, 26.566877365112305, -5011.16259765625)
                                        wait()
                                        game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.SwordShop)
                                    end)
                                until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SwordShop") or SaveSettings["Atriplekatana"] == false
                                wait(0.3)
                                local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SwordShop")
                                wait(0.5)
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Accept.ImageTransparency = 1
                                    end
                                end
                                wait(0.5)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Aswordshark"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Shark Blade") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Shark Man [Lv. 230]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Shark Man [Lv. 230]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Shark Man [Lv. 230]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Shark Man [Lv. 230]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Shark Blade") or SaveSettings["Aswordshark"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["APole"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Pole") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Rumble Man [Lv. 900]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Rumble Man [Lv. 900]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Rumble Man [Lv. 900]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Rumble Man [Lv. 900]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Pole") or SaveSettings["APole"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Jitter"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Jitter") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Smoky [Lv. 20]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Smoky [Lv. 20]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Smoky [Lv. 20]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Smoky [Lv. 20]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Jitter") or SaveSettings["Jitter"] == false
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Bigmom"] then
                        pcall(function()
                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]") then
                                if SaveSettings["SaveType"] == "Above" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                elseif SaveSettings["SaveType"] == "Under" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                elseif SaveSettings["SaveType"] == "Behind" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                end
                                click()
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["BigmomHop"] then
                        pcall(function()
                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]") then
                                if SaveSettings["SaveType"] == "Above" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                elseif SaveSettings["SaveType"] == "Under" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                elseif SaveSettings["SaveType"] == "Behind" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 3275]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                end
                                click()
                            else
                                HopServer()
                            end
                        end)
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Saber"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Saber") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Saber") or SaveSettings["Saber"] == false
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["SaberHop"] then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Saber") then
                                repeat task.wait()
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Inventory:FindFirstChild("Saber") or SaveSettings["Saber"] == false
                            else
                                HopServer()
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["kaidou"] then
                        pcall(function()
                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Dragon [Lv. 5000]") then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dragon [Lv. 5000]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,3)
                                click()
                            end
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["kaidouHop"] then
                        pcall(function()
                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Dragon [Lv. 5000]") then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dragon [Lv. 5000]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,3)
                                click()
                            else
                                HopServer()
                            end
                        end)
                    end
                end
            end)
        
            local Accessory_Tap = PepsisWorld:CreateTab({
                Name = "Accessory" -- Name
            })
        
            local AccessMain = Accessory_Tap:CreateSection({
                Name = "Accessory Old World", -- Name
                Side = 'Left' -- Left or Right
            })
        
            AccessMain:AddToggle({
                Name = "Auto Stainless Jaw",
                Value = SaveSettings["AutoStainless"],
                Callback = function(a)
                    SaveSettings["AutoStainless"] = a
                end,
            })
        
            AccessMain:AddToggle({
                Name = "Auto Horned Hat",
                Value = SaveSettings["AutoHorned"],
                Callback = function(a)
                    SaveSettings["AutoHorned"] = a
                end,
            })
        
            if oldworld then
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AutoStainless"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Stainless Jaw") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2417.23583984375, 91.30830383300781, -2459.06298828125)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("The Barbaric [Lv. 145]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Barbaric [Lv. 145]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Barbaric [Lv. 145]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("The Barbaric [Lv. 145]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Stainless Jaw") or SaveSettings["AutoStainless"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2417.23583984375, 91.30830383300781, -2459.06298828125)
                                warn("Stainless Jaw Success")
                            end
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AutoHorned"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Horned Hat") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5124.88037109375, 38.20014953613281, -1027.3709716796875)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Little Dear [Lv. 500]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Little Dear [Lv. 500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Little Dear [Lv. 500]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Little Dear [Lv. 500]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Horned Hat") or SaveSettings["AutoHorned"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5124.88037109375, 38.20014953613281, -1027.3709716796875)
                                warn("Horned Hat Success")
                            end
                        end
                    end
                end)
            end
        
            local AccessNewMain = Accessory_Tap:CreateSection({
                Name = "Accessory New World", -- Name
                Side = 'Right' -- Left or Right
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Lucidus Coat",
                Value = SaveSettings["ALucidusCoat"],
                Callback = function(a)
                    SaveSettings["ALucidusCoat"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Lucidus Coat Hop",
                Value = SaveSettings["ALucidusCoatHop"],
                Callback = function(a)
                    SaveSettings["ALucidusCoatHop"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Gazelle Mask",
                Value = SaveSettings["AutoGazelle"],
                Callback = function(a)
                    SaveSettings["AutoGazelle"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Sally Crown",
                Value = SaveSettings["AutoSallyCrown"],
                Callback = function(a)
                    SaveSettings["AutoSallyCrown"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Dark Beard Clock",
                Value = SaveSettings["AutoBeardClock"],
                Callback = function(a)
                    SaveSettings["AutoBeardClock"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Dark Beard Clock Hop",
                Value = SaveSettings["AutoBeardClockHop"],
                Callback = function(a)
                    SaveSettings["AutoBeardClockHop"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Dark Beard Hat",
                Value = SaveSettings["AutoBeardHat"],
                Callback = function(a)
                    SaveSettings["AutoBeardHat"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Dark Beard Hat Hop",
                Value = SaveSettings["AutoBeardHatHop"],
                Callback = function(a)
                    SaveSettings["AutoBeardHatHop"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Pondere Coat",
                Value = SaveSettings["AutoPondereCoat"],
                Callback = function(a)
                    SaveSettings["AutoPondereCoat"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Hefty Glasses",
                Value = SaveSettings["AHeftyGlasses"],
                Callback = function(a)
                    SaveSettings["AHeftyGlasses"] = a
                end,
            })
        
            AccessNewMain:AddToggle({
                Name = "Auto Hefty Coat",
                Value = SaveSettings["AHeftyCoat"],
                Callback = function(a)
                    SaveSettings["AHeftyCoat"] = a
                end,
            })
        
        
            if newworld then
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["ALucidusCoat"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Lucidus Coat") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10652.4423828125, 329.2916564941406, 1093.7239990234375)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Lucidus [Lv. 3575]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Lucidus [Lv. 3575]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Lucidus [Lv. 3575]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Lucidus [Lv. 3575]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Lucidus Coat") or SaveSettings["ALucidusCoat"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10652.4423828125, 329.2916564941406, 1093.7239990234375)
                                warn("Lucidus Coat Success")
                            end
                        elseif SaveSettings["ALucidusCoatHop"] then
                            HopServer()
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AHeftyGlasses"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Hefty Glasses") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10620.900390625, 85.12483978271484, 987.8577880859375)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Hefty [Lv. 3550]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Hefty [Lv. 3550]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Hefty [Lv. 3550]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Hefty [Lv. 3550]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Hefty Glasses") or SaveSettings["AHeftyGlasses"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10620.900390625, 85.12483978271484, 987.8577880859375)
                                warn("Hefty Glasses Success")
                            end
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AHeftyCoat"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Hefty Coat") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10620.900390625, 85.12483978271484, 987.8577880859375)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Hefty [Lv. 3550]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Hefty [Lv. 3550]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Hefty [Lv. 3550]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Hefty [Lv. 3550]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Hefty Coat") or SaveSettings["AHeftyCoat"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10620.900390625, 85.12483978271484, 987.8577880859375)
                                warn("Hefty Coat Success")
                            end
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AutoGazelle"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Gazelle Mask") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4252.41064453125, 81.86871337890625, 330.7416687011719)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Gazelle Man [Lv. 2350]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Gazelle Man [Lv. 2350]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Gazelle Man [Lv. 2350]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Gazelle Man [Lv. 2350]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Gazelle Mask") or SaveSettings["AutoGazelle"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4252.41064453125, 81.86871337890625, 330.7416687011719)
                                warn("Gazelle Mask Success")
                            end
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AutoSallyCrown"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Sally Crown") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9568.9931640625, 114.59858703613281, -5083.158203125)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Sally [Lv. 3450]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sally [Lv. 3450]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sally [Lv. 3450]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Sally [Lv. 3450]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Sally Crown") or SaveSettings["AutoSallyCrown"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9568.9931640625, 114.59858703613281, -5083.158203125)
                                warn("Sally Crown Success")
                            end
                        end
                    end
                end)
                
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AutoBeardHat"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Dark Beard Hat") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10128.0751953125, 152.899169921875, -5012.568359375)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Dark Beard [Lv. 3475]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dark Beard [Lv. 3475]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dark Beard [Lv. 3475]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dark Beard [Lv. 3475]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Dark Beard Hat") or SaveSettings["AutoBeardHat"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10128.0751953125, 152.899169921875, -5012.568359375)
                                warn("Dark Beard Hat Success")
                            end
                        elseif SaveSettings["AutoBeardHatHop"] then
                            HopServer()
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AutoBeardClock"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Dark Beard Clock") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10128.0751953125, 152.899169921875, -5012.568359375)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Dark Beard [Lv. 3475]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dark Beard [Lv. 3475]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dark Beard [Lv. 3475]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Dark Beard [Lv. 3475]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Dark Beard Clock") or SaveSettings["AutoBeardClock"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10128.0751953125, 152.899169921875, -5012.568359375)
                                warn("Dark Beard Hat Success")
                            end
                        elseif SaveSettings["AutoBeardClockHop"] then
                            HopServer()
                        end
                    end
                end)
        
                task.spawn(function()
                    while true do task.wait()
                        if SaveSettings["AutoPondereCoat"] then
                            if not game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Pondere Coat") then
                                repeat
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10060.326171875, 73.78651428222656, 1254.289306640625)
                                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Pondere [Lv. 3525]") then
                                        if SaveSettings["SaveType"] == "Above" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Pondere [Lv. 3525]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                                        elseif SaveSettings["SaveType"] == "Under" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Pondere [Lv. 3525]").HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                                        elseif SaveSettings["SaveType"] == "Behind" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monster.Boss:FindFirstChild("Pondere [Lv. 3525]").HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                                        end
                                        click()
                                    end
                                until game:GetService("Players").LocalPlayer.Accessories:FindFirstChild("Pondere Coat") or SaveSettings["AutoPondereCoat"] == false
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10060.326171875, 73.78651428222656, 1254.289306640625)
                                warn("Pondere Coat Success")
                            end
                        end
                    end
                end)
        
            end
        
        
            --- Combat
            local Combat_Tap = PepsisWorld:CreateTab({
                Name = "Combat" -- Name
            })
        
            local CombatMain = Combat_Tap:CreateSection({
                Name = "Combat", -- Name
                Side = 'Left' -- Left or Right
            })
        
            CombatMain:AddToggle({
                Name = "Auto Cyborg",
                Value = SaveSettings["AutoCyborg"],
                Callback = function(a)
                    SaveSettings["AutoCyborg"] = a
                end,
            })
        
            CombatMain:AddToggle({
                Name = "Auto Black Leg",
                Value = SaveSettings["AutoBlackleg"],
                Callback = function(a)
                    SaveSettings["AutoBlackleg"] = a
                end,
            })
        
            CombatMain:AddToggle({
                Name = "Auto Fishman Karate",
                Value = SaveSettings["Autofishkarate"],
                Callback = function(a)
                    SaveSettings["Autofishkarate"] = a
                end,
            })
        
            CombatMain:AddToggle({
                Name = "Auto Dragon Claw",
                Value = SaveSettings["AutoDragonclaw"],
                Callback = function(a)
                    SaveSettings["AutoDragonclaw"] = a
                end,
            })
        
            CombatMain:AddToggle({
                Name = "Auto Electro",
                Value = SaveSettings["AutoElectro"],
                Callback = function(a)
                    SaveSettings["AutoElectro"] = a
                end,
            })
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AutoCyborg"] then
                        if oldworld then
                            repeat  task.wait()
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-263.21905517578125, 123.6512680053711, -1399.73193359375)
                                    wait()
                                    game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.CyborgShop)
                                end)
                            until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("CyborgShop")
                            wait(0.3)
                            local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("CyborgShop")
                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                if v.Name == "Dialogue" then
                                    v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                    v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                    v.Accept.ImageTransparency = 1
                                end
                            end
                            wait(0.5)
                            game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                            game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                        elseif newworld then
                            repeat  task.wait()
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4971.0126953125, 57.77093505859375, 164.9354248046875)
                                    wait()
                                    game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.CyborgShop)
                                end)
                            until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("CyborgShop")
                            wait(0.3)
                            local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("CyborgShop")
                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                if v.Name == "Dialogue" then
                                    v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                    v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                    v.Accept.ImageTransparency = 1
                                end
                            end
                            wait(0.5)
                            game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                            game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                        end
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AutoBlackleg"] then
                        if oldworld then
                            repeat  task.wait()
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4201.720703125, 108.61518096923828, -2936.311767578125)
                                    wait()
                                    game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.DarkLegShop)
                                end)
                            until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("DarkLegShop")
                            wait(0.3)
                            local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("DarkLegShop")
                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                if v.Name == "Dialogue" then
                                    v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                    v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                    v.Accept.ImageTransparency = 1
                                end
                            end
                            wait(0.5)
                            game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                            game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                        elseif newworld then
                            repeat  task.wait()
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4920.99072265625, 60.68913650512695, 53.32762908935547)
                                    wait()
                                    game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.DarkLegShop)
                                end)
                            until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("DarkLegShop")
                            wait(0.3)
                            local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("DarkLegShop")
                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                if v.Name == "Dialogue" then
                                    v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                    v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                    v.Accept.ImageTransparency = 1
                                end
                            end
                            wait(0.5)
                            game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                            game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                        end
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Autofishkarate"] then
                        if oldworld then
                            repeat  task.wait()
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1829.025390625, 40.274532318115234, 6808.54248046875)
                                    wait()
                                    game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.WaterStyleShop)
                                end)
                            until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("WaterStyleShop")
                            wait(0.3)
                            local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("WaterStyleShop")
                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                if v.Name == "Dialogue" then
                                    v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                    v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                    v.Accept.ImageTransparency = 1
                                end
                            end
                            wait(0.5)
                            game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                            game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                        elseif newworld then
                            repeat  task.wait()
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4829.77099609375, 57.31058120727539, 153.98175048828125)
                                    wait()
                                    game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.WaterStyleShop)
                                end)
                            until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("WaterStyleShop")
                            wait(0.3)
                            local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("WaterStyleShop")
                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                if v.Name == "Dialogue" then
                                    v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                    v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                    v.Accept.ImageTransparency = 1
                                end
                            end
                            wait(0.5)
                            game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                            game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                        end
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AutoDragonclaw"] then
                        repeat  task.wait()
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4603.2646484375, 336.8006896972656, 601.3140258789062)
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.DragonClawShop)
                            end)
                        until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("DragonClawShop")
                        wait(0.3)
                        local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("DragonClawShop")
                        wait(0.5)
                        for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                            if v.Name == "Dialogue" then
                                v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                v.Accept.ImageTransparency = 1
                            end
                        end
                        wait(0.5)
                        game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                        game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["AutoElectro"] then
                        repeat  task.wait()
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4821.99365234375, 173.04396057128906, -1183.3843994140625)
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.ElectroShop)
                            end)
                        until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ElectroShop")
                        wait(0.3)
                        local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ElectroShop")
                        wait(0.5)
                        for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                            if v.Name == "Dialogue" then
                                v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                v.Accept.ImageTransparency = 1
                            end
                        end
                        wait(0.5)
                        game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                        game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                    end
                end
            end)
        
            local TP_Tap = PepsisWorld:CreateTab({
                Name = "Teleport" -- Name
            })
        
            local TeleportWorld = TP_Tap:CreateSection({
                Name = "Teleport", -- Name
                Side = 'Right' -- Left or Right
            })
        
        
            if oldworld then
                local TPOdropdown = TeleportWorld:AddDropdown({
                    Name = "Select Island",
                    Flag = "selectedislandO",
                    Value = SaveSettings["SavetpO"],
                    Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                    List = SaveSettings["listold"], -- calls 'Method' (or GetChildren) on specifyed instance
                    Callback = function(bool)
                        SaveSettings["SavetpO"] = bool
                    end
                })
        
        
                TeleportWorld:AddButton({
                    Name = "Teleport",
                    Callback = function()
                        if SaveSettings["SavetpO"] == "Town" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2171.445068359375, 48.3011474609375, -4452.79345703125)
                        elseif SaveSettings["SavetpO"] == "Pirate Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-803.771240234375, 37.89126968383789, -3311.335205078125)
                        elseif SaveSettings["SavetpO"] == "Soldier Town" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2427.058837890625, 39.813690185546875, -2815.469970703125)
                        elseif SaveSettings["SavetpO"] == "Shark Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-988.3458862304688, 10.541629791259766, -1446.357177734375)
                        elseif SaveSettings["SavetpO"] == "Chef Shipd" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4106.908203125, 15.57434368133545, -3097.193359375)
                        elseif SaveSettings["SavetpO"] == "Snow Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5331.05712890625, 18.28936767578125, -1489.2530517578125)
                        elseif SaveSettings["SavetpO"] == "Desert Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2691.173583984375, 12.88575267791748, -879.82666015625)
                        elseif SaveSettings["SavetpO"] == "Skyland" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4310.6943359375, 375.2522277832031, 1235.2894287109375)
                        elseif SaveSettings["SavetpO"] == "Bubbleland" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1518.553466796875, 12.215644836425781, 597.6077270507812)
                        elseif SaveSettings["SavetpO"] == "War Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2435.254150390625, 95.35615539550781, -1930.2635498046875)
                        elseif SaveSettings["SavetpO"] == "Lobby Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1224.5972900390625, 13.090352058410645, 2198.4873046875)
                        elseif SaveSettings["SavetpO"] == "Fishland" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1784.7425537109375, 40.247955322265625, 6334.89794921875)
                        elseif SaveSettings["SavetpO"] == "Stone Arena" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5685.703125, 70.60824584960938, -6686.400390625)
                        elseif SaveSettings["SavetpO"] == "Zombie Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2812.26416015625, 19.600242614746094, 4227.61279296875)
                        elseif SaveSettings["SavetpO"] == "Stone Rain Sea" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1953.1903076171875, 50.08067321777344, -4943.4326171875)
                        end
                    end,
                })
            end
        
            if newworld then
                local TPNdropdown = TeleportWorld:AddDropdown({
                    Name = "Select Island",
                    Flag = "selectedislandN",
                    Value = SaveSettings["Savetp"],
                    Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                    List = SaveSettings["listnew"], -- calls 'Method' (or GetChildren) on specifyed instance
                    Callback = function(bool)
                        SaveSettings["SavetpW"] = bool
                    end
                })
        
                TeleportWorld:AddButton({
                    Name = "Teleport",
                    Callback = function()
                        if SaveSettings["SavetpW"] == "Japan Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3660.904296875, 57.31056213378906, 168.05455017089844)
                        elseif SaveSettings["SavetpW"] == "Hibernus Land" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4548.05908203125, 135.8592529296875, -884.8012084960938)
                        elseif SaveSettings["SavetpW"] == "Floresco" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4780.7041015625, 57.313575744628906, 113.18781280517578)
                        elseif SaveSettings["SavetpW"] == "Mirror Room" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30387.98046875, 24.767993927001953, 93373.9921875)
                        elseif SaveSettings["SavetpW"] == "Torrefacio" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5229.255859375, 57.260536193847656, 767.8573608398438)
                        elseif SaveSettings["SavetpW"] == "Viridans" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5133.83984375, 57.31058120727539, 1851.19189453125)
                        elseif SaveSettings["SavetpW"] == "Skull Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6515.4833984375, 57.728031158447266, 5808.16796875)
                        elseif SaveSettings["SavetpW"] == "Dead Tundra" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1195.501953125, 14.412386894226074, 911.720458984375)
                        elseif SaveSettings["SavetpW"] == "Loaf Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-499.2265319824219, 31.38062858581543, 8108.1796875)
                        elseif SaveSettings["SavetpW"] == "Shred Endangering" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-233.94625854492188, 87.43863677978516, -2634.675048828125)
                        elseif SaveSettings["SavetpW"] == "Pirate Skull Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9215.728515625, 68.2530746459961, -5154.69482421875)
                        elseif SaveSettings["SavetpW"] == "Soldier Headquater" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9619.8291015625, 39.171104431152344, 810.2385864257812)
                        end
                    end,
                })
            end
        
        
            local TWorld = TP_Tap:CreateSection({
                Name = "Teleport", -- Name
                Side = 'Left' -- Left or Right
            })
        
            if oldworld then
                TWorld:AddToggle({
                    Name = "Go Old World",
                    Value = SaveSettings["Gooldworld"],
                    Callback = function(a)
                        SaveSettings["Gooldworld"] = a
                    end,
                })
            end
        
        
            if newworld then
                TWorld:AddToggle({
                    Name = "Go Second World",
                    Value = SaveSettings["Gosecondworld"],
                    Callback = function(a)
                        SaveSettings["Gosecondworld"] = a
                    end,
                })
            end
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Gooldworld"] then
                        while true do task.wait()
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2405.976318359375, 16.17572021484375, -4362.78759765625)
                                wait(.5)
                                local args = {
                                    [1] = workspace.AllNPC:FindFirstChild("Elite Pirate")
                                }
                                game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
                                if game:GetService("Players").LocalPlayer.PlayerGui["Elite Pirate"].Dialogue.Accept.Visible == true then
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                                    wait(.1)
                                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                        if v.Name == "Dialogue" then
                                            v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                            v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                            v.Accept.ImageTransparency = 1
                                        end
                                    end
                                end 
                            end)
                        end
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Gosecondworld"] then
                        pcall(function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3339.3857421875, 16.744407653808594, 253.16554260253906)
                            wait(.5)
                            local args = {
                                [1] = workspace.AllNPC:FindFirstChild("Elite Pirate")
                            }
                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
                            if game:GetService("Players").LocalPlayer.PlayerGui["Elite Pirate"].Dialogue.Accept.Visible == true then
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                                wait(.1)
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Accept.ImageTransparency = 1
                                    end
                                end
                            end 
                        end)
                    end
                end
            end)
        
        
            local Player_Tap = PepsisWorld:CreateTab({
                Name = "Players" -- Name
            })
        
            local MainPlayers = Player_Tap:CreateSection({
                Name = "Players", -- Name
                Side = 'Left' -- Left or Right
            })
        
            local Playersdropdown = MainPlayers:AddDropdown({
                Name = "Select Players",
                Flag = "selectedplayer",
                Value = SaveSettings["Saveplayer"],
                Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                List = game.Players, -- calls 'Method' (or GetChildren) on specifyed instance
                Callback = function(bool)
                    SaveSettings["Saveplayer"] = bool
                end
            })
        
        
            MainPlayers:AddButton({
                Name = "Teleport",
                Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").PlayerCharacters[tostring(SaveSettings["Saveplayer"])].HumanoidRootPart.CFrame
                end,
            })
        
            MainPlayers:AddToggle({
                Name = "Spectate Players",
                Value = SaveSettings["Spectateplayers"],
                Callback = function(a)
                    SaveSettings["Spectateplayers"] = a
                end,
            })
        
            MainPlayers:AddToggle({
                Name = "Farm Players",
                Value = SaveSettings["farmplayers"],
                Callback = function(a)
                    SaveSettings["farmplayers"] = a
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["farmplayers"] then
                        pcall(function()
                            if SaveSettings["SaveType"] == "Above" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").PlayerCharacters[tostring(SaveSettings["Saveplayer"])].HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,SaveSettings["Distance"])
                            elseif SaveSettings["SaveType"] == "Under" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").PlayerCharacters[tostring(SaveSettings["Saveplayer"])].HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,SaveSettings["Distance"],0)
                            elseif SaveSettings["SaveType"] == "Behind" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").PlayerCharacters[tostring(SaveSettings["Saveplayer"])].HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"]) 
                            end
                            click()
                        end)
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Spectateplayers"] then
                        game.Workspace.Camera.CameraSubject = game.Players[tostring(SaveSettings["Saveplayer"])].Character.Humanoid
                    else
                        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                    end
                end
            end)
        
            local LocalPlayer = Player_Tap:CreateSection({
                Name = "LocalPlayers", -- Name
                Side = 'Right' -- Left or Right
            })
        
            LocalPlayer:AddToggle({
                Name = "Dash No CoolDown",
                Value = SaveSettings["DashCD"],
                Callback = function(a)
                    SaveSettings["DashCD"] = a
                    Save()
                end,
            })
        
            LocalPlayer:AddToggle({
                Name = "Remove Effect",
                Value = SaveSettings["RemoveEffect"],
                Callback = function(a)
                    SaveSettings["RemoveEffect"] = a
                    Save()
                end,
            })
        
            LocalPlayer:AddToggle({
                Name = "Geppo Inf",
                Value = SaveSettings["GeppoInf"],
                Callback = function(a)
                    SaveSettings["GeppoInf"] = a
                    Save()
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    pcall(function()
                        if game:GetService("Workspace"):FindFirstChild(game.Players.Name).Humanoid.Health > 0 then
                            Life = true
                        else
                            Life = false
                        end
                    end)
                    wait()
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["GeppoInf"] and Life == true then
                        pcall(function ()
                            game.Players.Backpack.GeppoNew.cds.Value = 999
                        end)
                    end
                    wait()
                end
            end)
        
            task.spawn(function()
                while true do
                    if SaveSettings["DashCD"] and Life == true then
                        pcall(function ()
                            for i, v in next, getgc() do
                                if typeof(v) == "function" and getfenv(v).script == game.Player.Backpack.Dash then
                                    for i2, v2 in next, getupvalues(v) do
                                        if typeof(v2) == 'boolean' then
                                            repeat wait()
                                            setupvalue(v, i2, true)
                                            until SaveSettings["DashCD"] == false or not Life
                                        end
                                    end
                                end
                            end
                        end)
                    end
                    wait()
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["RemoveEffect"] then
                        pcall(function ()
                            if game:GetService("Workspace"):FindFirstChild('Effects') then
                                game:GetService("Workspace"):FindFirstChild('Effects').Parent = game:GetService("Workspace").Camera
                            end
                        end)
                    else
                        pcall(function ()
                            if game:GetService("Workspace").Camera:FindFirstChild('Effects') then
                                game:GetService("Workspace").Camera:FindFirstChild('Effects').Parent =  game:GetService("Workspace")
                            end
                        end)
                    end
                end
            end)
        
            local AbilityMain = Player_Tap:CreateSection({
                Name = "LocalPlayers", -- Name
                Side = 'Left' -- Left or Right
            })
        
            AbilityMain:AddButton({
                Name = "Unlock Ken Haki",
                Callback = function()
                    repeat 
                        pcall(function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4128.4599609375, 386.96453857421875, 1147.4659423828125)
                            wait()
                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.KenShop)
                        end)
                    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("KenShop")
                    wait(3)
                    local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("KenShop")
                    wait(0.5)
                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                        if v.Name == "Dialogue" then
                            v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                            v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                            v.Accept.ImageTransparency = 1
                        end
                    end
                    wait(0.5)
                    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                end,
            })
        
            AbilityMain:AddButton({
                Name = "Unlock Buso",
                Callback = function()
                    repeat 
                        pcall(function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1659.1591796875, 13.923691749572754, 736.1218872070312)
                            wait()
                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.BusoShop)
                        end)
                    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("BusoShop")
                    wait(3)
                    local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BusoShop")
                    wait(0.5)
                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                        if v.Name == "Dialogue" then
                            v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                            v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                            v.Accept.ImageTransparency = 1
                        end
                    end
                    wait(0.5)
                    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                end,
            })
        
            AbilityMain:AddButton({
                Name = "Unlock Soru",
                Callback = function()
                    repeat 
                        pcall(function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2501.833984375, 41.14517593383789, -2735.657958984375)
                            wait()
                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.SoruShop)
                        end)
                    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SoruShop")
                    wait(3)
                    local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SoruShop")
                    wait(0.5)
                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                        if v.Name == "Dialogue" then
                            v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                            v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                            v.Accept.ImageTransparency = 1
                        end
                    end
                    wait(0.5)
                    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                end,
            })
        
            AbilityMain:AddButton({
                Name = "Unlock Fruit Position",
                Callback = function()
                    game.Players.LocalPlayer.UserId = 991117111
                end,
            })
        
            local FruitMain = Player_Tap:CreateSection({
                Name = "Random Fruits", -- Name
                Side = 'Right' -- Left or Right
            })
        
            local Fruitdropdown = FruitMain:AddDropdown({
                Name = "Select Gem/Beli",
                Flag = "selectedgembeli",
                Value = SaveSettings["Savelistrandom"],
                Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                List = SaveSettings["listrandom"], -- calls 'Method' (or GetChildren) on specifyed instance
                Callback = function(bool)
                    SaveSettings["Savelistrandom"] = bool
                    Save()
                end
            })
        
        
            FruitMain:AddToggle({
                Name = "Radom Fruit",
                Value = SaveSettings["randomfruit"],
                Callback = function(a)
                    SaveSettings["randomfruit"] = a
                    Save()
                end,
            })
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["randomfruit"] then
                        if oldworld then
                            if SaveSettings["Savelistrandom"] == "Beli" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2169.696044921875, 48.20737838745117, -4630.25830078125)
                                repeat 
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2169.696044921875, 48.20737838745117, -4630.25830078125)
                                        wait()
                                        game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.ARandomFruit)
                                    end)
                                until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ARandomFruit")
                                wait(0.3)
                                local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ARandomFruit")
                                wait(0.5)
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Beli.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Beli.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Beli.ImageTransparency = 1
                                    end
                                end
                                wait(0.5)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                            end
                            if SaveSettings["Savelistrandom"] == "Gem" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2169.696044921875, 48.20737838745117, -4630.25830078125)
                                repeat 
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2169.696044921875, 48.20737838745117, -4630.25830078125)
                                        wait()
                                        game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.ARandomFruit)
                                    end)
                                until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ARandomFruit")
                                wait(0.3)
                                local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ARandomFruit")
                                wait(0.5)
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Gem.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Gem.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Gem.ImageTransparency = 1
                                    end
                                end
                                wait(0.5)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                            end
                        end
                        if newworld then
                            if SaveSettings["Savelistrandom"] == "Beli" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4783.74560546875, 57.599388122558594, 70.50011444091797)
                                repeat 
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4783.74560546875, 57.599388122558594, 70.50011444091797)
                                        wait()
                                        game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.ARandomFruit)
                                    end)
                                until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ARandomFruit")
                                wait(0.3)
                                local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ARandomFruit")
                                wait(0.5)
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Beli.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Beli.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Beli.ImageTransparency = 1
                                    end
                                end
                                wait(0.5)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                            end
                            if SaveSettings["Savelistrandom"] == "Gem" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4783.74560546875, 57.599388122558594, 70.50011444091797)
                                repeat 
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4783.74560546875, 57.599388122558594, 70.50011444091797)
                                        wait()
                                        game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.ARandomFruit)
                                    end)
                                until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ARandomFruit")
                                wait(0.3)
                                local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ARandomFruit")
                                wait(0.5)
                                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                    if v.Name == "Dialogue" then
                                        v.Gem.Size = UDim2.new(0, 10000, 0, 10000)
                                        v.Gem.Position = UDim2.new(-2, 0, -5, 0)
                                        v.Gem.ImageTransparency = 1
                                    end
                                end
                                wait(0.5)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                            end
                        end
                    end
                end
            end)
        
            local SettingMain = Player_Tap:CreateSection({
                Name = "Settings", -- Name
                Side = 'Left' -- Left or Right
            })
        
            SettingMain:AddToggle({
                Name = "Black Screen",
                Value = SaveSettings["BlackScreen"],
                Callback = function(a)
                    SaveSettings["BlackScreen"] = a
                    Save()
                end,
            })
        
            SettingMain:AddToggle({
                Name = "Lock FPS",
                Value = SaveSettings["lockfps"],
                Callback = function(a)
                    SaveSettings["lockfps"] = a
                    Save()
                    if SaveSettings["lockfps"] then
                        pcall(setfpscap, SaveSettings["FpsCap"])
                        pcall(set_fps_cap, SaveSettings["FpsCap"])
                    else
                        pcall(setfpscap,240)
                        pcall(set_fps_cap,240)
                    end
                end,
            })
        
            local Slider_fps = SettingMain:AddSlider({
                Name = "FpsCap",
                Min = 15,
                Max = 240,
                Value = SaveSettings["FpsCap"],
                Callback = function(a)
                    SaveSettings["FpsCap"] = a
                    Save()
                    if SaveSettings["lockfps"] then
                        pcall(setfpscap, SaveSettings["FpsCap"])
                        pcall(set_fps_cap, SaveSettings["FpsCap"])
                    end
                end,
            })
        
        
            task.spawn(function()
                if SaveSettings["BlackScreen"] then
                    pcall(function()
                        local rng = Random.new()
                        local charset = {}
                        for i = 48,  57 do table.insert(charset, string.char(i)) end
                        for i = 65,  90 do table.insert(charset, string.char(i)) end
                        for i = 97, 122 do table.insert(charset, string.char(i)) end
                        local function RandomCharacters(length)
                        if length > 0 then
                            return RandomCharacters(length - 1) .. charset[rng:NextInteger(1, #charset)]
                        else
                            return ""
                        end
                        end
                        
                        local Dex = game:GetObjects("rbxassetid://9553291002")[1]
                        syn.protect_gui(Dex)
                        Dex.Name = RandomCharacters(rng:NextInteger(5, 20))
                        Dex.Parent = game:GetService("CoreGui")
                            
                        local function Load(Obj, Url)
                        local function GiveOwnGlobals(Func, Script)
                            local Fenv = {}
                            local RealFenv = {script = Script}
                            local FenvMt = {}
                            FenvMt.__index = function(a,b)
                                if RealFenv[b] == nil then
                                    return getfenv()[b]
                                else
                                    return RealFenv[b]
                                end
                            end
                            FenvMt.__newindex = function(a, b, c)
                                if RealFenv[b] == nil then
                                    getfenv()[b] = c
                                else
                                    RealFenv[b] = c
                                end
                            end
                            setmetatable(Fenv, FenvMt)
                            setfenv(Func, Fenv)
                            return Func
                        end
                        
                        local function LoadScripts(Script)
                            if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
                                spawn(function()
                                    GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script)()
                                end)
                            end
                            for i,v in pairs(Script:GetChildren()) do
                                LoadScripts(v)
                            end
                        end
                        
                        LoadScripts(Obj)
                        end
                        
                        Load(Dex)
                    end)
                end
            end)
        
            local ESPPlayer = Player_Tap:CreateSection({
                Name = "ESP", -- Name
                Side = 'Right' -- Left or Right
            })
        
            ESPPlayer:AddToggle({
                Name = "ESP Players",
                Value = SaveSettings["ESPPlayers"],
                Callback = function(a)
                    SaveSettings["ESPPlayers"] = a
                    UpdatePlayerChams()
                    Save()
                end,
            })
        
            ESPPlayer:AddToggle({
                Name = "ESP Fruits",
                Value = SaveSettings["ESPDevilFruit"],
                Callback = function(a)
                    SaveSettings["ESPDevilFruit"] = a
                    UpdateDevilChams() 
                    Save()
                end,
            })
        
            ESPPlayer:AddToggle({
                Name = "ESP Sea Monster",
                Value = SaveSettings["ESPSeabeat"],
                Callback = function(a)
                    SaveSettings["ESPSeabeat"] = a
                    UpdateSeabeatChams() 
                    Save()
                end,
            })
        
            local DevilMain = Player_Tap:CreateSection({
                Name = "Devil Fruits", -- Name
                Side = 'Right' -- Left or Right
            })
        
            local Fruitdropdown = DevilMain:AddDropdown({
                Name = "Select Fruit Sniper",
                Flag = "selectedFruitSniper",
                Value = SaveSettings["SaveFruitsSniper"],
                Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                List = SaveSettings["listFruitSniper"], -- calls 'Method' (or GetChildren) on specifyed instance
                Callback = function(bool)
                    SaveSettings["SaveFruitsSniper"] = bool
                end
            })
        
        
            DevilMain:AddToggle({
                Name = "Auto Devil Fruit Sniper",
                Value = SaveSettings["SniperFruit"],
                Callback = function(a)
                    SaveSettings["SniperFruit"] = a
                    Save()
                end,
            })
        
        
            local FruitSelectdropdown = DevilMain:AddDropdown({
                Name = "Select Fruit",
                Flag = "selectedFruit",
                Value = SaveSettings["SaveFruits"],
                Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                List = SaveSettings["listFruit"], -- calls 'Method' (or GetChildren) on specifyed instance
                Callback = function(bool)
                    SaveSettings["SaveFruits"] = bool
                end
            })
        
            DevilMain:AddToggle({
                Name = "Bring Fruit",
                Value = SaveSettings["Bringfruit"],
                Callback = function(a)
                    SaveSettings["Bringfruit"] = a
                    Save()
                end,
            })
        
            DevilMain:AddToggle({
                Name = "Eat Fruit",
                Value = SaveSettings["Eatfruit"],
                Callback = function(a)
                    SaveSettings["Eatfruit"] = a
                    Save()
                end,
            })
        
            DevilMain:AddToggle({
                Name = "Drop Fruit",
                Value = SaveSettings["Dropfruit"],
                Callback = function(a)
                    SaveSettings["Dropfruit"] = a
                    Save()
                end,
            })
        
            DevilMain:AddToggle({
                Name = "Collect Fruit",
                Value = SaveSettings["Collectfruit"],
                Callback = function(a)
                    SaveSettings["Collectfruit"] = a
                    Save()
                end,
            })
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Bringfruit"] then
                        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v:IsA "Tool" then
                                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end
            end)
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["Eatfruit"] then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(SaveSettings["SaveFruits"]))
                        repeat 
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2361.58203125, 57.557167053222656, 267.31304931640625)
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.EatFruitBecky)
                            end)
                        until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("EatFruitBecky")
                        wait(0.3)
                        local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("EatFruitBecky")
                        wait(0.5)
                        for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                            if v.Name == "Dialogue" then
                                v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                v.Accept.ImageTransparency = 1
                            end
                        end
                        wait(0.5)
                        game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                        game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                    end
                    if SaveSettings["Dropfruit"] then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(SaveSettings["SaveFruits"]))
                        repeat 
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2361.58203125, 57.557167053222656, 267.31304931640625)
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.EatFruitBecky)
                            end)
                        until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("EatFruitBecky")
                        wait(0.3)
                        local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("EatFruitBecky")
                        wait(0.5)
                        for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                            if v.Name == "Dialogue" then
                                v.Drop.Size = UDim2.new(0, 10000, 0, 10000)
                                v.Drop.Position = UDim2.new(-2, 0, -5, 0)
                                v.Drop.ImageTransparency = 1
                            end
                        end
                        wait(0.5)
                        game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                        game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                    end
                    if SaveSettings["Collectfruit"] then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(SaveSettings["SaveFruits"]))
                        repeat 
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2361.58203125, 57.557167053222656, 267.31304931640625)
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AllNPC.EatFruitBecky)
                            end)
                        until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("EatFruitBecky")
                        wait(0.3)
                        local UIoni = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("EatFruitBecky")
                        wait(0.5)
                        for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                            if v.Name == "Dialogue" then
                                v.Collect.Size = UDim2.new(0, 10000, 0, 10000)
                                v.Collect.Position = UDim2.new(-2, 0, -5, 0)
                                v.Collect.ImageTransparency = 1
                            end
                        end
                        wait(0.5)
                        game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                        game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                    end
                end
            end)
        
        
            task.spawn(function()
                while true do task.wait()
                    if SaveSettings["SniperFruit"] then
                        game:GetService("ReplicatedStorage").Remotes.Functions.dfbeli:InvokeServer(SaveSettings["SaveFruits"], true)
                    end
                end
            end)
        
        
        
        
            local Raid_Tap = PepsisWorld:CreateTab({
                Name = "Dunguen" -- Name
            })
        
            local RaidMain = Raid_Tap:CreateSection({
                Name = "LocalPlayers", -- Name
                Side = 'Left' -- Left or Right
            })
        
        
        
            local Raiddropdown = RaidMain:AddDropdown({
                Name = "Select Difficulty",
                Flag = "selectedDifficulty",
                Value = SaveSettings["SaveDifficulty"],
                Nothing = "No Selection", -- You can optionaly allow the dropdown to have no value.
                List = SaveSettings["listDifficulty"], -- calls 'Method' (or GetChildren) on specifyed instance
                Callback = function(bool)
                    SaveSettings["SaveDifficulty"] = bool
                end
            })
        
            RaidMain:AddToggle({
                Name = "Auto Dunguen",
                Value = SaveSettings["Autoraid"],
                Callback = function(a)
                    SaveSettings["Autoraid"] = a
                    Save()
                end,
            })
        
            task.spawn(function ()
                while true do
                    if SaveSettings["Autoraid"] then
                        pcall(function ()
                            if game.PlaceId == 6381829480 or game.PlaceId == 4520749081 then
                                VirtualUser:CaptureController()
                                VirtualUser:SetKeyDown("w",key)
                                wait()
                                VirtualUser:CaptureController()
                                VirtualUser:SetKeyUp("w",key)
                                game.Players.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CircleBeam.CFrame * CFrame.new(0,-25,0)
                            end
                        end)
                    end
                    wait()
                end
            end)
        
            task.spawn(function ()
                while true do
                    if SaveSettings["Autoraid"] then
                        pcall(function ()
                            if game.PlaceId == 5931540094 then
                                game:GetService("ReplicatedStorage").ChooseMapRemote:FireServer(SaveSettings["SaveDifficulty"])
                                game:GetService("ReplicatedStorage").GoldenArenaEvents.StartEvent:FireServer()
                            end
                        end)
                    end
                    wait()
                end
            end)
        
            spawn(function ()
                while true do
                    if SaveSettings["Autoraid"] and game.PlaceId == 5931540094 and Life then
                    pcall(function()
                            for i,v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") then
                                    Mob = v
                                        repeat wait()
                                            task.spawn(function ()
                                                game.Players.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Distance"])
                                            end)
                                            task.spawn(function()
                                                skilluse("Z")
                                                skilluse("X")		
                                                skilluse("C")		
                                                skilluse("V")		
                                            end)
                                            task.spawn(function ()
                                                click()
                                            end)
                                        until  v.Humanoid.Health <= 0 or SaveSettings["Autoraid"] == false
                                    return
                                end
                            end
                    end) 
                    end
                    wait()
                end
            end)
        end
        Load_KL()
    end
else
    game:service'Players'.LocalPlayer:kick(response.Body)
end
