----------------------------------------------------------------        
----------------------------------------------------------------        
include( "InstanceManager" );

local g_LegendIM = InstanceManager:new( "LegendKey", "Item", Controls.LegendStack );
local g_Overlays = GetStrategicViewOverlays();
local g_IconModes = GetStrategicViewIconSettings();

-- *************************************************************
-- * New event managers 
-- *************************************************************

function OnShowAntiquityResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_ARTIFACTS");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_HIDDEN_ARTIFACTS");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowAntiquityResources:RegisterCheckHandler(OnShowAntiquityResourcesChecked);

function OnShowAluminiumResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_ALUMINIUM");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowAluminiumResources:RegisterCheckHandler(OnShowAluminiumResourcesChecked);

function OnShowCoalResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COAL");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowCoalResources:RegisterCheckHandler(OnShowCoalResourcesChecked);

function OnShowHorseResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_HORSE");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowHorseResources:RegisterCheckHandler(OnShowHorseResourcesChecked);

function OnShowIronResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_IRON");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowIronResources:RegisterCheckHandler(OnShowIronResourcesChecked);

function OnShowOilResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_OIL");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowOilResources:RegisterCheckHandler(OnShowOilResourcesChecked);

function OnShowUraniumResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_URANIUM");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowUraniumResources:RegisterCheckHandler(OnShowUraniumResourcesChecked);


-- **********************BONUS RESOURCES***********************************
function OnShowBonusResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_BANANA");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_CATTLE");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_BISON");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_WHEAT");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SHEEP");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_DEER");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_FISH");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_STONE");
	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
--Controls.ShowBonusResources:RegisterCheckHandler(OnShowBonusResourcesChecked);

function OnShowBananaResourceChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_BANANA");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowBananaResource:RegisterCheckHandler(OnShowBananaResourceChecked);

function OnShowCattleResourceChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_CATTLE");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowCattleResource:RegisterCheckHandler(OnShowCattleResourceChecked);

function OnShowBisonResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_BISON");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowBisonResources:RegisterCheckHandler(OnShowBisonResourcesChecked);

function OnShowFishResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_FISH");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowFishResources:RegisterCheckHandler(OnShowFishResourcesChecked);

function OnShowStoneResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_STONE");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowStoneResources:RegisterCheckHandler(OnShowStoneResourcesChecked);

function OnShowWheatResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_WHEAT");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowWheatResources:RegisterCheckHandler(OnShowWheatResourcesChecked);

function OnShowSheepResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SHEEP");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowSheepResources:RegisterCheckHandler(OnShowSheepResourcesChecked);

function OnShowDeerResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_DEER");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowDeerResources:RegisterCheckHandler(OnShowDeerResourcesChecked);

-- **********************LUXURY RESOURCES***********************************
--Note: must find a way to pass a parameter to event handler
function OnShowLuxuryResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COTTON");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_FURS");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_DYES");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COPPER");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_MARBLE");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_JEWELRY");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_NUTMEG");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_CRAB");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_CITRUS");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SPICES");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_IVORY");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_INCENSE");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_GOLD");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_PEARLS");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_CLOVES");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SALT");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_GEMS");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SUGAR");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SILK");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_WINE");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SILVER");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_TRUFFLES");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_PORCELAIN");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_PEPPER");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_WHALES");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COCOA");
	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
--Controls.ShowLuxuryResources:RegisterCheckHandler(OnShowLuxuryResourcesChecked);

function OnShowCottonResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COTTON");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowCottonResources:RegisterCheckHandler(OnShowCottonResourcesChecked);

function OnShowFursResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_FURS");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowFursResources:RegisterCheckHandler(OnShowFursResourcesChecked);

function OnShowDyesResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_DYES");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowDyesResources:RegisterCheckHandler(OnShowDyesResourcesChecked);

function OnShowCopperResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COPPER");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowCopperResources:RegisterCheckHandler(OnShowCopperResourcesChecked);

function OnShowMarbleResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_MARBLE");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowMarbleResources:RegisterCheckHandler(OnShowMarbleResourcesChecked);

function OnShowJewelryResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_JEWELRY");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowJewelryResources:RegisterCheckHandler(OnShowJewelryResourcesChecked);

function OnShowNutmegResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_NUTMEG");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowNutmegResources:RegisterCheckHandler(OnShowNutmegResourcesChecked);

function OnShowCrabResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_CRAB");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowCrabResources:RegisterCheckHandler(OnShowCrabResourcesChecked);

function OnShowCitrusResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_CITRUS");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowCitrusResources:RegisterCheckHandler(OnShowCitrusResourcesChecked);

function OnShowSpicesResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SPICES");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowSpicesResources:RegisterCheckHandler(OnShowSpicesResourcesChecked);

function OnShowIvoryResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_IVORY");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowIvoryResources:RegisterCheckHandler(OnShowIvoryResourcesChecked);

function OnShowIncenseResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_INCENSE");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowIncenseResources:RegisterCheckHandler(OnShowIncenseResourcesChecked);

function OnShowGoldResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_GOLD");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowGoldResources:RegisterCheckHandler(OnShowGoldResourcesChecked);

function OnShowPearlsResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_PEARLS");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowPearlsResources:RegisterCheckHandler(OnShowPearlsResourcesChecked);

function OnShowClovesResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_CLOVES");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowClovesResources:RegisterCheckHandler(OnShowClovesResourcesChecked);

function OnShowSaltResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SALT");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowSaltResources:RegisterCheckHandler(OnShowSaltResourcesChecked);

function OnShowGemsResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_GEMS");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowGemsResources:RegisterCheckHandler(OnShowGemsResourcesChecked);

function OnShowSugarResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SUGAR");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowSugarResources:RegisterCheckHandler(OnShowSugarResourcesChecked);

function OnShowSilkResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SILK");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowSilkResources:RegisterCheckHandler(OnShowSilkResourcesChecked);

function OnShowWineResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_WINE");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowWineResources:RegisterCheckHandler(OnShowWineResourcesChecked);

function OnShowSilverResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_SILVER");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowSilverResources:RegisterCheckHandler(OnShowSilverResourcesChecked);

function OnShowTrufflesResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_TRUFFLES");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowTrufflesResources:RegisterCheckHandler(OnShowTrufflesResourcesChecked);

function OnShowPorcelainResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_PORCELAIN");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowPorcelainResources:RegisterCheckHandler(OnShowPorcelainResourcesChecked);

function OnShowPepperResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_PEPPER");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowPepperResources:RegisterCheckHandler(OnShowPepperResourcesChecked);

function OnShowWhalesResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_WHALES");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowWhalesResources:RegisterCheckHandler(OnShowWhalesResourcesChecked);

function OnShowCocoaResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COCOA");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowCocoaResources:RegisterCheckHandler(OnShowCocoaResourcesChecked);

-- *************************************************************
-- * END New event managers 
-- *************************************************************

----------------------------------------------------------------        
----------------------------------------------------------------        
function OnMinimapInfo( uiHandle, width, height, paddingX )
    Controls.Minimap:SetTextureHandle( uiHandle );
    Controls.Minimap:SetSizeVal( width, height );
end
Events.MinimapTextureBroadcastEvent.Add( OnMinimapInfo );
UI:RequestMinimapBroadcast();

----------------------------------------------------------------        
----------------------------------------------------------------        
function OnMinimapClick( _, _, _, x, y )
    Events.MinimapClickedEvent( x, y );
end
Controls.Minimap:RegisterCallback( Mouse.eLClick, OnMinimapClick );

----------------------------------------------------------------        
----------------------------------------------------------------        
function OnStrategicView()
	local bIsObserver = PreGame.GetSlotStatus( Game.GetActivePlayer() ) == SlotStatus.SS_OBSERVER;
	if (bIsObserver) then
		-- Observer gets to toggle the world view completely off.
		local eViewType = GetGameViewRenderType();
		if (eViewType == GameViewTypes.GAMEVIEW_NONE) then
			SetGameViewRenderType(GameViewTypes.GAMEVIEW_STANDARD);			
		else
			if (eViewType == GameViewTypes.GAMEVIEW_STANDARD) then
				SetGameViewRenderType(GameViewTypes.GAMEVIEW_STRATEGIC);
			else
				SetGameViewRenderType(GameViewTypes.GAMEVIEW_NONE);
			end
		end
	else
		ToggleStrategicView();
	end		
