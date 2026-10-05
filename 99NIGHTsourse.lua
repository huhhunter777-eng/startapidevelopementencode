local Env = getfenv();
local t = {};
v2 = game;
R = loadstring(v2.HttpGet(v2, "https://sirius.menu/rayfield"))();
U = R.CreateWindow(R, {
    ["Name"] = "99 Nights in the Forest - https://t.me/tornadoscripts",
    ["LoadingTitle"] = "Loading Optimized Hub...",
    ["LoadingSubtitle"] = "by https://t.me/tornadoscripts",
    ["Theme"] = "Dark",
    ["ToggleUIKeybind"] = "K"
});
v2 = U.CreateTab(U, "Auto Farm", 4483362458);
D = U.CreateTab(U, "Troll", 4483362458);
r24 = U.CreateTab(U, "Bring", 4483362458);
v4 = U.CreateTab(U, "Hostile", 4483362458);
O = U.CreateTab(U, "Neutral & Passive", 4483362458);
E = U.CreateTab(U, "Items & Food", 4483362458);
P = U.CreateTab(U, "ESP Settings", 4483362458);
l = U.CreateTab(U, "Player", 4483362458);
v5 = game;
r25 = v5.GetService(v5, "Players");
Z = game;
r26 = Z.GetService(Z, "Workspace");
N = game;
r27 = N.GetService(N, "RunService");
r28 = r25.LocalPlayer;
V = game;
r29 = V.GetService(V, "ReplicatedStorage");
d = game;
r30 = d.GetService(d, "VirtualInputManager");
r31 = workspace.CurrentCamera;
u = r29;
r32 = u.FindFirstChild(u, "RemoteEvents");
h = r32;
if h then
    h = r32;
    r32 = h.FindFirstChild(h, "ToolDamageObject");
end;
r33 = {
    ["Old Axe"] = 1,
    ["Good Axe"] = 2,
    ["Ice Axe"] = 3,
    ["Strong Axe"] = 4,
    ["Chainsaw"] = 5,
    ["Freezing Axe"] = 6,
    ["Admin Axe"] = 7
};
r34 = false;
r35 = 30;
r36 = .3;
r37 = {
    ["Fuel"] = true,
    ["Scrap"] = true,
    ["Weapons"] = true,
    ["Ammo"] = true,
    ["Tools"] = true,
    ["Armor"] = true,
    ["Warm"] = true,
    ["Food"] = true,
    ["Materials"] = true,
    ["Keys"] = true
};
r38 = {
    ["Old Sack"] = 5,
    ["Good Sack"] = 15,
    ["Infernal Sack"] = 20,
    ["Giant Sack"] = 25,
    ["Admin Sack"] = 99999
};
r39 = false;
r40 = Color3.fromRGB(0, 255, 255);
r41 = false;
r42 = 16;
r43 = false;
r44 = 50;
r45 = false;
r46 = 50;
local function r50(arg1_2, ...)
    v3 = arg1_2;
    r45 = v3;
    r51 = r28.Character;
    if not r51 then
        return;
    end;
    H = r51;
    r52 = H.FindFirstChildOfClass(H, "Humanoid");
    H = r51;
    R = H.FindFirstChild(H, "HumanoidRootPart");
    v3 = v3;
    if not r52 or not R then
        return;
    end;
    H = r45;
    if H then
        r52.PlatformStand = true;
        r49 = Instance.new("BodyGyro");
        r49.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
        r49.P = 90000;
        r49.D = 1000;
        D = H.FindFirstChild(H, r15[v4]);
        r49.Parent = D;
        r48 = Instance.new("BodyVelocity");
        r48.MaxForce = Vector3.new(math.huge, math.huge, math.huge);
        r48.P = 50000;
        r48.Parent = R;
        H = r27.RenderStepped;
        r47 = H.Connect(H, function(...)
            if not r51.Parent or r52.Health <= 0 then
                v3 = r47;
                if v3 then
                    v3 = r46;
                    v3.Disconnect(v3);
                end;
                v3 = r48;
                if v3 then
                    v3 = r48;
                    v3.Destroy(v3);
                end;
                v3 = r49;
                if v3 then
                    v3 = r47;
                    v3.Destroy(v3);
                end;
                r52.PlatformStand = false;
                return;
            end;
            v1 = workspace.CurrentCamera;
            if not v1 then
                return;
            end;
            e = r52.MoveDirection;
            if e.Magnitude > .01 then
                v3 = v1.CFrame;
                R = v3.VectorToObjectSpace(v3, e);
                v4 = v1.CFrame.RightVector * R.X + v1.CFrame.LookVector * -R.Z;
                if v4.Magnitude > .01 then
                    r48.Velocity = v4.Unit * r46;
                else
                    r48.Velocity = Vector3.zero;
                end;
            else
                r48.Velocity = Vector3.zero;
            end;
            r49.CFrame = v1.CFrame;
            return; 
        end);
    else
        H = r47;
        if H then
            H = t[WE];
            H.Disconnect(H);
        end;
        H = r48;
        if H then
            H = t[eE];
            H.Destroy(H);
        end;
        H = r49;
        if H then
            H = t[RE];
            H.Destroy(H);
        end;
        if r52 then
            r52.PlatformStand = false;
        end;
        return;
    end; 
end;
yE = r28.CharacterAdded;
yE.Connect(yE, function(arg1_3, ...)
    v1 = arg1_3;
    if r45 then
        r50(false);
        task.wait(1);
        r50(true);
    end;
    return; 
end);
r53 = false;
r54 = "Old Axe";
r55 = 5;
yE = {
    "Old Axe",
    "Good Axe",
    "Strong Axe",
    "Chainsaw",
    "Freezing Axe"
};
r57 = false;
r59 = false;
r60 = 0;
r61 = .4;
local function r62(...)
    v1 = r28.Character;
    if not v1 then
        return;
    end;
    e = v1.FindFirstChild(v1, "Humanoid");
    if not e then
        return;
    end;
    if r41 then
        e.WalkSpeed = r42;
    else
        e.WalkSpeed = 16;
    end;
    return; 
end;
local function r63(...)
    v1 = r28.Character;
    if not v1 then
        return;
    end;
    e = v1.FindFirstChild(v1, "Humanoid");
    if not e then
        return;
    end;
    if r43 then
        e.JumpPower = r44;
        e.UseJumpPower = true;
    else
        e.JumpPower = 50;
        e.UseJumpPower = true;
    end;
    return; 
end;
pE = r28.CharacterAdded;
pE.Connect(pE, function(...)
    task.wait(0.5);
    r62();
    r63();
    return; 
end);
r64 = false;
local function r65(...)
    v1 = r28.Character;
    if not v1 then
        return nil;
    end;
    e = v1.FindFirstChild(v1, "Head") or v1.FindFirstChild(v1, "HumanoidRootPart");
    if not e then
        return nil;
    end;
    R = e.FindFirstChild(e, "AutoLootDebugTag");
    if R then
        return R;
    end;
    y = Instance.new("BillboardGui");
    y.Name = "AutoLootDebugTag";
    y.Adornee = e;
    y.Size = UDim2.new(0, 200, 0, 50);
    y.StudsOffset = Vector3.new(0, 4.5, 0);
    y.AlwaysOnTop = true;
    y.Parent = e;
    U = Instance.new("TextLabel");
    U.Name = "DebugLabel";
    U.Size = UDim2.new(1, 0, 1, 0);
    U.BackgroundTransparency = 1;
    U.TextScaled = true;
    U.Font = Enum.Font.Code;
    U.TextColor3 = Color3.fromRGB(0, 255, 0);
    U.TextStrokeTransparency = 0;
    U.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
    U.Text = "AutoLoot: Initializing...";
    U.Visible = r64;
    U.Parent = y;
    return y; 
