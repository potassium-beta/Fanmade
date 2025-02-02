local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local window = library:CreateWindow("Anime Strike") -- Creates the window

local tab = window:CreateFolder("Flexia No.1") -- Creates the folder(U will put here your buttons,etc)

tab:Toggle("Auto Click",function(bool)
    AutoClick = bool
end)

spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
                if AutoClick then
                    pcall(
                        function()
                            game:GetService "VirtualUser":CaptureController()
                            game:GetService "VirtualUser":Button1Down(Vector2.new(0, 1, 0, 1))
                        end
                    )
                end
            end
        )
    end
)

tab:Label("Update 1.0.1",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining

})
