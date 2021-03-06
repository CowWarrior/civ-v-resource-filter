-------------------------------------------------
-- Resource Icon Manager
-------------------------------------------------
include( "InstanceManager" );
include( "ResourceTooltipGenerator" );
include( "IconSupport" );

local g_ResourceManager = InstanceManager:new( "ResourceIcon", "Anchor", Controls.ResourceIconContainer );

local g_ResourceIconOffsetX = -30; -- this is in world space and corresponds to the top-left vertex of the hex
local g_ResourceIconOffsetY = 15;  -- this is in world space and corresponds to the top-left vertex of the hex
local g_ResourceIconOffsetZ = 0;   -- this is in world space and corresponds to the top-left vertex of the hex

local g_bHideResourceIcons = not OptionsManager.GetResourceOn();
local g_bIsStrategicView   = false;

local g_ActiveSet = {};
local g_PerPlayerResourceTables = {};

local g_gridWidth, _ = Map.GetGridSize();

-- **************************************************
-- * This table manages which resources are visible *
-- **************************************************
local bOnlyAntiquityIcons = false;
local bResourceVisibilityTable = {
	RESOURCE_ARTIFACTS = true,
	RESOURCE_HIDDEN_ARTIFACTS = true,
	RESOURCE_ALUMINUM = true,
	RESOURCE_COAL = true,
	RESOURCE_HORSE = true,
	RESOURCE_IRON = true,
	RESOURCE_OIL = true,
	RESOURCE_URANIUM = true,
	--BONUS
	RESOURCE_BANANA = true,
	RESOURCE_COW = true,
	RESOURCE_BISON = true,
	RESOURCE_WHEAT = true,
	RESOURCE_SHEEP = true,
	RESOURCE_DEER = true,
	RESOURCE_FISH = true,
	RESOURCE_STONE = true,
	--LUXURY
	RESOURCE_COTTON = true,
	RESOURCE_FUR = true,
	RESOURCE_DYE = true,
	RESOURCE_COPPER = true,
	RESOURCE_MARBLE = true,
	RESOURCE_JEWELRY = true,
	RESOURCE_NUTMEG = true,
	RESOURCE_CRAB = true,
	RESOURCE_CITRUS = true,
	RESOURCE_SPICES = true,
	RESOURCE_IVORY = true,
	RESOURCE_INCENSE = true,
	RESOURCE_GOLD = true,
	RESOURCE_PEARLS = true,
	RESOURCE_CLOVES = true,
	RESOURCE_SALT = true,
	RESOURCE_GEMS = true,
	RESOURCE_SUGAR = true,
	RESOURCE_SILK = true,
	RESOURCE_WINE = true,
	RESOURCE_SILVER = true,
	RESOURCE_TRUFFLES = true,
	RESOURCE_PORCELAIN = true,
	RESOURCE_PEPPER = true,
	RESOURCE_WHALE = true,
	RESOURCE_COCOA = true
};

local fResourceIndex = 0;

-- **************************************************************
-- * This function updates the visibility of specific resources *
-- **************************************************************
LuaEvents.ToggleShowResourceIcons.Add(
	function(sResourceName)
		if (bResourceVisibilityTable[sResourceName]) then
			bResourceVisibilityTable[sResourceName] = false;
		else
			bResourceVisibilityTable[sResourceName] = true;
		end
	end
);

LuaEvents.SetShowResourceIconsValue.Add(
	function(sResourceName, val)
		bResourceVisibilityTable[sResourceName] = val;
	end
);


-- ******************************************************
-- * This function updates refreshes the resource icons *
-- ******************************************************
LuaEvents.RefreshResourceIcons.Add(
	function()
		-- Reset the filter index
		fResourceIndex = 0;

		-- Reset the resource data.
		for index, pResource in pairs( g_ActiveSet ) do
			DestroyResource( index );
   		end

		-- Rebuild with the current player's stored data.
		local iActivePlayer = Game.GetActivePlayer();		
		local playerResourceTable = g_PerPlayerResourceTables[ iActivePlayer ];
		if (playerResourceTable ~= nil) then
			for index, resource in pairs( playerResourceTable ) do
				local gridX, gridY = GridFromIndex(index);
				BuildResource( index, gridX, gridY, resource );
   			end
   		end
	end
);