end;
local function r66(arg1_4, ...)
    if not r64 then
        e = r28.Character;
        if e then
            R = e.FindFirstChild(e, "Head") or e.FindFirstChild(e, "HumanoidRootPart");
            if R then
                H = R.FindFirstChild(R, "AutoLootDebugTag");
            end;
            if R then
                R.AutoLootDebugTag.DebugLabel.Visible = false;
            end;
        end;
        return;
    end;
    e = r28.Character;
    if not e then
        return;
    end;
    R = e.FindFirstChild(e, "Head") or e.FindFirstChild(e, "HumanoidRootPart");
    if not R then
        return;
    end;
    U = t[e];
    y = R.FindFirstChild(R, "AutoLootDebugTag");
    if y then
        H = y.FindFirstChild(y, "DebugLabel");
    end;
    if y then
        y.DebugLabel.Visible = true;
        U = arg1_4;
        y.DebugLabel.Text = U;
    else
        U = r65();
        if U then
            H = U.FindFirstChild(U, "DebugLabel");
        end;
        if U then
            U.DebugLabel.Visible = true;
            U.DebugLabel.Text = arg1_4;
        end;
        return;
    end; 
end;
r67 = {};
local function r68(arg1_5, ...)
    v1 = arg1_5;
    if v1 == r28 then
        return;
    end;
    e = v1.Character;
    if not e then
        return;
    end;
    if r67[v1] then
        R = r67[v1];
        v3 = R.Highlight;
        if v3 then
            v3 = R.Highlight;
            v3.Destroy(v3);
        end;
        v3 = R.Billboard;
        if v3 then
            v3 = R.Billboard;
            v3.Destroy(v3);
        end;
        r67[v1] = nil;
    end;
    R = Instance.new("Highlight");
    R.Parent = e;
    R.FillColor = r40;
    R.FillTransparency = .3;
    R.OutlineColor = r40;
    R.OutlineTransparency = .1;
    R.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
    Instance.new("BillboardGui").Parent = e;
    U = "Adornee";
    v2 = e.FindFirstChild(e, "Head");
    H = v2;
    if v2 then
        v3 = r16;
        y[v3] = v2;
        y.Size = UDim2.new(0, 150, 0, 50);
        y.StudsOffset = Vector3.new(0, 3, 0);
        y.AlwaysOnTop = true;
        U = Instance.new("TextLabel");
        U.Parent = y;
        U.Size = UDim2.new(1, 0, 1, 0);
        U.BackgroundTransparency = 1;
        U.TextScaled = true;
        U.Font = Enum.Font.SourceSansBold;
        U.TextStrokeTransparency = 0;
        U.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
        v3 = "Text";
        U[v3] = string.format("%s\n[%s]", v1.Name, v1.DisplayName or "");
        U.TextColor3 = r40;
        r67[v1] = {
            ["Highlight"] = Instance.new("Highlight"),
            ["Billboard"] = y,
            ["Label"] = U
        };
        return;
    else
        H = v1.Character;
    end; 
end;
local function r69(arg1_6, ...)
    v1 = arg1_6;
    if r67[v1] then
        v3 = r67[v1].Highlight;
        if v3 then
            v3 = r67[arg1_6].Highlight;
            v3.Destroy(v3);
        end;
        v3 = r67[v1].Billboard;
        if v3 then
            v3 = r67[arg1_6].Billboard;
            v3.Destroy(v3);
        end;
        r67[v1] = nil;
    end;
    return; 
end;
local function r70(...)
    if not r39 then
        R = r67;
        for e, U in pairs("pairs") do
            r69(e); 
        end;
        return;
    end;
    y = r25;
    U = {
        y.GetPlayers(y)
    };
    for R, U in pairs(F(U)) do
        y = R;
        if U ~= r28 then
            if U.Character then
                if r67[U] then
                    if r67[U].Highlight then
                        r67[U].Highlight.FillColor = r40;
                        r67[U].Highlight.OutlineColor = r40;
                    end;
                    if r67[U].Label then
                        r67[U].Label.TextColor3 = r40;
                    end;
                else
                    r68(U);
                end;
            else
                r69(U);
            end;
        end; 
    end;
    return; 
end;
zE = r25.PlayerAdded;
zE.Connect(zE, function(arg1_7, ...)
    r71 = arg1_7;
    v3 = r71.CharacterAdded;
    v3.Connect(v3, function(...)
        if r39 then
            task.wait(0.5);
            r68(r71);
        end;
        return; 
    end);
    return; 
end);
zE = r25.PlayerRemoving;
zE.Connect(zE, function(arg1_8, ...)
    r69(arg1_8);
    return; 
end);
zE = r27.RenderStepped;
zE.Connect(zE, function(...)
    if r39 then
        r70();
    end;
    return; 
end);
r72 = 500;
r73 = true;
r74 = {
    ["Hostile"] = false,
    ["Neutral"] = false,
    ["Passive"] = false,
    ["Traders"] = false,
    ["Children"] = false,
    ["Tools"] = false,
    ["Weapons"] = false,
    ["Armor"] = false,
    ["Food"] = false,
    ["Materials"] = false,
    ["Keys"] = false,
    ["SmallTree"] = false,
    ["BigTree"] = false,
    ["Chest"] = false,
    ["Fuel"] = false,
    ["Scrap"] = false,
    ["Ammo"] = false,
    ["Warm"] = false
};
r75 = {
    ["Hostile"] = Color3.fromRGB(255, 0, 0),
    ["Neutral"] = Color3.fromRGB(255, 255, 0),
    ["Passive"] = Color3.fromRGB(0, 255, 0),
    ["Traders"] = Color3.fromRGB(0, 255, 255),
    ["Children"] = Color3.fromRGB(255, 105, 180),
    ["Tools"] = Color3.fromRGB(139, 69, 19),
    ["Weapons"] = Color3.fromRGB(255, 69, 0),
    ["Armor"] = Color3.fromRGB(138, 43, 226),
    ["Food"] = Color3.fromRGB(50, 205, 50),
    ["Materials"] = Color3.fromRGB(210, 180, 140),
    ["Keys"] = Color3.fromRGB(255, 215, 0),
    ["SmallTree"] = Color3.fromRGB(0, 255, 0),
    ["BigTree"] = Color3.fromRGB(34, 139, 34),
    ["Chest"] = Color3.fromRGB(255, 165, 0),
    ["Fuel"] = Color3.fromRGB(255, 140, 0),
    ["Scrap"] = Color3.fromRGB(192, 192, 192),
    ["Ammo"] = Color3.fromRGB(255, 0, 255),
    ["Warm"] = Color3.fromRGB(0, 206, 209)
};
r76 = {
    ["Wolf"] = true,
    ["Alpha Wolf"] = true,
    ["Bear"] = true,
    ["Polar Bear"] = true,
    ["Arctic Fox"] = true,
    ["Scorpion"] = true,
    ["Boar"] = true,
    ["Frog"] = true,
    ["Meteor Crab"] = true,
    ["Hellephant"] = true,
    ["Cultist"] = true,
    ["Brute Cultist"] = true,
    ["Crossbow Cultist"] = true,
    ["Darkstring Cultist"] = true,
    ["Juggernaut Cultist"] = true,
    ["Cultist King"] = true,
    ["Alien"] = true,
    ["Alien Elite"] = true,
    ["The Deer"] = true,
    ["The Bat"] = true,
    ["The Cat"] = true,
    ["The Owl"] = true,
    ["The Ram"] = true,
    ["Evil Bunny"] = true,
    ["Shadow Cultist"] = true
};
r77 = {
    ["Mammoth"] = true,
    ["Mossy Mammoth"] = true
};
r78 = {
    ["Bunny"] = true,
    ["Horse"] = true,
    ["Turkey"] = true,
    ["Chick"] = true,
    ["Kiwi"] = true
};
r79 = {
    ["Pelt Trader"] = true,
    ["Furniture Trader"] = true,
    ["Fairy"] = true,
    ["Tool Trader"] = true
};
r80 = {
    ["Dino Kid"] = true,
    ["Squid Kid"] = true,
    ["Kraken Kid"] = true,
    ["Koala Kid"] = true
};
r81 = {};
for BE = 1, 6 do
    r81["Item Chest" .. BE] = true; 
