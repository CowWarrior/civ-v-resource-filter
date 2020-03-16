-- ResourceDialogFilter
-- Author: pplap
-- DateCreated: 3/15/2020 2:38:18 PM
--------------------------------------------------------------

-- *************************************************************
-- * Dialog event managers 
-- *************************************************************
function OnOK()
	HideFilterDialog()
end
Controls.btnOK:RegisterCallback(Mouse.eLClick, OnOK) --Bind event to button

function ShowFilterDialog()
	ContextPtr:SetHide(false)
end
LuaEvents.LuaEventShowResourceFilterDialog.Add(ShowFilterDialog) --Make event available to all contexts


function HideFilterDialog()
	ContextPtr:SetHide(true)
end
LuaEvents.LuaEventHideResourceFilterDialog.Add(HideFilterDialog)  --Make event available to all contexts

-- *************************************************************
-- * Resources Toggle event managers 
-- *************************************************************
-- TODO: Find a way to have a generic function with arguments 
--       passed as parameters instead of having one individual
--       function per resource type.


-- **********************BASE RESOURCES*********************************** 
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

HideFilterDialog() --Hide on Load... There must be a better way of doing this.