-- This function determines if a resource is visible
function IsResourceVisisble(resourceType)
	if (g_bHideResourceIcons or bResourceVisibilityTable[resourceType] == false) then
		return false;
	else
		return true;
	end
end

-- ******************************************************************
--- * This function looks at the next visible resource *
-- ******************************************************************
LuaEvents.SpotNextResourcePlot.Add(
	function ()
		local iActivePlayer = Game.GetActivePlayer();		
		local playerResourceTable = g_PerPlayerResourceTables[ iActivePlayer ];
		local i = 0;
		local pActivePlot = Map.GetPlot(1, 1);

		-- iterate through all resources.
		if (playerResourceTable ~= nil) then
			for index, resource in pairs( playerResourceTable ) do

				local resourceInfo = GameInfo.Resources[resource];

				if (IsResourceVisisble(resourceInfo.Type) == true) then
					if (i == fResourceIndex) then
						local gridX, gridY = GridFromIndex(index);
						pActivePlot = Map.GetPlot( gridX, gridY );
					
						--debug
						--print("Found plot #" .. fResourceIndex .. " (" .. gridX .. ", " .. gridY .. ")");
					
					
						UI.LookAt(pActivePlot);
						--dont break, I need the total table length
					end

					i  = i + 1;
				end
   			end
   		end

		--check if that was the last item in table
		if (i == fResourceIndex) then
			--at end, get back to start
			fResourceIndex = 0;
		else
			--next resource
			fResourceIndex = fResourceIndex + 1;
		end

		return pActivePlot;
	end
);


------------------------------------------------------------------
------------------------------------------------------------------
function IndexFromGrid( x, y )
    return x + (y * g_gridWidth);
end

------------------------------------------------------------------
------------------------------------------------------------------
function GridFromIndex( index )
	local y = math.floor(index / g_gridWidth);
    return (index - (y * g_gridWidth)), y;
end

------------------------------------------------------------------
------------------------------------------------------------------
function DestroyResource( index )
    local instance = g_ActiveSet[ index ];
    if ( instance ~= nil ) then
		g_ResourceManager:ReleaseInstance( instance );
        g_ActiveSet[ index ] = nil;
	end
end

-------------------------------------------------
-------------------------------------------------
function BuildResource( index, gridX, gridY, resourceType )
	DestroyResource(index);

	local instance = g_ResourceManager:GetInstance();
    	
	g_ActiveSet[ index ] = instance;
		
	local x, y, z = GridToWorld( gridX, gridY );
	instance.Anchor:SetWorldPositionVal( x + g_ResourceIconOffsetX,
										 y + g_ResourceIconOffsetY,
										 z + g_ResourceIconOffsetZ );
										 										 
	local resourceInfo = GameInfo.Resources[resourceType];

	--if (g_bHideResourceIcons or bResourceVisibilityTable[resourceInfo.Type] == false) then
	if (IsResourceVisisble(resourceInfo.Type) == false) then
		DestroyResource(index);
		return;
	end

	IconHookup(resourceInfo.PortraitIndex, 64, resourceInfo.IconAtlas, instance.ResourceIcon);
	
	-- Tool Tip
	local plot = Map.GetPlot( gridX, gridY );
	local strToolTip = GenerateResourceToolTip(plot);
	if( strToolTip ~= nil ) then
		instance.ResourceIcon:SetToolTipString(strToolTip);
	end
end

