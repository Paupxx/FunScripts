-- The Abyss 1.0
local Abyss = {
	Range = 12,
	IsAmp = true,
	ReaperMode = true, -- Gigachad Sonning mode
	
	HookSettings = {
	    UseFireHook = true, -- Used for grounds v3
	    CanTouchHook = true, -- Uses a hookmetamethod for CanTouch
	},
	TouchSettings = {
		DefaultPart = "Left Arm",
	},
	Keys = {
		["AmpToggle"] = "r",
		["RangeUp"] = "e",
		["RangeDown"] = "q",
		["Reaper Mode"] = "f",
	}
}
local NotificationStrings = {
    "rbxassetid://13244740328",
}
local VisualizerEffect = {
    ["Scourge"] = true,
    ["Throw Reaper"] = true,
}

local AllowedParts = {}


local function Create(Object, Properties)
    local ObjectCreated = Instance.new(Object)
    for i,v in next, Properties do
        ObjectCreated[i] = v
    end
    return ObjectCreated
end

local Visualizer = Instance.new('Part')
Visualizer.CanTouch = false
Visualizer.CanQuery = false
Visualizer.CanCollide = false
Visualizer.Anchored = false
Visualizer.Shape = Enum.PartType.Ball
Visualizer.BottomSurface = Enum.SurfaceType.Smooth
Visualizer.TopSurface = Enum.SurfaceType.Smooth
Visualizer.Transparency = 0.9
Visualizer.Color = Color3.fromRGB(0,0,0)
if syn then
	syn.protect_gui(Visualizer)
elseif identifyexecutor and identifyexecutor():find("ScriptWare") then
	addchildinternal(game:GetService('Workspace'), Visualizer)
end
table.insert(AllowedParts, Visualizer)
Visualizer.Parent = game:GetService('Workspace')

local VisualizerSounds = {
    Slurp = Create("Sound", {
		LoopRegion = NumberRange.new(0,60000);
		Looped = false;
		Name = "Slurp";
		PlayOnRemove = false;
		PlaybackRegion = NumberRange.new(0,60000);
		PlaybackRegionsEnabled = false;
		PlaybackSpeed = 1;
		Playing = false;
		RollOffMaxDistance = 10000;
		RollOffMinDistance = 1;
		RollOffMode = Enum.RollOffMode.Inverse;
		SoundId = "rbxassetid://2878681938";
		TimePosition = 0;
		Volume = 10;
		Parent = Visualizer;
	});
	ChorusSoundEffect = Create("ChorusSoundEffect", {
		Depth = 0.5;
		Enabled = true;
		Mix = 0.5;
		Name = "ChorusSoundEffect";
		Priority = 0;
		Rate = 0.5; 
		Parent = Slurp
	});
	EchoSoundEffect = Create("EchoSoundEffect", {
		Delay = 0.20000000298023224;
		DryLevel = 0;
		Enabled = true;
		Feedback = 0.5;
		Name = "EchoSoundEffect";
		Priority = 0;
		WetLevel = 0; 
		Parent = Slurp
	});
		
	Activate = Create("Sound", {
		LoopRegion = NumberRange.new(0,60000);
		Looped = false;
		Name = "Activate";
		PlayOnRemove = false;
		PlaybackRegion = NumberRange.new(0,60000);
		PlaybackRegionsEnabled = false;
		PlaybackSpeed = 0.800000011920929;
		Playing = false;
		RollOffMaxDistance = 10000;
		RollOffMinDistance = 10;
		RollOffMode = Enum.RollOffMode.Inverse;
		SoundId = "rbxassetid://157241604";
		TimePosition = 0;
		Volume = 10; 
		Parent = Visualizer;
	});
		ChorusSoundEffect = Create("ChorusSoundEffect", {
		Depth = 0.15000000596046448;
		Enabled = true;
		Mix = 0.5;
		Name = "ChorusSoundEffect";
		Priority = 0;
		Rate = 0.5; 
		Parent = Activate;
	});
	ReverbSoundEffect = Create("ReverbSoundEffect", {
		DecayTime = 0.5;
		Density = 1;
		Diffusion = 1;
		DryLevel = -6;
		Enabled = true;
		Name = "ReverbSoundEffect";
		Priority = 0;
		WetLevel = 0; 
		Parent = Activate;
	});
	EchoSoundEffect = Create("EchoSoundEffect", {
		Delay = 0.20000000298023224;
		DryLevel = 0;
		Enabled = true;
		Feedback = 0.5;
		Name = "EchoSoundEffect";
		Priority = 0;
		WetLevel = 0;
		Parent = Activate;
	});
	Scourge = Create("Sound", {
		LoopRegion = NumberRange.new(0,60000);
		Looped = false;
		Name = "Scourge";
		PlayOnRemove = false;
		PlaybackRegion = NumberRange.new(0,60000);
		PlaybackRegionsEnabled = false;
		PlaybackSpeed = 1;
		Playing = false;
		RollOffMaxDistance = 10000;
		RollOffMinDistance = 10;
		RollOffMode = Enum.RollOffMode.Inverse;
		SoundId = "rbxassetid://4953079733";
		TimePosition = 0;
		Volume = 10;
		Parent = Visualizer;
	});
}