end;
for BE = 1, 4 do
    r81["StoneChest" .. BE] = true; 
end;
for BE = 1, 4 do
    r81["Volcanic Chest" .. BE] = true; 
end;
r82 = {
    ["Fuel"] = {
        "Coal",
        "Fuel Canister",
        "Oil Barrel",
        "Log",
        "Super Log"
    },
    ["Scrap"] = {
        "Bolt",
        "Sheet Metal",
        "Old Radio",
        "Broken Microwave",
        "Washing Machine",
        "Metal Chair",
        "Tyre",
        "UFO Component",
        "UFO Junk",
        "Old Car Engine",
        "Broken Fan",
        "Cultist Experiment",
        "Cultist Prototype",
        "UFO Scrap"
    },
    ["Weapons"] = {
        "Spear",
        "Revolver",
        "Rifle",
        "Poison Spear",
        "Laser Sword",
        "Great Sword",
        "Katana",
        "Kunai",
        "Morningstar",
        "Warhammer",
        "Shadow Dagger",
        "Infernal Sword",
        "Ice Sword",
        "Wildfire Sword",
        "Bow",
        "Crossbow",
        "Raygun",
        "Laser Sword",
        "Laser Cannon",
        "Carrot Darts"
    },
    ["Ammo"] = {
        "Revolver Ammo",
        "Rifle Ammo",
        "Shotgun Ammo",
        "Fuel Canister",
        "Oil Barrel"
    },
    ["Tools"] = {
        "Old Sack",
        "Good Sack",
        "Giant Sack",
        "Infernal Sack",
        "Admin Sack",
        "Old Axe",
        "Good Axe",
        "Ice Axe",
        "Strong Axe",
        "Chainsaw",
        "Freezing Axe",
        "Fishing Rod",
        "Old Taming Flute",
        "Good Taiming Flute",
        "Strong Taiming Flute",
        "Old Flashlight",
        "Strong Flashlight",
        "Trim Kit",
        "Old Rod",
        "Good Rod",
        "Strong Rod",
        "Teleporter"
    },
    ["Armor"] = {
        "Leather Body",
        "Poison Armor",
        "Iron Armor",
        "Frog Boots",
        "Obsidiron Boots",
        "Thorn Body",
        "Riot Shield",
        "Obsidiron Body",
        "Vampire Cloak",
        "Alien Armor"
    },
    ["Warm"] = {
        "Earmuffs",
        "Beanie",
        "Arctic Fox Hat",
        "Polar Bear Hat",
        "Mammoth Helmet"
    },
    ["Food"] = {
        "Carrot",
        "Morsel",
        "Morsel?",
        "Cooked Morsel",
        "Steak",
        "Cooked Steak",
        "Ribs",
        "Cooked Ribs",
        "Wolf Meat",
        "Bear Meat",
        "Turkey Leg",
        "Mackerel",
        "Cooked Mackerel",
        "Salmon",
        "Cooked Salmon",
        "Lava Eel",
        "Stew",
        "Pumpkin",
        "Corn",
        "Mushroom",
        "Apple",
        "Blueberry",
        "Berry",
        "Chili",
        "Hearty Stew"
    },
    ["Materials"] = {
        "Bunny Foot",
        "Gem of the Forest Fragment",
        "Wolf Pelt",
        "Alpha Wolf Pelt",
        "Bear Pelt",
        "Polar Bear Pelt",
        "Arctic Fox Pelt",
        "Scorpion Shell",
        "Mammoth Tusk",
        "Shard",
        "Cultist King Antler"
    },
    ["Keys"] = {
        "Red Key",
        "Blue Key",
        "Yellow Key",
        "Grey Key",
        "Crystal Skull Key",
        "Coins Stack"
    },
    ["Neutral"] = {
        "Mammoth",
        "Mossy Mammoth"
    },
    ["Passive"] = {
        "Bunny",
        "Horse",
        "Turkey",
        "Chick",
        "Kiwi"
    },
    ["Traders"] = {
        "Pelt Trader",
        "Furniture Trader",
        "Fairy",
        "Tool Trader"
    },
    ["Children"] = {
        "Dino Kid",
        "Squid Kid",
        "Kraken Kid",
        "Koala Kid"
    }
};
r83 = {};
vE = r82;
for IE, vE in pairs(vE) do
    r83[IE] = vE[1]; 
end;
local function r84(arg1_9, ...)
    v1 = arg1_9;
    e = r15;
    if v1.IsA(v1, "Model") then
        e = v1.PrimaryPart;
        if e then
            return e;
        else
            H = v1.FindFirstChildWhichIsA(v1, "BasePart", true);
        end;
    end;
    if v1.IsA(v1, "BasePart") then
        return v1;
    end;
    return nil; 
end;
local function r85(arg1_10, ...)
    H = r26;
    v1 = arg1_10;
    v3 = {};
    e = ipairs;
    U = r26;
    y = ipairs;
    v3 = y;
    v2 = "ipairs";
    for U, v4 in ipairs({
        H.FindFirstChild(H, "Items"),
        U.FindFirstChild(U, "Map") and U.FindFirstChild(U, "Items")
    }) do
        D = U;
        if v4 then
            for E, l in ipairs(v4.GetChildren(v4)) do
                P = E;
                if l.IsA(l, "Model") and l.Name == arg1_10 then
                    v5 = r84(l);
                    if v5 then
                        table.insert(v3, {
                            ["obj"] = l,
                            ["rootPart"] = v5
                        });
                    end;
                end; 
            end;
        end; 
    end;
    return e; 
end;
local function r86(arg1_11, ...)
    v1 = arg1_11;
    if not v1 or v1 == "" then
        return;
    end;
    e = r28.Character;
    if not e or not e.FindFirstChild(e, "HumanoidRootPart") then
        return;
    end;
    r87 = e.HumanoidRootPart.Position + Vector3.new(0, 3, 0);
    y = r85(v1);
    if #y == 0 then
        return;
    end;
    D = "ipairs";
    for v2, z in ipairs(y) do
        v4 = v2;
        r88 = z;
        pcall(function(...)
            v1 = t[v3].obj;
            e = v1.IsA(v1, "Model");
            if e then
                H = t[v3].obj.PrimaryPart;
            end;
            if e then
                v3 = t[v3].obj;
                v3.SetPrimaryPartCFrame(v3, CFrame.new(r87));
            else
                t[v3].rootPart.CFrame = CFrame.new(r87);
            end;
            return; 
        end);
        task.wait(.1); 
    end;
    return; 