end
Controls.StrategicViewButton:RegisterCallback( Mouse.eLClick, OnStrategicView );

----------------------------------------------------------------        
----------------------------------------------------------------        
function OnStrategicViewStateChanged(bStrategicView)
	if bStrategicView then
		Controls.ShowResources:SetDisabled( true );
		Controls.ShowResources:SetAlpha( 0.5 );
		Controls.StrategicViewButton:SetTexture( "assets/UI/Art/Icons/MainWorldButton.dds" );
		Controls.StrategicMO:SetTexture( "assets/UI/Art/Icons/MainWorldButton.dds" );
		Controls.StrategicHL:SetTexture( "assets/UI/Art/Icons/MainWorldButtonHL.dds" );
	else
		Controls.ShowGrid:SetCheck(OptionsManager.GetGridOn());
		Controls.ShowResources:SetDisabled( false );
		Controls.ShowResources:SetAlpha( 1.0 );
		Controls.StrategicViewButton:SetTexture( "assets/UI/Art/Icons/MainStrategicButton.dds" );
		Controls.StrategicMO:SetTexture( "assets/UI/Art/Icons/MainStrategicButton.dds" );
		Controls.StrategicHL:SetTexture( "assets/UI/Art/Icons/MainStrategicButtonHL.dds" );
	end

	SetLegend();
    UpdateOptionsPanel();
end
Events.StrategicViewStateChanged.Add( OnStrategicViewStateChanged );


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnMapOptions()	
	Controls.OptionsPanel:SetHide( not Controls.OptionsPanel:IsHidden() );
	Controls.SideStack:CalculateSize();
	Controls.SideStack:ReprocessAnchoring();
	
	SetLegend();
    UpdateOptionsPanel();
end
Controls.MapOptionsButton:RegisterCallback( Mouse.eLClick, OnMapOptions );


----------------------------------------------------------------        
----------------------------------------------------------------        
g_MapOptionDefaults = nil;
local g_PerPlayerMapOptions = {};
----------------------------------------------------------------    
-- Get the map option defaults from the options manager    
----------------------------------------------------------------        
function GetMapOptionDefaults()
	if (g_MapOptionDefaults == nil) then
		-- Pull in the current setting the first time through
		g_MapOptionDefaults = {};
		g_MapOptionDefaults.ShowTrade = OptionsManager.GetShowTradeOn();
		g_MapOptionDefaults.ShowGrid = OptionsManager.GetGridOn();
		g_MapOptionDefaults.ShowYield = OptionsManager.GetYieldOn();
		g_MapOptionDefaults.ShowResources = OptionsManager.GetResourceOn();
		g_MapOptionDefaults.HideTileRecommendations = OptionsManager.IsNoTileRecommendations();

		g_MapOptionDefaults.SVIconMode = 1;
		g_MapOptionDefaults.SVOverlayMode = 1;
		g_MapOptionDefaults.SVShowFeatures = true;
		g_MapOptionDefaults.SVShowFOW = true;
	end
	
	local mapOptions = {};
	for k, v in pairs(g_MapOptionDefaults) do mapOptions[k] = v; end 
	
	return mapOptions;
end

