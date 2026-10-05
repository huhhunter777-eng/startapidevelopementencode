local Env = getfenv();
local Z = {};
r26 = game;
B = r26;
r27 = B.GetService(B, "Players");
v4 = r26;
r28 = v4.GetService(v4, "RunService");
j = r26;
r29 = j.GetService(j, "CoreGui");
b = r26;
b = r26;
r30 = b.GetService(b, "Workspace");
X = r26;
r31 = X.GetService(X, "TweenService");
(function(...)
    pcall(function(...)
        local O = {
            O[1],
            O[2],
            O[3],
            O[4]
        };
        v3 = Z[O[1]].LocalPlayer;
        v1 = v3.FindFirstChild(v3, "PlayerScripts");
        v3 = Z[O[4]];
        F = v3.GetService(v3, "StarterPlayer");
        M = F.FindFirstChild(F, "StarterPlayerScripts");
        if v1 then
            v3 = v1.FindFirstChild(v1, "QuitsAntiCheatChecker");
            if v3 then
                v3 = v3.FindFirstChild(v3, "PlayerScripts").QuitsAntiCheatChecker;
                v3.Destroy(v3);
            end;
            v3 = v1.FindFirstChild(v1, "QuitsAntiCheatLocal");
            if v3 then
                v3 = v3.FindFirstChild(v3, "PlayerScripts").QuitsAntiCheatLocal;
                v3.Destroy(v3);
            end;
        end;
        if M then
            v3 = M.FindFirstChild(M, "QuitsAntiCheatChecker");
            if v3 then
                v3 = v3.QuitsAntiCheatChecker;
                v3.Destroy(v3);
            end;
            v3 = M.FindFirstChild(M, "QuitsAntiCheatLocal");
            if v3 then
                v3 = v3.QuitsAntiCheatLocal;
                v3.Destroy(v3);
            end;
        end;
        return; 
    end);
    return; 
end)();
pcall(function(...)
    if r24 then
        v2 = r26;
        B = "pairs";
        for M, r in pairs(r24(v2.GetService(v2, "ScriptContext").Error)) do
            a = M;
            r.Disconnect(r); 
        end;
    end;
    return; 
end);
r25.spawn(function(...)
    while r25.wait(1) do
        pcall(function(...)
            if r24 then
                v2 = r26;
                B = "pairs";
                for M, r in pairs(r24(v2.GetService(v2, "ScriptContext").Error)) do
                    a = M;
                    r.Disconnect(r); 
                end;
            end;
            return; 
        end); 
    end;
    return; 
end);
pcall(function(...)
    v1 = r26;
    M = v1.GetService(v1, "ReplicatedFirst");
    v1 = require(M.WaitForChild(M, "Framework", 2));
    return; 
end);
local function r36(...)
    v3 = r27.LocalPlayer;
    r32 = v3;
    v1 = v3;
    M = r32.Character;
    F = M;
    if M then
        v3 = v3;
        v1 = M;
        r33 = v1;
        r34 = v1.WaitForChild(v1, "Humanoid");
        r35 = v1.WaitForChild(v1, "HumanoidRootPart");
        return;
    else
        M = r32.CharacterAdded;
        F = M.Wait(M);
    end; 