end;
local function r89(...)
    v1 = r28.Character;
    if not v1 or not v1.FindFirstChild(v1, "HumanoidRootPart") then
        return;
    end;
    v3 = {};
    U = ipairs;
    H = r26;
    v4 = r26;
    D = {};
    v3 = D;
    O = r82;
    for z, P in pairs(H) do
        v3 = ipairs;
        for Z, c in v3(P) do
            v3 = z;
            ({})[c] = v3; 
        end; 
    end;
    for O, P in ipairs({
        H.FindFirstChild(H, "Items"),
        v4.FindFirstChild(v4, "Map") and v4.FindFirstChild(v4, "Items")
    }) do
        E = O;
        if P then
            for Z, c in ipairs(P.GetChildren(P)) do
                J = Z;
                if c.IsA(c, "Model") then
                    Q = string.lower(c.Name);
                    if not string.find(Q, "chest") and (not string.find(Q, "bush") and (not string.find(Q, "grass") and (not string.find(Q, "flower") and (not string.find(Q, "rock") and (not string.find(Q, "stone") and (not string.find(Q, "bee") and not string.find(Q, "tree"))))))) then
                        N = r84(c);
                        if N then
                            table.insert(U, {
                                ["obj"] = c,
                                ["rootPart"] = N,
                                ["category"] = ({})[c.Name] or "Other",
                                ["name"] = c.Name
                            });
                        end;
                    end;
                end; 
            end;
        end; 
    end;
    if #U == 0 then
        return;
    end;
    for E, l in ipairs(U) do
        r90 = l;
        Z = 3 + (80 - 3) * E / #U;
        J = E * 2.5;
        r91 = v1.HumanoidRootPart.Position + Vector3.new(math.cos(J) * Z, 3, math.sin(J) * Z);
        pcall(function(...)
            v1 = r90.obj;
            e = v1.IsA(v1, "Model");
            if e then
                H = r90.obj.PrimaryPart;
            end;
            if e then
                v3 = r90.obj;
                v3.SetPrimaryPartCFrame(v3, CFrame.new(r91));
            else
                r90.rootPart.CFrame = CFrame.new(r91);
            end;
            return; 
        end);
        task.wait(.1); 
    end;
    return; 
end;
local function r92(...)
    v3 = r28;
    v1 = v3.FindFirstChild(v3, "ItemBag");
    if not v1 then
        return 0;
    end;
    U = {
        v1.GetChildren(v1)
    };
    for y, D in ipairs(F("ipairs")) do
        v2 = y;
        if D.IsA(D, "Model") or (D.IsA(D, "BasePart") or D.IsA(D, "Folder")) then
            if #D.GetChildren(D) > 0 and D.IsA(D, "Folder") then
                e = 0 + #D.GetChildren(D);
            else
                e = 0 + 1;
            end;
        end; 
    end;
    return 0; 
end;
local function r93(...)
    v3 = r28;
    v3 = r28;
    v1 = v3.FindFirstChild(v3, "Inventory");
    if not v1 or not v3.FindFirstChild(v3, "ItemBag") then
        return nil, nil, 0, 0;
    end;
    D = r38;
    for v2, z in pairs("pairs") do
        O = v1.FindFirstChild(v1, v2);
        E = O;
        if O then
            E = z > 0;
        end;
        if E then
            y = z;
            E = v2;
            R = v2;
        end; 
    end;
    if not nil then
        return nil, nil, 0, 0;
    end;
    return v1.FindFirstChild(v1, nil), nil, r92(), 0; 
end;
local function r94(arg1_12, ...)
    v1 = arg1_12;
    y = r37;
    for R, v2 in pairs(H) do
        if v2 then
            D = r82[R];
        end;
        if v2 then
            for z, E in ipairs(r82[R]) do
                O = z;
                if E == arg1_12 then
                    return true;
                else
                    
                end; 
            end;
        end; 
    end;
    return false; 
end;
local function r95(arg1_13, ...)
    v1 = arg1_13;
    if r76[v1] then
        return "Hostile";
    end;
    if r77[v1] then
        return "Neutral";
    end;
    if r78[v1] then
        return "Passive";
    end;
    if r79[v1] then
        return "Traders";
    end;
    if r80[v1] then
        return "Children";
    end;
    if r81[v1] then
        return "Chest";
    end;
    y = r82;
    for R, v2 in pairs("pairs") do
        for z, E in ipairs(v2) do
            O = z;
            if E == arg1_13 then
                return R;
            else
                
            end; 
        end; 
    end;
    return nil; 
end;
local function r96(arg1_14, ...)
    v1 = arg1_14;
    if v1.IsA(v1, "Model") and v1.PrimaryPart then
        return v1.PrimaryPart.Position;
    end;
    if v1.IsA(v1, "BasePart") then
        return v1.Position;
    end;
    if v1.IsA(v1, "Model") then
        e = v1.FindFirstChildWhichIsA(v1, "BasePart", true);
        if e then
            return e.Position;
        end;
    end;
    return nil; 
end;
SX = r27.RenderStepped;
SX.Connect(SX, function(...)
    v1 = r28.Character;
    if not v1 or not v1.FindFirstChild(v1, "HumanoidRootPart") then
        return;
    end;
    e = v1.HumanoidRootPart;
    R = {};
    v3 = r26;
    y = v3.FindFirstChild(v3, "Characters");
    if y then
        table.insert(R, y);
    end;
    v3 = r26;
    U = v3.FindFirstChild(v3, "Items");
    if U then
        table.insert(R, U);
    end;
    v3 = r26;
    if v3.FindFirstChild(v3, "Map") then
        v2 = r26.Map;
        if v2.FindFirstChild(v2, "Characters") then
            table.insert({}, v2.Characters);
        end;
        if v2.FindFirstChild(v2, "Items") then
            table.insert({}, v2.Items);
        end;
    end;
    v4 = "ipairs";
    for D, O in ipairs(R) do
        z = D;
        if not O then
            
        end;
        for l, Z in ipairs(O.GetChildren(O)) do
            v5 = l;
            c = "Model";
            if not Z.IsA(Z, c) then
                
            end;
            J = r95(Z.Name);
            if not J or not r74[J] then
                w = Z.FindFirstChild(Z, "GlobalESP_HL");
                if w then
                    w.Destroy(w);
                end;
                Y = Z.FindFirstChild(Z, "GlobalESP_Tag");
                if Y then
                    Y.Destroy(Y);
                end;
            else
                c = r96(Z);
                if not c then
                    
                else
                    if (v1.HumanoidRootPart.Position - c).Magnitude > r72 then
                        w = Z.FindFirstChild(Z, "GlobalESP_HL");
                        if w then
                            w.Destroy(w);
                        end;
                        Y = Z.FindFirstChild(Z, "GlobalESP_Tag");
                        if Y then
                            Y.Destroy(Y);
                        end;
                    else
                        N = Z.FindFirstChild(Z, "GlobalESP_HL");
                        if not N then
                            N = Instance.new("Highlight");
                            N.Name = "GlobalESP_HL";
                            N.Adornee = Z;
                            N.Parent = Z;
                            N.FillTransparency = 0.5;
                            N.OutlineTransparency = 0;
                        end;
                        N.FillColor = r75[J];
                        N.OutlineColor = r75[J];
                        Z.FindFirstChild(Z, "GlobalESP_Tag");
                        if r73 then
                            if not V then
                                V = Instance.new("BillboardGui");
                                V.Name = "GlobalESP_Tag";
                                V.Adornee = Z;
                                V.Size = UDim2.new(0, 100, 0, 40);
                                V.StudsOffset = Vector3.new(0, 3, 0);
                                V.AlwaysOnTop = true;
                                V.Parent = Z;
                                d = Instance.new("TextLabel");
                                d.Name = "Label";
                                d.Size = UDim2.new(1, 0, 1, 0);
                                d.BackgroundTransparency = 1;
                                d.TextScaled = true;
                                d.Font = Enum.Font.SourceSansBold;
                                d.TextStrokeTransparency = 0;
                                d.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
                                d.Parent = V;
                            end;
                            d = V.FindFirstChild(V, "Label");
                            if d then
                                d.Text = string.format("%s\n[%dm]", Z.Name, math.floor((e[r15[r16(")\x9dCO=\xb1\xf2\xc8", A)]] - c)[Y]));
                                d.TextColor3 = r75[v3(Z[d])];
                            end;
                        end;
                    end;
                end;
            end; 
        end; 
    end;
    D = r74.SmallTree;
    if D or r74.BigTree then
        D = r26;
        v2 = D.FindFirstChild(D, "Map") and D.FindFirstChild(D, "Foliage");
        if v2 then
            for z, E in ipairs(v2.GetChildren(v2)) do
                O = z;
                v3 = string.find;
                l = v3(E.Name, "TreeBig");
                Z = E.Name == "Small Tree";
                v5 = Z and r74.SmallTree;
                v3 = v3;
                if Z then
                    if v5 then
                        v5 = E.FindFirstChild(E, "Trunk");
                        if v5 then
                            c = r72;
                            if (v1.HumanoidRootPart.Position - v5.Position).Magnitude <= c then
                                if P then
                                    Q = r75.SmallTree;
                                end;
                                c = P or r75.BigTree;
                                if P then
                                    N = "Small Tree";
                                end;
                                v3 = J <= c;
                                Q = P or "Big Tree";
                                N = v5.FindFirstChild(v5, "GlobalESP_HL");
                                if not N then
                                    N = Instance.new("Highlight");
                                    N.Name = "GlobalESP_HL";
                                    d = v3;
                                    N.Adornee = d;
                                    N.Parent = v5;
                                    N.FillTransparency = 0.5;
                                    N.OutlineTransparency = 0;
                                end;
                                d = P or r75.BigTree;
                                N.FillColor = d;
                                N.OutlineColor = c;
                                v5.FindFirstChild(v5, "GlobalESP_Tag");
                                if r73 then
                                    if not d then
                                        d = Instance.new("BillboardGui");
                                        d.Name = "GlobalESP_Tag";
                                        B = v5;
                                        d.Adornee = B;
                                        d.Size = UDim2.new(0, 100, 0, 40);
                                        d.StudsOffset = Vector3.new(0, 3, 0);
                                        d.AlwaysOnTop = true;
                                        d.Parent = v5;
                                        B = Instance.new("TextLabel");
                                        B.Name = "Label";
                                        B.Size = UDim2.new(1, 0, 1, 0);
                                        B.BackgroundTransparency = 1;
                                        B.TextScaled = true;
                                        B.Font = Enum.Font.SourceSansBold;
                                        B.TextStrokeTransparency = 0;
                                        B.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
                                        B.Parent = d;
                                    end;
                                    B = d.FindFirstChild(d, "Label");
                                    if B then
                                        B.Text = string.format("%s\n[%dm]", P or "Big Tree", math.floor((e[r15[r16("\x03x\x9b'-\x07\".", B)]] - Z)[Q[V]]));
                                        B.TextColor3 = P or r75.BigTree;
                                    end;
                                end;
                            end;
                        else
                            
                        end;
                    end;
                else
                    if l then
                        Z = r74.BigTree;
                    end;
                    v3 = v3;
                    v5 = l;
                end; 
            end;
        end;
    end;
    return; 
end);
local function r97(...)
    v1 = r28.Character;
    if not v1 then
        return nil;
    end;
    if not v1.FindFirstChild(v1, "HumanoidRootPart") then
        return nil;
    end;
    v3 = r26;
    R = v3.FindFirstChild(v3, "Map");
    if R then
        R = R.FindFirstChild(R, "Foliage");
    end;
    if not R then
        return nil;
    end;
    U = 777;
    for v4, O in pairs(R.GetChildren(R)) do
        z = v4;
        v3 = r26;
        if O.IsA(O, "Model") and O.Name == "Small Tree" then
            v3 = v3;
            E = O.FindFirstChild(O, "trunk") or O.FindFirstChild(O, "Trunk");
            if E then
                H = E.IsA(E, "BasePart");
            end;
            v3 = v3;
            if E then
                P = (v1.FindFirstChild(v1, "HumanoidRootPart").Position - E.Position).Magnitude;
                if P <= 777 then
                    U = P;
                    y = {
                        ["Model"] = O,
                        ["Trunk"] = O.FindFirstChild(O, l) or O.FindFirstChild(O, "Trunk"),
                        ["Distance"] = P
                    };
                end;
            end;
        end; 
    end;
    return nil; 