----------------------------------------------------------------    
-- Take the current options and apply them to the game
----------------------------------------------------------------        
function ApplyMapOptions(mapOptions)

	UI.SetGridVisibleMode( mapOptions.ShowGrid );
	UI.SetYieldVisibleMode( mapOptions.ShowYield );
	UI.SetResourceVisibleMode( mapOptions.ShowResources );
	Events.Event_ToggleTradeRouteDisplay(mapOptions.ShowTrade);
	
	LuaEvents.OnRecommendationCheckChanged(mapOptions.HideTileRecommendations);
	
	-- Because outside contexted will also want to access the settings, we have to push them back to the OptionsManager	
	if (PreGame.IsHotSeatGame()) then
		local bChanged = false;
		
		if (OptionsManager.GetGridOn() ~= mapOptions.ShowGrid) then
			OptionsManager.SetGridOn_Cached( mapOptions.ShowGrid );
			bChanged = true;
		end
		if (OptionsManager.GetShowTradeOn() ~= mapOptions.ShowTrade) then 
			OptionsManager.SetShowTradeOn_Cached( mapOptions.ShowTrade );
			bChanged = true;
		end
		if (OptionsManager.GetYieldOn() ~= mapOptions.ShowYield) then
			OptionsManager.SetYieldOn_Cached( mapOptions.ShowYield );
			bChanged = true;
		end
		if (OptionsManager.GetResourceOn() ~= mapOptions.ShowResources) then
			OptionsManager.SetResourceOn_Cached( mapOptions.ShowResources );
			bChanged = true;
		end
		if (OptionsManager.IsNoTileRecommendations() ~= mapOptions.HideTileRecommendations) then
			OptionsManager.SetNoTileRecommendations_Cached(mapOptions.HideTileRecommendations );
			bChanged = true;
		end
		-- We will tell the manager to not write them out
		if (bChanged) then 
			OptionsManager.CommitGameOptions(true);
		end
	end
	
	StrategicViewShowFeatures( mapOptions.SVShowFeatures );
	StrategicViewShowFogOfWar( mapOptions.SVShowFOW );
	SetStrategicViewIconSetting( mapOptions.SVIconMode ); 
	SetStrategicViewOverlay( mapOptions.SVOverlayMode ); 
end

----------------------------------------------------------------    
-- Store the current options to the specified player's slot
----------------------------------------------------------------        
function StoreMapOptions(iPlayer, mapOptions)
	g_PerPlayerMapOptions[iPlayer] = mapOptions;
end

----------------------------------------------------------------        
----------------------------------------------------------------        
function GetMapOptions(iPlayer)

	local mapOptions;
	
	-- Get the options from the local player cache
	if (g_PerPlayerMapOptions[iPlayer] == nil) then
		-- Initialize with the defaults
		mapOptions = GetMapOptionDefaults();			
		StoreMapOptions(iPlayer, mapOptions);
	else
		mapOptions = g_PerPlayerMapOptions[iPlayer];
	end
	
	return mapOptions;
end		

----------------------------------------------------------------        
----------------------------------------------------------------        
function UpdateOptionsPanel()
	
	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	
	Controls.ShowTrade:SetCheck( mapOptions.ShowTrade );
	Controls.ShowGrid:SetCheck( mapOptions.ShowGrid );
	Controls.ShowYield:SetCheck( mapOptions.ShowYield );
	Controls.ShowResources:SetCheck( mapOptions.ShowResources );
	Controls.HideRecommendation:SetCheck( mapOptions.HideTileRecommendations );
	Controls.StrategicStack:SetHide( not InStrategicView() );
	
	Controls.ShowFeatures:SetCheck( mapOptions.SVShowFeatures );
	Controls.ShowFogOfWar:SetCheck( mapOptions.SVShowFOW );	

   	Controls.OverlayDropDown:GetButton():SetText(Locale.ConvertTextKey( g_Overlays[mapOptions.SVOverlayMode] ));
	SetLegend(mapOptions.SVOverlayMode);
	
	Controls.IconDropDown:GetButton():SetText( Locale.ConvertTextKey( g_IconModes[mapOptions.SVIconMode] ));
	
	Controls.StrategicStack:CalculateSize();
	Controls.MainStack:CalculateSize();
	Controls.OptionsPanel:DoAutoSize();
	
	Controls.SideStack:CalculateSize();
	Controls.SideStack:ReprocessAnchoring();
end
Events.GameOptionsChanged.Add(UpdateOptionsPanel);
	
----------------------------------------------------------------        
----------------------------------------------------------------        
function PopulateOverlayPulldown( pullDown )

	for i, text in pairs( g_Overlays ) do
	    controlTable = {};
        pullDown:BuildEntry( "InstanceOne", controlTable );

        controlTable.Button:SetVoid1( i );
        controlTable.Button:SetText( Locale.ConvertTextKey( text ) );
   	end
   	
   	Controls.OverlayDropDown:GetButton():SetText(Locale.ConvertTextKey( g_Overlays[1] ));
	
	pullDown:CalculateInternals();
    pullDown:RegisterSelectionCallback( OnOverlaySelected );