end;
r37 = {};
local function r38(arg1_2, arg2_2, arg3_2, ...)
    B = arg3_2 or 2;
    a = r27.LocalPlayer;
    v2 = Instance.new("ScreenGui", a.WaitForChild(a, "PlayerGui"));
    v2.Name = "CustomNotificationGui";
    v2.ResetOnSpawn = false;
    N = Instance.new("Frame", v2);
    N.Size = UDim2.new(0, 250, 0, 50);
    N.Position = UDim2.new(1.1, 0, .8, 0);
    N.BackgroundColor3 = Color3.fromRGB(20, 20, 20);
    N.BackgroundTransparency = .2;
    N.BorderSizePixel = 0;
    N.AnchorPoint = Vector2.new(1, 0);
    N.ClipsDescendants = true;
    Instance.new("UICorner", N).CornerRadius = UDim.new(0, 8);
    j = Instance.new("TextLabel", N);
    j.Size = UDim2.new(1, -20, 0, 25);
    j.Position = UDim2.new(0, 10, 0, 5);
    b = arg1_2;
    j.Text = b;
    j.TextColor3 = Color3.new(1, 1, 1);
    j.Font = Enum.Font.SourceSansBold;
    j.TextSize = 18;
    j.TextXAlignment = Enum.TextXAlignment.Left;
    j.BackgroundTransparency = 1;
    b = Instance.new("TextLabel", N);
    b.Size = UDim2.new(1, -20, 0, 25);
    b.Position = UDim2.new(0, 10, 0, 30);
    z = arg2_2;
    b.Text = z;
    b.TextColor3 = Color3.fromRGB(200, 200, 200);
    b.Font = Enum.Font.SourceSans;
    b.TextSize = 16;
    b.TextWrapped = true;
    b.TextXAlignment = Enum.TextXAlignment.Left;
    b.TextYAlignment = Enum.TextYAlignment.Top;
    b.BackgroundTransparency = 1;
    table.insert(r37, N);
    v5 = r37;
    for D, v5 in ipairs(v5) do
        a = D;
        if v5 ~= N then
            C = r31;
            Y = C.Create(C, v5, TweenInfo.new(.3), {
                ["Position"] = UDim2.new(.98, 0, v5.Position.Y.Scale - .12, 0)
            });
            Y.Play(Y);
        end; 
    end;
    a = r31;
    z = a.Create(a, N, TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        ["Position"] = UDim2.new(.98, 0, .8, 0)
    });
    z.Play(z);
    r25.wait(B);
    a = r31;
    z = a.Create(a, N, TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        ["Position"] = UDim2.new(1.1, 0, N.Position.Y.Scale, 0)
    });
    z.Play(z);
    a = z.Completed;
    a.Wait(a);
    I = r37;
    for v5, I in ipairs(I) do
        a = v5;
        if I == N then
            table.remove(r37, v5);
            break;
        else
            
        end; 
    end;
    v2.Destroy(v2);
    return; 
end;
pcall(function(...)
    v3 = r29;
    if v3.FindFirstChild(v3, "WallhopToggleUI") then
        v3 = r29.WallhopToggleUI;
        v3.Destroy(v3);
    end;
    return; 
end);
r39 = Instance.new("ScreenGui");
r39.Name = "WallhopToggleUI";
r39.ResetOnSpawn = false;
r39.IgnoreGuiInset = true;
pcall(function(...)
    r39.Parent = r29;
    return; 
end);
G = r39;
if not G.Parent then
    G = r27.LocalPlayer;
    r39.Parent = G.WaitForChild(G, "PlayerGui");
end;
r40 = Instance.new("TextButton");
r40.Name = "WallhopButton";
r40.Size = UDim2.new(0, 110, 0, 44);
r40.Position = UDim2.new(.852, 0, .695, 0);
r40.AnchorPoint = Vector2.new(0.5, 0.5);
r40.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
r40.TextColor3 = Color3.fromRGB(255, 255, 255);
r40.Font = Enum.Font.Roboto;
r40.TextSize = 14;
r40.Text = "Wallhop: OFF";
r40.BorderSizePixel = 0;
r40.AutoButtonColor = false;
r40.BackgroundTransparency = 0;
r40.Parent = r39;
Instance.new("UICorner", r40).CornerRadius = UDim.new(0, 10);
r41 = false;
r43 = true;
r44 = .32;
local function r45(...)
    v3 = Z[M];
    r40.Text = "Wallhop: " .. (r41 and "ON" or "OFF");
    r40.TextColor3 = Color3.fromRGB(255, 255, 255);
    return; 
end;
local function r46(...)
    v1 = not r41;
    F = v1;
    if v1 then
    end; 