end;
local function r98(arg1_15, ...)
    v1 = arg1_15;
    if not v1 or not v1.Trunk then
        return false;
    end;
    e = r28.Character;
    if not e then
        return false;
    end;
    R = e.FindFirstChild(e, "HumanoidRootPart");
    if not R then
        return false;
    end;
    y = v1.Trunk;
    U = y.Position;
    R.CFrame = CFrame.new(U - (R.Position - U).Unit * (y.Size.Z / 2 + 2), U);
    return true; 
end;
local function r99(arg1_16, arg2_16, ...)
    r100 = arg1_16;
    r101 = arg2_16;
    if not r32 or not r101 then
        return;
    end;
    R = r100;
    R = R.FindFirstChild(R, "trunk") or R.FindFirstChild(R, "Trunk");
    if R then
        y = R.CFrame;
    end;
    v3 = t[e];
    H = R;
    if R then
    end; 
end;
local function r102(...)
    v3 = r28;
    v1 = v3.FindFirstChild(v3, "Inventory");
    if not v1 then
        return nil;
    end;
    R = -1;
    v2 = {
        v1.GetChildren(v1)
    };
    for U, v4 in pairs(F("pairs")) do
        D = U;
        v3 = r33[v4.Name];
        if v3 then
            O = v3 > -1;
        end;
        if v3 then
            v3 = v3;
            R = v3;
            e = v4;
        end; 
    end;
    return nil; 
end;
task.spawn(function(...)
    while true do
        if r53 then
            pcall(function(...)
                v1 = r97();
                if not v1 then
                    task.wait(0.5);
                    return;
                end;
                if not r98(v1) then
                    task.wait(.3);
                    return;
                end;
                H = r54;
                if H then
                    H = r28;
                    y = H.FindFirstChild(H, "Inventory");
                    if y then
                        R = y.FindFirstChild(y, r28);
                    end;
                end;
                if not nil then
                    R = r102();
                end;
                if not nil then
                    task.wait(.3);
                    return;
                end;
                r99(v1.Model, nil);
                r56 = v1.Model;
                return; 
            end);
        else
            t[jE] = nil;
        end;
        task.wait(1 / r55); 
    end;
    return; 
end);
local function r103(...)
    v3 = r26;
    v1 = v3.FindFirstChild(v3, "Map");
    if v1 then
        v1 = v1.FindFirstChild(v1, "Foliage");
    end;
    if not v1 then
        return;
    end;
    H = v1.DescendantRemoving;
    H.Connect(H, function(arg1_17, ...)
        if arg1_17 == r56 then
            
        end;
        return; 
    end);
    return; 
end;
task.spawn(function(...)
    v3 = true;
    while v3 do
        v3 = r26;
        v1 = v3.FindFirstChild(v3, "Map");
        if v1 then
            v1 = v1.FindFirstChild(v1, "Foliage");
        end;
        if v1 then
            r103();
            break;
        else
            task.wait(1);
        end; 
    end;
    return; 
end);
local function r104(...)
    v3 = r28;
    v1 = v3.FindFirstChild(v3, "PlayerGui");
    if not v1 then
        return nil;
    end;
    e = v1.FindFirstChild(v1, "MobileButtons");
    if not e then
        return nil;
    end;
    R = e.FindFirstChild(e, "Frame");
    if not R then
        return nil;
    end;
    return R.FindFirstChild(R, "Button3"); 
end;
local function r105(...)
    v1 = r104();
    if not v1 then
        return false;
    end;
    if not v1.Visible then
        return false;
    end;
    e = v1.FindFirstChild(v1, "TextLabel");
    if not e then
        return false;
    end;
    R = e.Text or "";
    U = string.find(R, "Swing");
    if U then
        return U;
    else
        H = string.find(R, "swing");
    end; 
end;
local function r106(...)
    v1 = r104();
    if v1 then
        H = v1.Visible;
    end;
    if v1 then
        e = v1.AbsolutePosition;
        R = v1.AbsoluteSize;
        r107 = e.X + R.X / 2;
        r108 = e.Y + R.Y / 2;
        pcall(function(...)
            v3 = r30;
            v3.SendMouseButtonEvent(v3, r107, r108, 0, true, game, 0);
            task.wait(.05);
            v3 = r30;
            v3.SendMouseButtonEvent(v3, r107, r108, 0, false, game, 0);
            return; 
        end);
        return true;
    end;
    return false; 