end


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnOverlaySelected( index )
	SetStrategicViewOverlay(index); 
	
	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.SVOverlayMode = index;
	
	Controls.OverlayDropDown:GetButton():SetText( Locale.ConvertTextKey( g_Overlays[index] ));
	SetLegend(index);
end

----------------------------------------------------------------        
----------------------------------------------------------------        
function SetLegend(index)
	g_LegendIM:ResetInstances();
	
	local info = GetOverlayLegend();
	if(index ~= nil) then
		Controls.OverlayTitle:SetText(Locale.ConvertTextKey( g_Overlays[index] ));
	end
	
	if(info ~= nil and InStrategicView()) then
		for i, v in pairs(info) do
			local controlTable = g_LegendIM:GetInstance();
			
			local keyColor = { x = v.Color.R, y = v.Color.G, z = v.Color.B, w = 1 };
			controlTable.KeyColor:SetColor(keyColor);
			controlTable.KeyName:LocalizeAndSetText(v.Name);
		end

		Controls.LegendStack:CalculateSize();
		Controls.LegendStack:ReprocessAnchoring();
		
		Controls.LegendFrame:SetHide(false);
		Controls.LegendFrame:DoAutoSize();
		
    	Controls.SideStack:CalculateSize();
    	Controls.SideStack:ReprocessAnchoring();
	else
		Controls.LegendFrame:SetHide(true);
    	Controls.SideStack:CalculateSize();
    	Controls.SideStack:ReprocessAnchoring();
	end
	
end

----------------------------------------------------------------        
----------------------------------------------------------------        
function PopulateIconPulldown( pullDown )
	
	for i, text in pairs(g_IconModes) do
	    controlTable = {};
        pullDown:BuildEntry( "InstanceOne", controlTable );

        controlTable.Button:SetVoid1( i );
        controlTable.Button:SetText( Locale.ConvertTextKey( text ) );
   	end
   	
   	Controls.IconDropDown:GetButton():SetText(Locale.ConvertTextKey( g_IconModes[1] ));
	
	pullDown:CalculateInternals();
    pullDown:RegisterSelectionCallback( OnIconModeSelected );
end


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnIconModeSelected( index )
	SetStrategicViewIconSetting(index); 
	
	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.SVIconMode = index;
	
	Controls.IconDropDown:GetButton():SetText( Locale.ConvertTextKey( g_IconModes[index] ));
end


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnShowFeaturesChecked( bIsChecked )
	StrategicViewShowFeatures( bIsChecked );
	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.SVShowFeatures = bIsChecked;
end
Controls.ShowFeatures:RegisterCheckHandler( OnShowFeaturesChecked );


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnShowFOWChecked( bIsChecked )
	StrategicViewShowFogOfWar( bIsChecked );
	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.SVShowFOW = bIsChecked;
end
Controls.ShowFogOfWar:RegisterCheckHandler( OnShowFOWChecked );


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnShowGridChecked( bIsChecked )
	
	UI.SetGridVisibleMode(bIsChecked);
	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.ShowGrid = bIsChecked;
	
	OptionsManager.SetGridOn_Cached( bIsChecked );
	OptionsManager.CommitGameOptions( PreGame.IsHotSeatGame() );
		
end
Controls.ShowGrid:RegisterCheckHandler( OnShowGridChecked );


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnGridOn()
    Controls.ShowGrid:SetCheck( true );
    
    local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.ShowGrid = true;
	
end
Events.SerialEventHexGridOn.Add( OnGridOn )


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnGridOff()
    Controls.ShowGrid:SetCheck( false );
    
    local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.ShowGrid = false;
	
end
Events.SerialEventHexGridOff.Add( OnGridOff )

----------------------------------------------------------------        
----------------------------------------------------------------        
function OnShowTradeToggled( bIsChecked )
	Controls.ShowTrade:SetCheck(bIsChecked);
	
	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.ShowTrade = bIsChecked;
end
Events.Event_ToggleTradeRouteDisplay.Add( OnShowTradeToggled )

----------------------------------------------------------------        
----------------------------------------------------------------        
function OnShowTradeChecked( bIsChecked )
	Events.Event_ToggleTradeRouteDisplay(bIsChecked);
	
	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.ShowTrade = bIsChecked;
    
	OptionsManager.SetShowTradeOn_Cached( bIsChecked );
	OptionsManager.CommitGameOptions( PreGame.IsHotSeatGame() );