end;
local function r47(...)
    if not r34 or not r35 then
        return;
    end;
    v3 = r28.Stepped;
    r42 = v3.Connect(v3, function(...)
        if not r41 or not r43 then
            return;
        end;
        v1 = r46();
        if v1 then
            r43 = false;
            r48 = r35.CFrame;
            F = r34;
            F.ChangeState(F, Enum.HumanoidStateType.Jumping);
            v3 = false;
            if v1.Part1.Size.X > 1.5 or v1.Part1.Size.Z > 1.5 then
                r49 = Instance.new("Attachment", r35);
                r50 = Instance.new("LinearVelocity", r35);
                r50.MaxForce = 35000;
                r50.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector;
                r50.VectorVelocity = Vector3.new(0, 52, 0) + r35.CFrame.LookVector * 12;
                r50.Attachment0 = r49;
                r25.delay(.08, function(...)
                    v3 = r50;
                    v3.Destroy(v3);
                    v3 = r49;
                    v3.Destroy(v3);
                    return; 
                end);
            else
                r35.Velocity = Vector3.new(r35.Velocity.X, 35, r35.Velocity.Z) + r35.CFrame.LookVector * 3;
            end;
            r25.spawn(function(...)
                r35.CFrame = r48 * CFrame.Angles(0, math.rad(-45), 0);
                r25.wait(.05);
                r35.CFrame = r48;
                return; 
            end);
            r25.delay(r44, function(...)
                Z[51] = true;
                return; 
            end);
        end;
        return; 
    end);
    return; 
end;
local function r51(...)
    if r42 then
        v3 = r42;
        v3.Disconnect(v3);
    end;
    return; 
end;
local function r52(...)
    r41 = not r41;
    r45();
    if r41 then
        if not r33 then
            r36();
        end;
        r47();
    else
        r51();
    end;
    return; 
end;
m5 = r40.InputBegan;
m5.Connect(m5, function(arg1_3, ...)
    r57 = arg1_3;
    B = r57.UserInputType;
    if B == Enum.UserInputType.Touch or r57.UserInputType == Enum.UserInputType.MouseButton1 then
        r53 = true;
        r55 = r57.Position;
        r56 = r40.Position;
        B = r57.Changed;
        B.Connect(B, function(...)
            if r57.UserInputState == Enum.UserInputState.End then
                if not r53 then
                    return;
                end;
                r53 = false;
                if (r57.Position - r55).Magnitude < 6 then
                    Z[O[7]]();
                end;
            end;
            return; 
        end);
    end;
    return; 
end);
m5 = r40.InputChanged;
m5.Connect(m5, function(arg1_4, ...)
    v1 = arg1_4;
    if v1.UserInputType == Enum.UserInputType.Touch or v1.UserInputType == Enum.UserInputType.MouseMovement then
        v3 = arg1_4;
        r54 = v3;
    end;
    return; 
end);
m5 = b.GetService(b, "UserInputService").InputChanged;
m5.Connect(m5, function(arg1_5, ...)
    v1 = arg1_5;
    if v1 == r54 and r53 then
        M = v1.Position - r55;
        r40.Position = UDim2.new(r56.X.Scale, r56.X.Offset + M.X, r56.Y.Scale, r56.Y.Offset + M.Y);
    end;
    return; 
end);
r36();
r25.spawn(function(...)
    r38("by GioBolqv1 on roblox", "pls go follow me", 10);
    return; 
end);
m5 = r32.CharacterAdded;
m5.Connect(m5, function(arg1_6, ...)
    v1 = arg1_6;
    r33 = v1;
    r34 = v1.WaitForChild(v1, "Humanoid");
    r35 = v1.WaitForChild(v1, "HumanoidRootPart");
    if r41 then
        r51();
        r47();
    end;
    return; 
end);
m5 = r32.CharacterRemoving;
m5.Connect(m5, function(...)
    if r41 then
        r51();
    end;
    return; 
end);
return;