end;
local function r109(arg1_18, ...)
    v1 = arg1_18;
    if not v1 or not r31 then
        return false;
    end;
    e = r28.Character;
    if not e then
        return false;
    end;
    R = e.FindFirstChild(e, "Head");
    if not R then
        return false;
    end;
    y = R.CFrame.LookVector;
    return y.Dot(y, (v1.Position - R.Position).Unit) > .866; 
end;
local function r110(...)
    v1 = r28.Character;
    if not v1 then
        return;
    end;
    if not v1.FindFirstChild(v1, "HumanoidRootPart") then
        return;
    end;
    v3 = r26;
    R = v3.FindFirstChild(v3, "Map");
    if R then
        R = R.FindFirstChild(R, "Foliage");
    end;
    if not R then
        return;
    end;
    U = math.huge;
    for v4, O in pairs(R.GetChildren(R)) do
        z = v4;
        v3 = r26;
        if O.IsA(O, "Model") and O.Name == "Small Tree" then
            v3 = v3;
            E = O.FindFirstChild(O, "Trunk") or O.FindFirstChild(O, "trunk");
            if E then
                H = E.IsA(E, "BasePart");
            end;
            v3 = v3;
            if E then
                P = (v1.FindFirstChild(v1, "HumanoidRootPart").Position - E.Position).Magnitude;
                if P < math[D[r16("C\xdfpd", E)]] then
                    U = P;
                    y = {
                        ["Model"] = O,
                        ["Trunk"] = O.FindFirstChild(O, l) or O.FindFirstChild(O, "trunk"),
                        ["Distance"] = P
                    };
                end;
            end;
        end; 
    end;
    return; 
end;
local function r111(arg1_19, ...)
    v1 = arg1_19;
    if not v1 or not v1.Trunk then
        return false;
    end;
    e = r28.Character;
    if not e then
        return false;
    end;
    R = e.FindFirstChild(e, "HumanoidRootPart");
    if not R then
        return false;
    end;
    y = v1.Trunk;
    U = y.Position;
    z = U - (U - R.Position).Unit * (y.Size.Z / 2 + 3);
    z = Vector3.new(z.X, U.Y, z.Z);
    R.CFrame = CFrame.new(z, Vector3.new(U.X, z.Y, U.Z));
    return true; 
end;
task.spawn(function(...)
    while true do
        if r57 then
            pcall(function(...)
                v3 = r110;
                v3();
                if not r58 or not r58.Model.Parent then
                    r59 = false;
                    task.wait(.3);
                    return;
                end;
                v1 = r28.Character;
                R = v3;
                if v1 then
                    e = v1.FindFirstChild(v1, "HumanoidRootPart");
                end;
                y = not r59;
                if v1 then
                    R = r58.Trunk;
                end;
                v3 = y;
                if e then
                    if (v1.Position - r58.Trunk.Position).Magnitude > 10 then
                        r111(r58);
                        r59 = true;
                        task.wait(.2);
                        return;
                    end;
                end;
                if not r59 then
                    if r111(r58) then
                        r28 = true;
                    end;
                end;
                v2 = r109(r58.Trunk);
                if v2 then
                    r105();
                end;
                v3 = v3;
                if v2 then
                    if tick() - r60 >= r61 then
                        if t[L[13]]() then
                            r61 = tick();
                        end;
                    end;
                else
                    if not r109(v4[z]) then
                        r28 = false;
                    end;
                    return;
                end; 
            end);
        else
            r59 = false;
        end;
        task.wait(.1); 
    end;
    return; 
end);
task.spawn(function(...)
    r65();
    while true do
        if r34 then
            pcall(function(...)
                v1 = r28.Character;
                if not v1 or not v1.FindFirstChild(v1, "HumanoidRootPart") then
                    r66("Status: No Character");
                    return;
                end;
                e = v1.HumanoidRootPart;
                v2 = {
                    r93()
                };
                y = v2[3];
                R = v2[2];
                U = v2[4];
                if not r93() then
                    r66("Status: No Sack Found!");
                    return;
                end;
                v3 = y >= U;
                if v3 then
                    r66(string.format("Sack Full: [%d/%d]", y, U));
                    return;
                end;
                H = r26;
                z = r26;
                v4 = v3;
                v3 = v4;
                E = "ipairs";
                for O, l in ipairs({
                    H.FindFirstChild(H, "Items"),
                    z.FindFirstChild(z, "Map") and z.FindFirstChild(z, "Items")
                }) do
                    P = O;
                    if l then
                        for c, N in ipairs(l.GetChildren(l)) do
                            w = N.IsA(N, "Model");
                            if w then
                                r94(N.Name);
                            end;
                            if w then
                                V = r84(N);
                                if V then
                                    qE = 2616403215554;
                                    w = (v1.HumanoidRootPart.Position - V.Position).Magnitude;
                                    if w <= r35 then
                                        v4 = true;
                                        r66(string.format("Looting: %s (%.1fm)\nBag: %d/%d", N.Name, w, v2[3], v2[4]));
                                        qE = {
                                            r93()
                                        };
                                        Q = r93();
                                        Q = qE[2];
                                        if qE[3] >= qE[4] then
                                            return;
                                        else
                                            Y = r29;
                                            qE = Y.FindFirstChild(Y, "RemoteEvents");
                                            if qE then
                                                Y = qE.FindFirstChild(qE, "RequestStartDraggingItem");
                                                A = qE.FindFirstChild(qE, "RequestBagStoreItem");
                                                v = r16;
                                                X = qE.FindFirstChild(qE, "StopDraggingItem");
                                                if Y then
                                                    v = qE.FindFirstChild(qE, "RequestBagStoreItem");
                                                    I = v and X;
                                                    v3 = true;
                                                end;
                                                v3 = true;
                                                if Y then
                                                    Y.FireServer(Y, N);
                                                    task.wait(.1);
                                                    A.InvokeServer(A, r93(), N);
                                                    task.wait(.05);
                                                    X.FireServer(X, N);
                                                    task.wait(.05);
                                                    y = r92();
                                                    if y >= h then
                                                        return;
                                                    else
                                                    end;
                                                end;
                                            end;
                                            task.wait(r36);
                                        end;
                                    end;
                                end;
                            end; 
                        end;
                    end; 
                end;
                if not false then
                    r66(string.format("Scanning... [%d/%d]", y, U));
                end;
                return; 
            end);
        else
            r66("Status: Disabled");
        end;
        task.wait(r36); 
    end;
    return; 
end);
v2.CreateSection(v2, "Auto Cut Trees");
v2.CreateToggle(v2, {
    ["Name"] = "Auto Cut (Mobile Button)",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleAutoCut",
    ["Callback"] = function(arg1_20, ...)
        v1 = arg1_20;
        r57 = v1;
        if not v1 then
            r59 = false;
        end;
        return; 
    end
});
v2.CreateSlider(v2, {
    ["Name"] = "Swing Cooldown",
    ["Range"] = {
        .1,
        1
    },
    ["Increment"] = .05,
    ["Suffix"] = "Sec",
    ["CurrentValue"] = .4,
    ["Flag"] = "SliderSwingCooldown",
    ["Callback"] = function(arg1_21, ...)
        r61 = arg1_21;
        return; 
    end
});
v2.CreateSection(v2, "Auto Loot Settings");
v2.CreateToggle(v2, {
    ["Name"] = "Enable Auto Loot (Nearby)",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleAutoLoot",
    ["Callback"] = function(arg1_22, ...)
        r34 = arg1_22;
        return; 
    end
});
v2.CreateToggle(v2, {
    ["Name"] = "Show Auto Loot Debug Text",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleAutoLootDebug",
    ["Callback"] = function(arg1_23, ...)
        v1 = arg1_23;
        r64 = v1;
        if not v1 then
            r66("");
        end;
        return; 
    end
});
oX_8 = "Studs";
oX_10 = 50;
v2.CreateSlider(v2, {
    ["Name"] = "Auto Loot Distance",
    ["Range"] = {
        10,
        1000
    },
    ["Increment"] = 10,
    ["Suffix"] = oX_8,
    ["CurrentValue"] = oX_10,
    ["Flag"] = "SliderAutoLootDist",
    ["Callback"] = function(arg1_24, ...)
        r35 = arg1_24;
        return; 
    end
});
v2.CreateSection(v2, "Auto Loot Categories");
oX_4 = {
    pairs(r82)
};
oX_1 = oX_4[2];
yX = pairs(r82);
oX_2, oX_3 = yX(oX_1, oX_2);
while oX_4[3] do
    r112 = oX_2;
    oX_10 = r16;
    oX_8 = "Neutral";
    if r112 ~= oX_8 and (oX_8 and oX_10) then
        oX_10 = oX_5;
        v2.CreateToggle(v2, {
            ["Name"] = "Loot: " .. r112,
            ["CurrentValue"] = r37[r112] or false,
            ["Flag"] = "LootCat_" .. r112,
            ["Callback"] = function(arg1_25, ...)
                r37[r112] = arg1_25;
                return; 
            end
        });
    end; 