if VisualizerEffect["Scourge"] and Abyss.ReaperMode then
    if game:GetService('Players').LocalPlayer.Character then
        local TargetPart = Visualizer
        if TargetPart then
            local FirstAttachment = Create('Attachment', {
                Parent = TargetPart
            })
            local RingFirst = Create("ParticleEmitter", {
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(0,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(0,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Bottom;
        		Enabled = false;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.4000000059604645,0.6000000238418579);
        		LightEmission = 0;
        		LightInfluence = 1;
        		LockedToPart = true;
        		Name = "Ring";
        		Orientation = Enum.ParticleOrientation.FacingCamera;
        		Rate = 4;
        		RotSpeed = NumberRange.new(0,0);
        		Rotation = NumberRange.new(0,0);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0.125,0);
        			NumberSequenceKeypoint.new(1,2,0);
        		};
        		Speed = NumberRange.new(0,0);
        		SpreadAngle = Vector2.new(0,0);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "http://www.roblox.com/asset/?id=294737298";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,1,0);
        		};
        		Enabled = true;
        		VelocityInheritance = 0;
        		ZOffset = 0; 
        		Parent = FirstAttachment
        	})
        	
        	-- || PART 2 OF EFFECT
        	
        	local SecondAttachment = Create("Attachment", {
        	    Parent = TargetPart
        	})
        	
        	local FirstRing  = Create("ParticleEmitter", {
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(0,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(0,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Bottom;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(2,2);
        		LightEmission = 0;
        		LightInfluence = 1;
        		LockedToPart = true;
        		Name = "Ring";
        		Orientation = Enum.ParticleOrientation.FacingCamera;
        		Rate = 4;
        		RotSpeed = NumberRange.new(0,0);
        		Rotation = NumberRange.new(0,0);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0.125,0);
        			NumberSequenceKeypoint.new(0.49713000655174255,1.6875,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Speed = NumberRange.new(0,0);
        		SpreadAngle = Vector2.new(0,0);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "http://www.roblox.com/asset/?id=294737298";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,1,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 0; 
        	})
        	local tw  = Create("ParticleEmitter", {
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		 
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(0,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(0,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Front;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.30000001192092896,0.30000001192092896);
        		LightEmission = 0;
        		LightInfluence = 0;
        		LockedToPart = true;
        		Name = "Layer3";
        		Orientation = Enum.ParticleOrientation.FacingCamera;
        		Rate = 100;
        		RotSpeed = NumberRange.new(-360,360);
        		Rotation = NumberRange.new(-360,360);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.04133180156350136,1.75,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Speed = NumberRange.new(2,2);
        		SpreadAngle = Vector2.new(-100,100);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "http://www.roblox.com/asset/?id=1746891745";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.5154989957809448,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 0.10000000149011612; 
        	})
        	local te  = Create("ParticleEmitter", {
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		 
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(0,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(0,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Front;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.30000001192092896,0.30000001192092896);
        		LightEmission = 0;
        		LightInfluence = 0;
        		LockedToPart = true;
        		Name = "Center";
        		Orientation = Enum.ParticleOrientation.FacingCamera;
        		Rate = 100;
        		RotSpeed = NumberRange.new(-360,360);
        		Rotation = NumberRange.new(-360,360);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.04707229882478714,0.5,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Speed = NumberRange.new(2,2);
        		SpreadAngle = Vector2.new(-100,100);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "http://www.roblox.com/asset/?id=1746891745";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.5154989957809448,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 0.30000001192092896; 
        	})
        	local tr  = Create("ParticleEmitter", {
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		 
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(1,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(1,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Front;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.30000001192092896,0.30000001192092896);
        		LightEmission = 1;
        		LightInfluence = 0;
        		LockedToPart = true;
        		Name = "ParticleEmitter";
        		Orientation = Enum.ParticleOrientation.FacingCamera;
        		Rate = 100;
        		RotSpeed = NumberRange.new(-360,360);
        		Rotation = NumberRange.new(-360,360);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.04707229882478714,1,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Speed = NumberRange.new(2,2);
        		SpreadAngle = Vector2.new(-100,100);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "http://www.roblox.com/asset/?id=1746891745";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.5154989957809448,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 0.20000000298023224; 
        	})
        	local tt  = Create("ParticleEmitter", {
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		 
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(1,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(1,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Front;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.30000001192092896,0.30000001192092896);
        		LightEmission = 1;
        		LightInfluence = 0;
        		LockedToPart = true;
        		Name = "Layer2";
        		Orientation = Enum.ParticleOrientation.FacingCamera;
        		Rate = 100;
        		RotSpeed = NumberRange.new(-360,360);
        		Rotation = NumberRange.new(-360,360);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.04707229882478714,1,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Speed = NumberRange.new(2,2);
        		SpreadAngle = Vector2.new(-100,100);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "http://www.roblox.com/asset/?id=1746891745";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.5154989957809448,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 0.20000000298023224; 
        	})
        	local ty  = Create("ParticleEmitter", {
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		 
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(1,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(1,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Front;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.5,0.5);
        		LightEmission = 1;
        		LightInfluence = 1;
        		LockedToPart = true;
        		Name = "Red";
        		Orientation = Enum.ParticleOrientation.FacingCamera;
        		Rate = 100;
        		RotSpeed = NumberRange.new(180,180);
        		Rotation = NumberRange.new(0,360);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,1.125,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Speed = NumberRange.new(0,0);
        		SpreadAngle = Vector2.new(0,0);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "rbxassetid://1370451315";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,1,0);
        			NumberSequenceKeypoint.new(0.028702599927783012,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 1; 
        	})
        	local tu  = Create("ParticleEmitter", {
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		 
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(0,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(0,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Front;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.5,0.5);
        		LightEmission = 0.5;
        		LightInfluence = 1;
        		LockedToPart = true;
        		Name = "Black";
        		Orientation = Enum.ParticleOrientation.FacingCamera;
        		Rate = 100;
        		RotSpeed = NumberRange.new(180,180);
        		Rotation = NumberRange.new(0,360);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,1.6875,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Speed = NumberRange.new(0,0);
        		SpreadAngle = Vector2.new(0,0);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "rbxassetid://1370451315";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,1,0);
        			NumberSequenceKeypoint.new(0.028702599927783012,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 1; 
        	})
        	FirstRing.Parent = SecondAttachment
        	tw.Parent = SecondAttachment
        	te.Parent = SecondAttachment
        	tr.Parent = SecondAttachment
        	tt.Parent = SecondAttachment
        	ty.Parent = SecondAttachment
        	tu.Parent = SecondAttachment
        	FirstRing.Enabled = true
        	tw.Enabled = true
        	te.Enabled = true
        	tr.Enabled = true
        	tt.Enabled = true
        	ty.Enabled = true
        	tu.Enabled = true
        	
        	local ReaperAttachment2 = Create("Attachment", {
                Name = "2";
            	Axis = Vector3.new(-0.3907182514667511,0,0.9205104112625122);
            })
        
            local FirstReaperAttachment = Create('Attachment', {
                Name = "Attach1";
                Axis = Vector3.new(0.7547081112861633,0,-0.6560608148574829);
            })
        
            local BlackBeam2 = Create("Beam", {
        		Attachment0 = FirstReaperAttachment;
        		Attachment1 = ReaperAttachment2;
        		Brightness = 1;
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(0,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(0,0,0) );
        		};
        		CurveSize0 = 6;
        		CurveSize1 = -6;
        		Enabled = true;
        		FaceCamera = true;
        		LightEmission = 0.20000000298023224;
        		LightInfluence = 1;
        		Name = "BlackBeam";
        		Segments = 10;
        		Texture = "rbxassetid://6013211233";
        		TextureLength = 0.5;
        		TextureMode = Enum.TextureMode.Stretch;
        		TextureSpeed = 1.2999999523162842;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,1,0);
        			NumberSequenceKeypoint.new(0.11530900001525879,0.6000000238418579,0);
        			NumberSequenceKeypoint.new(0.3501720130443573,0.41874998807907104,0);
        			NumberSequenceKeypoint.new(0.8668199777603149,0.4437499940395355,0);
        			NumberSequenceKeypoint.new(1,0.44999998807907104,0);
        		};
        		Width0 = 3;
        		Width1 = 0;
        		ZOffset = -0.20000000298023224; 
        	})
        	local RedBeam2 = Create("Beam", {
        		Attachment0 = FirstReaperAttachment;
        		Attachment1 = ReaperAttachment2;
        		Brightness = 1;
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(1,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(1,0,0) );
        		};
        		CurveSize0 = 6;
        		CurveSize1 = -6;
        		Enabled = true;
        		FaceCamera = true;
        		LightEmission = 1;
        		LightInfluence = 0;
        		Name = "RedBeam";
        		Segments = 10;
        		Texture = "rbxassetid://6013211233";
        		TextureLength = 0.5;
        		TextureMode = Enum.TextureMode.Stretch;
        		TextureSpeed = 1.2999999523162842;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,1,0);
        			NumberSequenceKeypoint.new(0.11530900001525879,0.6000000238418579,0);
        			NumberSequenceKeypoint.new(0.33420199155807495,0.21875,0);
        			NumberSequenceKeypoint.new(0.8488600254058838,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Width0 = 3;
        		Width1 = 0;
        		ZOffset = -0.10000000149011612; 
        	})
        	BlackBeam2.Parent = Visualizer
        	RedBeam2.Parent = Visualizer
        	
        	local CircleAttachment = Create("Attachment", {
        	    
        	})
        	local RedCircle = Create("ParticleEmitter", {
        	    Parent = CircleAttachment;
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(1,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(1,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Top;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.75,0.75);
        		LightEmission = 1;
        		LightInfluence = 1;
        		LockedToPart = true;
        		Name = "23423423";
        		Orientation = Enum.ParticleOrientation.VelocityPerpendicular;
        		Rate = 1;
        		RotSpeed = NumberRange.new(720,720);
        		Rotation = NumberRange.new(0,0);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.6669999957084656,14.58,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Speed = NumberRange.new(0.009999999776482582,0.009999999776482582);
        		SpreadAngle = Vector2.new(0,0);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "rbxassetid://6994308970";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.7990819811820984,0,0);
        			NumberSequenceKeypoint.new(1,1,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 0; 
        	})
        	local BlackCircle = Create("ParticleEmitter", {
        	    Parent = CircleAttachment;
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(0,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(0,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Top;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.75,0.75);
        		LightEmission = 0;
        		LightInfluence = 1;
        		LockedToPart = true;
        		Name = "23423432";
        		Orientation = Enum.ParticleOrientation.VelocityPerpendicular;
        		Rate = 1;
        		RotSpeed = NumberRange.new(720,720);
        		Rotation = NumberRange.new(0,0);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.6679999828338623,1,0);
        			NumberSequenceKeypoint.new(1,15,0);
        		};
        		Speed = NumberRange.new(0.009999999776482582,0.009999999776482582);
        		SpreadAngle = Vector2.new(0,0);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "rbxassetid://6994308970";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.7990819811820984,0,0);
        			NumberSequenceKeypoint.new(1,1,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 0; 
        	})
        	local Ringtwo = Create("ParticleEmitter", {
        	    Parent = CircleAttachment;
        		Acceleration = Vector3.new(0,0,0);
        		Brightness = 1;
        		Color = ColorSequence.new {
        			ColorSequenceKeypoint.new( 0, Color3.new(1,0,0) );
        			ColorSequenceKeypoint.new( 1, Color3.new(1,0,0) );
        		};
        		Drag = 0;
        		EmissionDirection = Enum.NormalId.Top;
        		Enabled = true;
        		FlipbookFramerate = NumberRange.new(1,1);
        		FlipbookIncompatible = "Particle texture must be 1024 by 1024 to use flipbooks.";
        		FlipbookLayout = Enum.ParticleFlipbookLayout.None;
        		FlipbookMode = Enum.ParticleFlipbookMode.Loop;
        		FlipbookStartRandom = false;
        		Lifetime = NumberRange.new(0.5,0.5);
        		LightEmission = 1;
        		LightInfluence = 1;
        		LockedToPart = true;
        		Name = "Ring1231231";
        		Orientation = Enum.ParticleOrientation.VelocityPerpendicular;
        		Rate = 1;
        		RotSpeed = NumberRange.new(0,0);
        		Rotation = NumberRange.new(0,0);
        		Shape = Enum.ParticleEmitterShape.Box;
        		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
        		ShapePartial = 1;
        		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
        		Size = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,15,0);
        		};
        		Speed = NumberRange.new(0.009999999776482582,0.009999999776482582);
        		SpreadAngle = Vector2.new(0,0);
        		Squash = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(1,0,0);
        		};
        		Texture = "http://www.roblox.com/asset/?id=1804987887";
        		TimeScale = 1;
        		Transparency = NumberSequence.new {
        			NumberSequenceKeypoint.new(0,0,0);
        			NumberSequenceKeypoint.new(0.7990819811820984,0,0);
        			NumberSequenceKeypoint.new(1,1,0);
        		};
        		VelocityInheritance = 0;
        		ZOffset = 0; 
        	})

        	function GetLatestDeath(Player)
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local Humanoid = Character:FindFirstChildOfClass("Humanoid") or Character:WaitForChild("Humanoid")
                
                local function OnHealthChangedEvent(Humanoid)
                    Humanoid.HealthChanged:Connect(function(Health)
                        if (Health <= 0) or (Humanoid:GetState() == Enum.HumanoidStateType.Dead) then
                            local Tag = Humanoid:WaitForChild("creator", 2)
                            if Tag and Tag.Value == game:GetService('Players').LocalPlayer then
                                
                                if VisualizerEffect["Throw Reaper"] == false then
                                    local FirstAsset = ReaperAttachment2:Clone()
                                    local SecondAsset = FirstReaperAttachment:Clone()
                                    
                                    local FirstBeam = BlackBeam2:Clone()
                                    local SecondBeam = RedBeam2:Clone()
                                    
                                    FirstAsset.Parent = Visualizer
                                    SecondAsset.Parent = Character:FindFirstChild("HumanoidRootPart")
                                    
                                    FirstBeam.Parent = Visualizer
                                    SecondBeam.Parent = Visualizer
                                    
                                    FirstBeam.Attachment0 = FirstAsset
                                    FirstBeam.Attachment1 = SecondAsset
                                    
                                    SecondBeam.Attachment0 = FirstAsset
                                    SecondBeam.Attachment1 = SecondAsset
    
                                    VisualizerSounds.Slurp:Play()
                                    game:GetService('Debris'):AddItem(FirstAsset, 3)
                                    game:GetService('Debris'):AddItem(SecondAsset, 3)
                                    game:GetService('Debris'):AddItem(FirstBeam, 3)
                                    game:GetService('Debris'):AddItem(SecondBeam, 3)
                                elseif VisualizerEffect["Throw Reaper"] == true then
                                    local ClonedAttachment = FirstAttachment:Clone()
                                    ClonedAttachment.Parent = Visualizer
                                    local fa,fe,fr,ft,fy,fu = tw:Clone(),te:Clone(),tr:Clone(),tt:Clone(),ty:Clone(),tu:Clone()
                                    local NewRing = FirstRing:Clone()
                                    NewRing.Parent = ClonedAttachment
                                	fa.Parent = ClonedAttachment
                                	fe.Parent = ClonedAttachment
                                	fr.Parent = ClonedAttachment
                                	ft.Parent = ClonedAttachment
                                	fy.Parent = ClonedAttachment
                                	fu.Parent = ClonedAttachment
                                	NewRing.Enabled = true
                                	fa.Enabled = true
                                	fe.Enabled = true
                                	fr.Enabled = true
                                	ft.Enabled = true
                                	fy.Enabled = true
                                	fu.Enabled = true
                                	
                                	game:GetService("Debris"):AddItem(ClonedAttachment, 2.5)
                                	game:GetService("Debris"):AddItem(NewRing, 2.5)
                                	game:GetService("Debris"):AddItem(fa, 2.5)
                                	game:GetService("Debris"):AddItem(fe, 2.5)
                                	game:GetService("Debris"):AddItem(fr, 2.5)
                                	game:GetService("Debris"):AddItem(ft, 2.5)
                                	game:GetService("Debris"):AddItem(fy, 2.5)
                                	game:GetService("Debris"):AddItem(fu, 2.5)
                                	
                                	local FirstAsset = ReaperAttachment2:Clone()
                                    local SecondAsset = FirstReaperAttachment:Clone()
                                    
                                    local FirstBeam = BlackBeam2:Clone()
                                    local SecondBeam = RedBeam2:Clone()
                                    
                                    FirstAsset.Parent = Visualizer
                                    SecondAsset.Parent = Character:FindFirstChild("HumanoidRootPart")
                                    
                                    FirstBeam.Parent = Visualizer
                                    SecondBeam.Parent = Visualizer
                                    
                                    FirstBeam.Attachment0 = FirstAsset
                                    FirstBeam.Attachment1 = ClonedAttachment
                                    
                                    SecondBeam.Attachment0 = FirstAsset
                                    SecondBeam.Attachment1 = ClonedAttachment

                                    game:GetService('Debris'):AddItem(FirstAsset, 3)
                                    game:GetService('Debris'):AddItem(SecondAsset, 3)
                                    game:GetService('Debris'):AddItem(FirstBeam, 3)
                                    game:GetService('Debris'):AddItem(SecondBeam, 3)
                                    
                                	VisualizerSounds.Activate:Play()
                                	task.spawn(function()
                                    	for i = 1, 30 do
                                    	    local Tween = game:GetService('TweenService'):Create(ClonedAttachment, TweenInfo.new(1), {WorldCFrame = Character.Torso.CFrame + Vector3.new(0, 3, 0)})
                                    	    Tween:Play()
                                    	    
                                    	    if i > 5 and i <= 7 then
                                    	        VisualizerSounds.Slurp:Play()
                                    	    end
                                    	    if i == 5 then
                                                local raycastParams = RaycastParams.new()
                                                raycastParams.FilterDescendantsInstances = {Character}
                                                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                                                raycastParams.IgnoreWater = true
                                                local ray = workspace:Raycast(Character.HumanoidRootPart.Position, Vector3.new(0, -15, 0), raycastParams)
                                                if ray and ray.Instance then
                                                    VisualizerSounds.Scourge:Play()
                                                    print(ray, ray.Instance, ray.Instance.CFrame)
                                                    local newAttachment = CircleAttachment:Clone()
                                                    newAttachment.Name = "sus"
                                                    newAttachment.Parent = Character["HumanoidRootPart"]
                                                    newAttachment.WorldCFrame = Character["HumanoidRootPart"].CFrame + Vector3.new(0, -0.65, 0)
                                                    game:GetService('Debris'):AddItem(newAttachment, 2)
                                                end
                                                
                                                
                                    	    end
                                	        
                                	        
                                    	    task.wait(0.1)
                                    	end
                                	end)
                                end
                                
                            end
                            
                        end
                    end)
                    
                end
                OnHealthChangedEvent(Humanoid)
                Player.CharacterAdded:Connect(function(Char)
                    Character = Char
                    Humanoid = Character:WaitForChild("Humanoid") or Char:WaitForChild("Humanoid")
                    OnHealthChangedEvent(Humanoid)
                end)
                
            end
            
            for i,v in pairs(game:GetService('Players'):GetPlayers()) do
               GetLatestDeath(v) 
            end
            game:GetService('Players').PlayerAdded:Connect(function(p)
                GetLatestDeath(p)
            end)
            
        end
    end
end

-- Hook Preparation
local Blacklisted = {
    "CanTouch",
    "GetPartBoundsInBox",
    "GetPartBoundsInRadius",
    "GetTouchingParts",
}

if Abyss.HookSettings.UseFireHook then
    local ClonedBind = clonefunction(Instance.new("BindableEvent").Fire)
    local FireHookName; FireHookName = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
        if not checkcaller() and typeof(Self) == "Instance" then
            local NameMethod = getnamecallmethod()
            if (NameMethod == "fire") or (NameMethod == "Fire") then
                local Args = {...}
                for i,v in pairs(Args) do
                    if table.find(Blacklisted, tostring(v)) then
                       return Self.Fire(Self)
                    end
                end
            end
        end
        return FireHookName(Self, ...)
    end))
    local FireHookIndex; FireHookIndex = hookfunction(Instance.new("BindableEvent").Fire, newcclosure(function(Self, ...)
        if not checkcaller() then
            local Args = {...}
            for i,v in pairs(Args) do
                if table.find(Blacklisted, tostring(v)) then
                    return Self.Fire(Self)
                end
            end
        end
        return FireHookIndex(Self, ...)
    end))
