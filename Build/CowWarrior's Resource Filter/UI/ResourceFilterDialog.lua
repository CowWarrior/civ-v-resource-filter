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


function SetAllStrategic(val)
	Controls.ShowAntiquityResources:SetCheck(val);
	Controls.ShowHiddenAntiquityResources:SetCheck(val);
	Controls.ShowAluminiumResources:SetCheck(val);
	Controls.ShowCoalResources:SetCheck(val);
	Controls.ShowHorseResources:SetCheck(val);
	Controls.ShowIronResources:SetCheck(val);
	Controls.ShowOilResources:SetCheck(val);
	Controls.ShowUraniumResources:SetCheck(val);

	LuaEvents.SetShowResourceIconsValue("RESOURCE_ARTIFACTS", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_HIDDEN_ARTIFACTS", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_ALUMINUM", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_COAL", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_HORSE", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_IRON", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_OIL", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_URANIUM", val);

	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end

function OnbtnStrategicClearClick()
	SetAllStrategic(false);
end
Controls.btnStrategicClear:RegisterCallback(Mouse.eLClick, OnbtnStrategicClearClick) --Bind event to button

function OnbtnStrategicAllClick()
	SetAllStrategic(true);
end
Controls.btnStrategicAll:RegisterCallback(Mouse.eLClick, OnbtnStrategicAllClick) --Bind event to button

function SetAllLuxury(val)
	Controls.ShowCottonResources:SetCheck(val);
	Controls.ShowFursResources:SetCheck(val);
	Controls.ShowDyesResources:SetCheck(val);
	Controls.ShowCopperResources:SetCheck(val);
	Controls.ShowMarbleResources:SetCheck(val);
	Controls.ShowJewelryResources:SetCheck(val);
	Controls.ShowNutmegResources:SetCheck(val);
	Controls.ShowCrabResources:SetCheck(val);
	Controls.ShowCitrusResources:SetCheck(val);
	Controls.ShowSpicesResources:SetCheck(val);
	Controls.ShowIvoryResources:SetCheck(val);
	Controls.ShowIncenseResources:SetCheck(val);
	Controls.ShowGoldResources:SetCheck(val);
	Controls.ShowPearlsResources:SetCheck(val);
	Controls.ShowClovesResources:SetCheck(val);
	Controls.ShowSaltResources:SetCheck(val);
	Controls.ShowGemsResources:SetCheck(val);
	Controls.ShowSugarResources:SetCheck(val);
	Controls.ShowSilkResources:SetCheck(val);
	Controls.ShowWineResources:SetCheck(val);
	Controls.ShowSilverResources:SetCheck(val);
	Controls.ShowTrufflesResources:SetCheck(val);
	Controls.ShowPorcelainResources:SetCheck(val);
	Controls.ShowPepperResources:SetCheck(val);
	Controls.ShowWhalesResources:SetCheck(val);
	Controls.ShowCocoaResources:SetCheck(val);

	LuaEvents.SetShowResourceIconsValue("RESOURCE_COTTON", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_FUR", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_DYE", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_COPPER", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_MARBLE", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_JEWELRY", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_NUTMEG", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_CRAB", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_CITRUS", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_SPICES", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_IVORY", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_INCENSE", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_GOLD", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_PEARLS", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_CLOVES", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_SALT", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_GEMS", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_SUGAR", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_SILK", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_WINE", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_SILVER", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_TRUFFLES", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_PORCELAIN", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_PEPPER", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_WHALE", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_COCOA", val);

	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end

function OnbtnLuxuryClearClick()
	SetAllLuxury(false);
end
Controls.btnLuxuryClear:RegisterCallback(Mouse.eLClick, OnbtnLuxuryClearClick) --Bind event to button

function OnbtnLuxuryAllClick()
	SetAllLuxury(true);
end
Controls.btnLuxuryAll:RegisterCallback(Mouse.eLClick, OnbtnLuxuryAllClick) --Bind event to button

function SetAllBonus(val)
	Controls.ShowBananaResources:SetCheck(val);
	Controls.ShowCattleResources:SetCheck(val);
	Controls.ShowBisonResources:SetCheck(val);
	Controls.ShowWheatResources:SetCheck(val);
	Controls.ShowSheepResources:SetCheck(val);
	Controls.ShowDeerResources:SetCheck(val);
	Controls.ShowFishResources:SetCheck(val);
	Controls.ShowStoneResources:SetCheck(val);

	LuaEvents.SetShowResourceIconsValue("RESOURCE_BANANA", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_COW", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_BISON", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_WHEAT", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_SHEEP", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_DEER", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_FISH", val);
	LuaEvents.SetShowResourceIconsValue("RESOURCE_STONE", val);
	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end

function OnbtnBonusClearClick()
	SetAllBonus(false);
end
Controls.btnBonusClear:RegisterCallback(Mouse.eLClick, OnbtnBonusClearClick) --Bind event to button

function OnbtnBonusAllClick()
	SetAllBonus(true);
end
Controls.btnBonusAll:RegisterCallback(Mouse.eLClick, OnbtnBonusAllClick) --Bind event to button

-- *************************************************************
-- * Resources Toggle event managers 
-- *************************************************************
-- TODO: Find a way to have a generic function with arguments 
--       passed as parameters instead of having one individual
--       function per resource type.


-- **********************BASE RESOURCES*********************************** 
function OnShowAntiquityResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_ARTIFACTS");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowAntiquityResources:RegisterCheckHandler(OnShowAntiquityResourcesChecked);

function OnShowHiddenAntiquityResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_HIDDEN_ARTIFACTS");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowHiddenAntiquityResources:RegisterCheckHandler(OnShowHiddenAntiquityResourcesChecked);

function OnShowAluminiumResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_ALUMINUM");
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
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COW");
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

function OnShowBananaResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_BANANA");
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowBananaResources:RegisterCheckHandler(OnShowBananaResourcesChecked);

function OnShowCattleResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_COW");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowCattleResources:RegisterCheckHandler(OnShowCattleResourcesChecked);

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
	LuaEvents.ToggleShowResourceIcons("RESOURCE_FUR");
	LuaEvents.ToggleShowResourceIcons("RESOURCE_DYE");
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
	LuaEvents.ToggleShowResourceIcons("RESOURCE_WHALE");
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
	LuaEvents.ToggleShowResourceIcons("RESOURCE_FUR");	
	LuaEvents.RefreshResourceIcons(); --only refresh once
	Events.StrategicViewStateChanged();
end
Controls.ShowFursResources:RegisterCheckHandler(OnShowFursResourcesChecked);

function OnShowDyesResourcesChecked(bIsChecked)
	LuaEvents.ToggleShowResourceIcons("RESOURCE_DYE");	
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
	LuaEvents.ToggleShowResourceIcons("RESOURCE_WHALE");	
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