end;
D.CreateSection(D, "Auto Cut Trees");
D.CreateToggle(D, {
    ["Name"] = "Cut All Trees (Teleport & Spam)",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleCutTrees",
    ["Callback"] = function(arg1_26, ...)
        v1 = arg1_26;
        r53 = v1;
        if not v1 then
            
        end;
        return; 
    end
});
D.CreateDropdown(D, {
    ["Name"] = "Select Axe",
    ["Options"] = yE,
    ["CurrentOption"] = "Old Axe",
    ["Flag"] = "DropdownAxeSelect",
    ["Callback"] = function(arg1_27, ...)
        r54 = arg1_27[1];
        return; 
    end
});
D.CreateSlider(D, {
    ["Name"] = "Spam Speed",
    ["Range"] = {
        1,
        20
    },
    ["Increment"] = 1,
    ["Suffix"] = "Per Sec",
    ["CurrentValue"] = 5,
    ["Flag"] = "SliderCutSpeed",
    ["Callback"] = function(arg1_28, ...)
        r55 = arg1_28;
        return; 
    end
});
l.CreateSection(l, "Player ESP");
l.CreateToggle(l, {
    ["Name"] = "Enable Player ESP",
    ["CurrentValue"] = false,
    ["Flag"] = "TogglePlayerESP",
    ["Callback"] = function(arg1_29, ...)
        v1 = arg1_29;
        r39 = v1;
        if not v1 then
            for y, v2 in pairs(r67) do
                r69(y); 
            end;
        else
            U = r25;
            v2 = {
                U.GetPlayers(U)
            };
            for y, v2 in pairs(F(v2)) do
                U = y;
                if v2 ~= r28 then
                    r68(v2);
                end; 
            end;
            return;
        end; 
    end
});
l.CreateColorPicker(l, {
    ["Name"] = "Player ESP Color",
    ["Color"] = r40,
    ["Flag"] = "ColorPlayerESP",
    ["Callback"] = function(arg1_30, ...)
        v1 = arg1_30;
        r40 = v1;
        for y, v2 in pairs(r67) do
            U = y;
            if v2.Highlight then
                v4 = arg1_30;
                v2.Highlight.FillColor = v4;
                v2.Highlight.OutlineColor = v1;
            end;
            if v2.Label then
                v2.Label.TextColor3 = arg1_30;
            end; 
        end;
        return; 
    end
});
l.CreateSection(l, "Movement");
l.CreateToggle(l, {
    ["Name"] = "Enable Walk Speed",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleWalkSpeed",
    ["Callback"] = function(arg1_31, ...)
        r41 = arg1_31;
        r62();
        return; 
    end
});
l.CreateSlider(l, {
    ["Name"] = "Walk Speed Value",
    ["Range"] = {
        16,
        100
    },
    ["Increment"] = 1,
    ["Suffix"] = "Speed",
    ["CurrentValue"] = 16,
    ["Flag"] = "SliderWalkSpeed",
    ["Callback"] = function(arg1_32, ...)
        r42 = arg1_32;
        if r41 then
            r62();
        end;
        return; 
    end
});
l.CreateToggle(l, {
    ["Name"] = "Enable Jump Power",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleJumpPower",
    ["Callback"] = function(arg1_33, ...)
        r43 = arg1_33;
        r63();
        return; 
    end
});
l.CreateSlider(l, {
    ["Name"] = "Jump Power Value",
    ["Range"] = {
        50,
        300
    },
    ["Increment"] = 5,
    ["Suffix"] = "Jump",
    ["CurrentValue"] = 50,
    ["Flag"] = "SliderJumpPower",
    ["Callback"] = function(arg1_34, ...)
        r44 = arg1_34;
        if r43 then
            r63();
        end;
        return; 
    end
});
l.CreateSection(l, "Fly Settings (Mobile)");
l.CreateToggle(l, {
    ["Name"] = "Enable Fly",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleFly",
    ["Callback"] = function(arg1_35, ...)
        r50(arg1_35);
        return; 
    end
});
l.CreateSlider(l, {
    ["Name"] = "Fly Speed",
    ["Range"] = {
        10,
        150
    },
    ["Increment"] = 5,
    ["Suffix"] = "Studs/s",
    ["CurrentValue"] = 50,
    ["Flag"] = "SliderFlySpeed",
    ["Callback"] = function(arg1_36, ...)
        r46 = arg1_36;
        return; 
    end
});
local function RX(arg1_37, arg2_37, ...)
    v1 = arg1_37;
    r113 = arg2_37;
    v3 = r24;
    v3.CreateSection(v3, v1);
    v3 = r24;
    v3.CreateDropdown(v3, {
        ["Name"] = "Select " .. v1,
        ["Options"] = r82[r113],
        ["CurrentOption"] = r82[r113][1],
        ["Flag"] = "Dropdown_" .. r113,
        ["Callback"] = function(arg1_38, ...)
            r83[r113] = arg1_38[1];
            return; 
        end
    });
    v3 = r24;
    v3.CreateButton(v3, {
        ["Name"] = "Bring " .. v1,
        ["Callback"] = function(...)
            H = r83[r113] and nil;
            r86(r82[r113][1]);
            return; 
        end
    });
    return; 