end

-- Variables for hooks
local HookHandle = nil
local SpoofedParts = {}

if Abyss.HookSettings.CanTouchHook then
    local HookCan; HookCan = hookmetamethod(game, "__index", newcclosure(function(Self, Key)
        if not checkcaller() and typeof(Self) == "Instance" and typeof(Key) == "string" and (SpoofedParts[Self] or table.find(SpoofedParts, Self)) then
            local Split = string.split(tostring(Key), "\0")[1]
            if (Split == "canTouch") or (Split == "CanTouch") then
                return true
            end
        end
        return HookCan(Self, Key)
    end))
end

-- Hook Preparation
local OldPartBoundsInBox = clonefunction(workspace.GetPartBoundsInBox)
local OldPartBoundsInRadius = clonefunction(workspace.GetPartBoundsInRadius)

local OldBoxHook;
OldBoxHook = hookfunction(workspace.GetPartBoundsInBox, newcclosure(function(Self, ...)
	if not checkcaller() and HookHandle ~= nil and typeof(Self) == "Instance" then
		local Args = {...}
		if (Args[1] and typeof(Args[1]) == "CFrame" and Args[1] == HookHandle.CFrame) then
			if (Args[2] and typeof(Args[2])	== "Vector3") and Args[2] == HookHandle and (Args[2].X >= HookHandle.Size.X and Args[2].Y >= HookHandle.Size.Y and Args[2].Z >= HookHandle.Size.Z) then
				if (Args[3] and typeof(Args[3]) == "OverlapParams" and (Args[3].MaxParts == 0 or tonumber(Args[3].MaxParts) >= #SpoofedParts)) then
					local GetBox = OldPartBoundsInBox(workspace, HookHandle.CFrame, Args[2], Args[3]) or {}
					for i,v in pairs(SpoofedParts) do
						if not table.find(GetBox, v) then
							table.insert(GetBox, v)
						end
					end
					return GetBox
				end
			end
		end
		
	end
	return OldBoxHook(Self, ...)
end))

local OldRadiusHook;
OldRadiusHook = hookfunction(workspace.GetPartBoundsInRadius, newcclosure(function(Self, ...)
    if not checkcaller() and HookHandle ~= nil and typeof(Self) == "Instance" then
        local Args = {...}
        if (Args[1] and typeof(Args[1]) == "Vector3" and Args[1] == HookHandle.Position) then
           if (Args[2] and typeof(Args[2]) == "number" and Args[2] >= HookHandle.Size.Z) then
               if (Args[3] and typeof(Args[3]) == "OverlapParams" and (Args[3].MaxParts == 0 or Args[3].MaxParts >= #SpoofedParts)) then
                  local MaxPartsCheck = (Args[3] and Args[3].MaxParts)
                  
                  local GetRadius = OldPartBoundsInRadius(workspace, HookHandle.Position, Args[2], Args[3]) or {}
                  local BackupRadius = GetRadius
                  for i,v in pairs(SpoofedParts) do
                      if not table.find(GetRadius, v) then
                          table.insert(GetRadius, v)
                      end
                  end
                  if #GetRadius > MaxPartsCheck then
                      return BackupRadius
                  else
                      return GetRadius
                  end

               end
           end
        end
    end
    return OldRadiusHook(Self, ...)
end))


-- Meta hooks
local Namecall
Namecall = hookmetamethod(game, "__namecall", function(Self,...)
	if not checkcaller() and typeof(Self) == "Instance" and HookHandle ~= nil then
		local Args = {...}
		if HookHandle and (Self == workspace) and (getnamecallmethod() == "getPartBoundsInBox" or getnamecallmethod() == "GetPartBoundsInBox") then
			if (Args[2] and typeof(Args[2])	== "Vector3") and Args[2] == HookHandle and (Args[2].X >= HookHandle.Size.X and Args[2].Y >= HookHandle.Size.Y and Args[2].Z >= HookHandle.Size.Z) then
				if (Args[3] and typeof(Args[3]) == "OverlapParams" and (Args[3].MaxParts == 0 or tonumber(Args[3].MaxParts) >= #SpoofedParts)) then
        			
        			local GetBox = OldPartBoundsInBox(workspace, HookHandle.CFrame, Args[2], Args[3]) or {}
        			for i,v in pairs(SpoofedParts) do
        				if not table.find(GetBox, v) then
        					table.insert(GetBox, v)
        				end
        			end
        			return GetBox
        		end
			end
		end
		if HookHandle and (Self == workspace) and (getnamecallmethod() == "getPartBoundsInRadius" or getnamecallmethod() == "GetPartBoundsInRadius") then
           local MaxPartsCheck = (Args[3] and Args[3].MaxParts)
           local GetRadius = OldPartBoundsInRadius(workspace, HookHandle.Position, Args[2], Args[3]) or {}
           local BackupRadius = GetRadius
           for i,v in pairs(SpoofedParts) do
              if not table.find(GetRadius, v) then
                 table.insert(GetRadius, v)
              end
           end
           if #GetRadius > MaxPartsCheck then
               return BackupRadius
           else
               return GetRadius
           end
		end
		
	end
	return Namecall(Self,...)
end)

local Player = game:GetService('Players').LocalPlayer

local StarterUI = game:GetService("StarterGui")

Abyss.Notification = function(text)
    StarterUI:SetCore("SendNotification", {
        Title = "Abyss";
        Text = text;
        Duration = 2;
        Icon = ""
    })
end

local TouchSignals = {
    "Touched",
    "LocalSimulationTouched",
    "TouchEnded",
    "StoppedTouching",
}

local ConnectionStates = {}

Abyss.ProtectTouches = function(Handle)
    local InternalDisabled = 0
    for _,Signal in pairs(TouchSignals) do
        for _,Connection in pairs(getconnections(Handle[Signal])) do
           if not ConnectionStates[Connection] then
               ConnectionStates[Connection] = true
               Connection:Disable()
               task.delay(1, function()
                   Connection:Enable()
                   ConnectionStates[Connection] = false
               end)
           end
        end
    end
    return false
end


Abyss.CheckDistance = function(Handle, Part)
	return (Handle.CFrame.Position - Part.CFrame.Position).Magnitude
end

Abyss.GetCharacter = function()
	if Player.Character then
		return Player.Character
	end
	if Player.Character == nil then
		for i,v in pairs(workspace:GetChildren()) do
			if tostring(v) == tostring(Player) then
				return v
			end
		end
	end
	return nil
end

local WhitelistedParts = {
    "Head",
    "HumanoidRootPart",
    "Left Arm",
    "Left Leg",
    "Right Arm",
    "Right Leg",
    "Torso",
}

Abyss.Touched = function(...)
	local Args = {...}
	if (#Args<2 or typeof(Args) ~= "table") or (Abyss.GetCharacter() == nil) then
		return	
	end	
	local Handle = Args[1]
	if Handle and Handle:IsA('BasePart') then
		HookHandle = Handle -- Prepare for hooks
		local ExpectedPart = Args[2]
		if ExpectedPart then
			if (Abyss.CheckDistance(Handle, ExpectedPart) <= Abyss.Range) and (Abyss.CheckDistance(Handle, Abyss.GetCharacter()["Right Arm"]) <= 6) then
				if (Args[3] and Args[3] == true) then
					for i,v in pairs(ExpectedPart.Parent:GetChildren()) do
						if v:IsA('BasePart') and table.find(WhitelistedParts, tostring(v)) then
							if not table.find(SpoofedParts, v) then
								table.insert(SpoofedParts, v)
								
								Abyss.ProtectTouches(Handle)
								
								v.CanTouch = true
								firetouchinterest(Handle, v, 0)
								v.CanTouch = true
								firetouchinterest(Handle, v, 1)
								
						        task.delay(0.1, function()
						           table.remove(SpoofedParts, table.find(SpoofedParts, v))
        					   end)
							end
							
						end	
					end
				else
					if not table.find(SpoofedParts, ExpectedPart) then
						table.insert(SpoofedParts, ExpectedPart)
						
						Abyss.ProtectTouches(Handle) 
						
    					ExpectedPart.CanTouch = true
    					firetouchinterest(Handle, ExpectedPart, 0)
    					ExpectedPart.CanTouch = true
    					firetouchinterest(Handle, ExpectedPart, 1)
    					task.delay(0.1, function()
    						table.remove(SpoofedParts, table.find(SpoofedParts, ExpectedPart))
    					end)
						
					end
					
				end				
			end
		end
	end
end

game:GetService('RunService').RenderStepped:Connect(function()
	if Player and Player.Character then
		local Character = Player.Character
		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
		if Humanoid then
			if Humanoid.Health > 0 and Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
				local Tool = Character:FindFirstChildOfClass("Tool")
				if Tool then
					local Handle = Tool and Tool:FindFirstChild("Handle")
					if Handle then
						if Visualizer then
							Visualizer.CFrame = Handle.CFrame
							Visualizer.Size = Vector3.new(Abyss.Range, Abyss.Range, Abyss.Range)
						end
						for _,v in pairs(game:GetService('Players'):GetPlayers()) do
							if v ~= Player and v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
								local TargettedLimb = v.Character and v.Character[Abyss.TouchSettings.DefaultPart] 
								if TargettedLimb and Abyss.CheckDistance(Handle, TargettedLimb) <= Abyss.Range then
									Abyss.Touched(Handle, TargettedLimb, Abyss.IsAmp)
								end
							end
						end
						
					end
				end
			end
		end
	end
end)

Player.Character:WaitForChild("Humanoid").Died:Connect(function()
    table.clear(SpoofedParts)
end)
Player.CharacterAdded:Connect(function(c)
    c:WaitForChild("Humanoid").Died:Connect(function()
        table.clear(SpoofedParts)
    end)
end)



game:GetService('UserInputService').InputBegan:Connect(function(Key, Chat)
	if Chat then
		return
	end
	
	if Key.KeyCode == Enum.KeyCode[string.upper(Abyss.Keys.AmpToggle)] then
		Abyss.IsAmp = not Abyss.IsAmp
		Abyss.Notification("AMP State set to " .. tostring(Abyss.IsAmp))
	elseif Key.KeyCode == Enum.KeyCode[string.upper(Abyss.Keys.RangeUp)] then
		Abyss.Range = Abyss.Range + 1
		Abyss.Notification("Range set to " .. tostring(Abyss.Range))
	elseif Key.KeyCode == Enum.KeyCode[string.upper(Abyss.Keys.RangeDown)] then
		Abyss.Range = Abyss.Range - 1
		Abyss.Notification("Range set to " .. tostring(Abyss.Range))
	end
end)