-------------------------------------------------
-------------------------------------------------
function OnResourceAdded( hexPosX, hexPosY, ImprovementType, ResourceType )
	if ResourceType > -1 then
		local gridX, gridY  = ToGridFromHex( hexPosX, hexPosY );
        local plot = Map.GetPlot( gridX, gridY );

		-- Because we will get this message at load time as well as while the game is
		-- in progress, if this is a hotseat game, add the resource icons for all players
		-- This should be safe to do for a game with a single human, but its a bit slower so we'll keep it separate.
		if ( PreGame.IsHotSeatGame() ) then
			local bIsBuilt = false;
			for iPlayerID = 0, GameDefines.MAX_PLAYERS do
				local pPlayer = Players[iPlayerID];
				if( pPlayer ~= nil and pPlayer:IsHuman() ) then
					if( plot:IsRevealed( pPlayer:GetTeam(), false ) ) then
						-- Build the icon
						local index = IndexFromGrid( gridX, gridY );
						-- Only need to build the resource if the active team can see this
						if( not bIsBuilt and pPlayer:GetTeam() == Game.GetActiveTeam() ) then
							BuildResource( index, gridX, gridY, ResourceType );
							bIsBuilt = true;
						end
						
						-- Store the resource for the player
						if (g_PerPlayerResourceTables[ iPlayerID ] == nil) then
							g_PerPlayerResourceTables[ iPlayerID ] = {};
						end
						
						local playerResourceTable = g_PerPlayerResourceTables[ iPlayerID ];		
						playerResourceTable[index] = ResourceType;
					end
				end
			end
		else
			if( not plot:IsRevealed( Game.GetActiveTeam(), false ) ) then
				return;
			end

			-- Build the icon
			local index = IndexFromGrid( gridX, gridY );
			BuildResource( index, gridX, gridY, ResourceType );
			
			-- Store the resource for the current player
			local iPlayerID = Game.GetActivePlayer();		
			if (g_PerPlayerResourceTables[ iPlayerID ] == nil) then
				g_PerPlayerResourceTables[ iPlayerID ] = {};
			end
			
			local playerResourceTable = g_PerPlayerResourceTables[ iPlayerID ];		
			playerResourceTable[index] = ResourceType;			
		end
    end
end
Events.SerialEventRawResourceIconCreated.Add( OnResourceAdded )

-------------------------------------------------
-------------------------------------------------
function OnResourceRemoved( hexPosX, hexPosY )
	local gridX, gridY  = ToGridFromHex( hexPosX, hexPosY );
    local plot = Map.GetPlot( gridX, gridY );

	if( not plot:IsRevealed( Game.GetActiveTeam(), false ) ) then
		return;
	end

	-- Remove the icon
	local index = IndexFromGrid( gridX, gridY );
	DestroyResource(index);
	
	-- Remove the resource from the current player
	local iPlayerID = Game.GetActivePlayer();		
	
	local playerResourceTable = g_PerPlayerResourceTables[ iPlayerID ];		
	if (g_PerPlayerResourceTables[ iPlayerID ] ~= nil) then
		playerResourceTable[index] = nil;
	end
		
end
Events.SerialEventRawResourceIconDestroyed.Add( OnResourceRemoved )

-------------------------------------------------
-------------------------------------------------
function OnRequestYieldDisplay( type )

    if( type == YieldDisplayTypes.USER_ALL_RESOURCE_ON ) then
        g_bHideResourceIcons = false;
    elseif( type == YieldDisplayTypes.USER_ALL_RESOURCE_OFF ) then
        g_bHideResourceIcons = true;
    end
    
    if( not g_bIsStrategicView ) then
        Controls.ResourceIconContainer:SetHide( g_bHideResourceIcons );
    end
end
Events.RequestYieldDisplay.Add( OnRequestYieldDisplay );


-------------------------------------------------
-------------------------------------------------
function OnStrategicViewStateChanged( bStrategicView )
    g_bIsStrategicView = bStrategicView;
    if( bStrategicView ) then
        Controls.ResourceIconContainer:SetHide( true );
    else
        Controls.ResourceIconContainer:SetHide( g_bHideResourceIcons );
    end
end
Events.StrategicViewStateChanged.Add(OnStrategicViewStateChanged);

----------------------------------------------------------------
-- 'Active' (local human) player has changed
----------------------------------------------------------------
function OnActivePlayerChanged(iActivePlayer, iPrevActivePlayer)
	
	-- Reset the resource data.
	for index, pResource in pairs( g_ActiveSet ) do
        DestroyResource( index );
   	end

	-- Rebuild with the current player's stored data.
	local playerResourceTable = g_PerPlayerResourceTables[ iActivePlayer ];
	if (playerResourceTable ~= nil) then
		for index, resource in pairs( playerResourceTable ) do
			local gridX, gridY = GridFromIndex(index);
			BuildResource( index, gridX, gridY, resource );
   		end
   	end
		
end
Events.GameplaySetActivePlayer.Add(OnActivePlayerChanged);