end;
RX("Fuel (Coal, Oil, Gasoline)", "Fuel");
RX("Scrap & Parts", "Scrap");
RX("Weapons", "Weapons");
RX("Ammo & Bullets", "Ammo");
RX("Tools & Sacks", "Tools");
RX("Armor", "Armor");
RX("Warm Clothing", "Warm");
RX("Food & Plants", "Food");
RX("Materials & Loot", "Materials");
RX("Keys & Currency", "Keys");
RX("Neutral Entities", "Neutral");
RX("Passive Entities", "Passive");
RX("NPC Traders", "Traders");
RX("Missing Children", "Children");
yX = r24;
yX.CreateSection(yX, "Global Bring");
yX = r24;
yX.CreateButton(yX, {
    ["Name"] = "Bring All Items (With Priority)",
    ["Callback"] = function(...)
        r89();
        return; 
    end
});
v4.CreateSection(v4, "Hostile Entities");
v4.CreateToggle(v4, {
    ["Name"] = "ESP Hostile",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleHostile",
    ["Callback"] = function(arg1_39, ...)
        r74.Hostile = arg1_39;
        return; 
    end
});
v4.CreateColorPicker(v4, {
    ["Name"] = "Hostile Color",
    ["Color"] = r75.Hostile,
    ["Flag"] = "ColorHostile",
    ["Callback"] = function(arg1_40, ...)
        r75.Hostile = arg1_40;
        return; 
    end
});
O.CreateSection(O, "Neutral & Passive Entities");
O.CreateToggle(O, {
    ["Name"] = "ESP Neutral",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleNeutral",
    ["Callback"] = function(arg1_41, ...)
        r74.Neutral = arg1_41;
        return; 
    end
});
O.CreateToggle(O, {
    ["Name"] = "ESP Passive",
    ["CurrentValue"] = false,
    ["Flag"] = "TogglePassive",
    ["Callback"] = function(arg1_42, ...)
        r74.Passive = arg1_42;
        return; 
    end
});
O.CreateToggle(O, {
    ["Name"] = "ESP NPC Traders & Children",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleTraders",
    ["Callback"] = function(arg1_43, ...)
        v1 = arg1_43;
        e = arg1_43;
        r74.Traders = e;
        r74.Children = v1;
        return; 
    end
});
O.CreateColorPicker(O, {
    ["Name"] = "Neutral Color",
    ["Color"] = r75.Neutral,
    ["Flag"] = "ColorNeutral",
    ["Callback"] = function(arg1_44, ...)
        r75.Neutral = arg1_44;
        return; 
    end
});
O.CreateColorPicker(O, {
    ["Name"] = "Passive Color",
    ["Color"] = r75.Passive,
    ["Flag"] = "ColorPassive",
    ["Callback"] = function(arg1_45, ...)
        r75.Passive = arg1_45;
        return; 
    end
});
E.CreateSection(E, "Equipment & Loot");
E.CreateToggle(E, {
    ["Name"] = "ESP Tools & Sacks",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleTools",
    ["Callback"] = function(arg1_46, ...)
        r74.Tools = arg1_46;
        return; 
    end
});
E.CreateToggle(E, {
    ["Name"] = "ESP Weapons & Ranged",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleWeapons",
    ["Callback"] = function(arg1_47, ...)
        r74.Weapons = arg1_47;
        return; 
    end
});
E.CreateToggle(E, {
    ["Name"] = "ESP Armor",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleArmor",
    ["Callback"] = function(arg1_48, ...)
        r74.Armor = arg1_48;
        return; 
    end
});
E.CreateToggle(E, {
    ["Name"] = "ESP Warm Clothing",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleWarm",
    ["Callback"] = function(arg1_49, ...)
        r74.Warm = arg1_49;
        return; 
    end
});
E.CreateSection(E, "Resources");
E.CreateToggle(E, {
    ["Name"] = "ESP Fuel (Coal, Oil, Gasoline)",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleFuel",
    ["Callback"] = function(arg1_50, ...)
        r74.Fuel = arg1_50;
        return; 
    end
});
E.CreateToggle(E, {
    ["Name"] = "ESP Scrap & Parts",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleScrap",
    ["Callback"] = function(arg1_51, ...)
        r74.Scrap = arg1_51;
        return; 
    end
});
E.CreateToggle(E, {
    ["Name"] = "ESP Ammo & Bullets",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleAmmo",
    ["Callback"] = function(arg1_52, ...)
        r74.Ammo = arg1_52;
        return; 
    end
});
E.CreateSection(E, "Food & Materials");
E.CreateToggle(E, {
    ["Name"] = "ESP Food & Plants",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleFood",
    ["Callback"] = function(arg1_53, ...)
        r74.Food = arg1_53;
        return; 
    end
});
E.CreateToggle(E, {
    ["Name"] = "ESP Materials & Loot",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleMaterials",
    ["Callback"] = function(arg1_54, ...)
        r74.Materials = arg1_54;
        return; 
    end
});
E.CreateToggle(E, {
    ["Name"] = "ESP Keys & Currency",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleKeys",
    ["Callback"] = function(arg1_55, ...)
        r74.Keys = arg1_55;
        return; 
    end
});
E.CreateSection(E, "Trees");
E.CreateToggle(E, {
    ["Name"] = "ESP Small Trees",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleSmallTree",
    ["Callback"] = function(arg1_56, ...)
        v1 = arg1_56;
        r74.SmallTree = v1;
        if not v1 then
            e = r26;
            e = e.FindFirstChild(e, "Map") and e.FindFirstChild(e, "Foliage");
            if e then
                U = {
                    e.GetChildren(e)
                };
                for y, D in ipairs(F("ipairs")) do
                    v2 = y;
                    if D.Name == "Small Tree" then
                        v4 = D.FindFirstChild(D, "Trunk");
                        if v4 then
                            z = v4.FindFirstChild(v4, "GlobalESP_HL");
                            if z then
                                z.Destroy(z);
                            end;
                            O = v4.FindFirstChild(v4, "GlobalESP_Tag");
                            if O then
                                O.Destroy(O);
                            end;
                        end;
                    end; 
                end;
            end;
        end;
        return; 
    end
});
E.CreateToggle(E, {
    ["Name"] = "ESP Big Trees",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleBigTree",
    ["Callback"] = function(arg1_57, ...)
        v1 = arg1_57;
        r74.BigTree = v1;
        if not v1 then
            e = r26;
            e = e.FindFirstChild(e, "Map") and e.FindFirstChild(e, "Foliage");
            if e then
                U = {
                    e.GetChildren(e)
                };
                for y, D in ipairs(F("ipairs")) do
                    v2 = y;
                    if string.find(D.Name, "TreeBig") then
                        v4 = D.FindFirstChild(D, "Trunk");
                        if v4 then
                            z = v4.FindFirstChild(v4, "GlobalESP_HL");
                            if z then
                                z.Destroy(z);
                            end;
                            O = v4.FindFirstChild(v4, "GlobalESP_Tag");
                            if O then
                                O.Destroy(O);
                            end;
                        end;
                    end; 
                end;
            end;
        end;
        return; 
    end
});
E.CreateSection(E, "Chests");
E.CreateToggle(E, {
    ["Name"] = "ESP Chests",
    ["CurrentValue"] = false,
    ["Flag"] = "ToggleChest",
    ["Callback"] = function(arg1_58, ...)
        v1 = arg1_58;
        r74.Chest = v1;
        if not v1 then
            H = r26;
            y = r26;
            v3 = not v1;
            U = "ipairs";
            for y, D in ipairs({
                H.FindFirstChild(H, "Items"),
                y.FindFirstChild(y, "Map") and y.FindFirstChild(y, "Items")
            }) do
                v2 = y;
                if D then
                    for O, P in ipairs(D.GetChildren(D)) do
                        E = O;
                        if P.IsA(P, "Model") and r81[P.Name] then
                            l = P.FindFirstChild(P, "GlobalESP_HL");
                            if l then
                                l.Destroy(l);
                            end;
                            v5 = P.FindFirstChild(P, "GlobalESP_Tag");
                            if v5 then
                                v5.Destroy(v5);
                            end;
                        end; 
                    end;
                end; 
            end;
        end;
        return; 
    end
});
E.CreateColorPicker(E, {
    ["Name"] = "Chests Color",
    ["Color"] = r75.Chest,
    ["Flag"] = "ColorChest",
    ["Callback"] = function(arg1_59, ...)
        r75.Chest = arg1_59;
        return; 
    end
});
P.CreateSection(P, "General Settings");
P.CreateSlider(P, {
    ["Name"] = "Max Distance",
    ["Range"] = {
        50,
        2000
    },
    ["Increment"] = 50,
    ["Suffix"] = "Studs",
    ["CurrentValue"] = 500,
    ["Flag"] = "SliderMaxDistance",
    ["Callback"] = function(arg1_60, ...)
        r72 = arg1_60;
        return; 
    end
});
P.CreateToggle(P, {
    ["Name"] = "Show Item/Entity Name & Distance",
    ["CurrentValue"] = true,
    ["Flag"] = "ToggleShowText",
    ["Callback"] = function(arg1_61, ...)
        r73 = arg1_61;
        return; 
    end
});
return;