end
Controls.ShowTrade:RegisterCheckHandler( OnShowTradeChecked );

----------------------------------------------------------------        
----------------------------------------------------------------        
function OnYieldChecked( bIsChecked )
    UI.SetYieldVisibleMode(bIsChecked);
    local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.ShowYield = bIsChecked;
    
	OptionsManager.SetYieldOn_Cached( bIsChecked );
	OptionsManager.CommitGameOptions( PreGame.IsHotSeatGame() );
end
Controls.ShowYield:RegisterCheckHandler( OnYieldChecked );


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnResourcesChecked( bIsChecked )
    UI.SetResourceVisibleMode(bIsChecked);
    local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.ShowResources = bIsChecked;
    
	OptionsManager.SetResourceOn_Cached( bIsChecked );
	OptionsManager.CommitGameOptions(PreGame.IsHotSeatGame());
    
end
Controls.ShowResources:RegisterCheckHandler( OnResourcesChecked );


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnYieldDisplay( type )

	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	
    if( type == YieldDisplayTypes.USER_ALL_ON ) then
        Controls.ShowYield:SetCheck( true );
        mapOptions.ShowYield = true;
        
    elseif( type == YieldDisplayTypes.USER_ALL_OFF ) then
        Controls.ShowYield:SetCheck( false );
         mapOptions.ShowYield = false;
        
    elseif( type == YieldDisplayTypes.USER_ALL_RESOURCE_ON ) then
        Controls.ShowResources:SetCheck( true );
        mapOptions.ShowResources = true;
        
    elseif( type == YieldDisplayTypes.USER_ALL_RESOURCE_OFF ) then
        Controls.ShowResources:SetCheck( false );
        mapOptions.ShowResources = false;
    end
    
end
Events.RequestYieldDisplay.Add( OnYieldDisplay );


----------------------------------------------------------------        
----------------------------------------------------------------        
function OnRecommendationChecked( bIsChecked )

	local mapOptions = GetMapOptions(Game.GetActivePlayer());
	mapOptions.HideTileRecommendations = bIsChecked;
	
	OptionsManager.SetNoTileRecommendations_Cached( bIsChecked );
	OptionsManager.CommitGameOptions(PreGame.IsHotSeatGame());
	LuaEvents.OnRecommendationCheckChanged( bIsChecked );
end
Controls.HideRecommendation:RegisterCheckHandler( OnRecommendationChecked );

----------------------------------------------------------------        
----------------------------------------------------------------   
function UpdateStrategicViewToggleTT()
	local controlInfo = GameInfo.Controls.CONTROL_TOGGLE_STRATEGIC_VIEW;
	if( controlInfo ~= nil and type(controlInfo) == "table" ) then
		local hotKey = controlInfo.HotKey;
		if( hotKey ~= nil and type(hotKey) == "string" ) then
			local keyDesc = Locale.GetHotKeyDescription(hotKey, controlInfo.CtrlDown, controlInfo.AltDown, controlInfo.ShiftDown);
			if( keyDesc ~= nil and type(keyDesc) == "string" ) then
				local sToolTip = Locale.ConvertTextKey("TXT_KEY_POP_STRATEGIC_VIEW_TT");
				Controls.StrategicViewButton:SetToolTipString(sToolTip .. " (" .. keyDesc .. ")");
			end
		end
	end
end

----------------------------------------------------------------
-- 'Active' (local human) player has changed
----------------------------------------------------------------
function OnActivePlayerChanged(iActivePlayer, iPrevActivePlayer)

	local mapOptions = GetMapOptions(iActivePlayer);
	ApplyMapOptions(mapOptions);
	UpdateOptionsPanel();
	
	if (not Controls.OptionsPanel:IsHidden()) then
		OnMapOptions();
	end
end
Events.GameplaySetActivePlayer.Add(OnActivePlayerChanged);

PopulateOverlayPulldown( Controls.OverlayDropDown );
PopulateIconPulldown( Controls.IconDropDown );
UpdateOptionsPanel();
UpdateStrategicViewToggleTT();
