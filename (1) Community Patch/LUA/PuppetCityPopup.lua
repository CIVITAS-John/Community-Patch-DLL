-- CAPTURE CITY POPUP
-- This popup occurs when a city is capture and must be annexed or puppeted.

PopupLayouts[ButtonPopupTypes.BUTTONPOPUP_CITY_CAPTURED] = function(popupInfo)

	local cityID				= popupInfo.Data1;
	local iCaptureGold			= popupInfo.Data2;
	local iCaptureCulture		= popupInfo.Data3;
	local iCaptureGreatWorks    = popupInfo.Data4;
	local iLiberatedPlayer		= popupInfo.Data5;
	local bMinorCivBuyout		= popupInfo.Option1;
	local bConquest				= popupInfo.Option2;
	
	local activePlayer	= Players[Game.GetActivePlayer()];
	local newCity		= activePlayer:GetCityByID(cityID);
	
	local bOneCity		= Game.IsOption(GameOptionTypes.GAMEOPTION_ONE_CITY_CHALLENGE);
	
	if newCity == nil then
		return false;
	end

	local iPreviousOwner = newCity:GetPreviousOwner();
	local strToolTip;
	
	-- Initialize popup text.	
	local cityNameKey = newCity:GetNameKey();
	if (iCaptureCulture > 0 or iCaptureGold > 0 or iCaptureGreatWorks > 0) then
	    if (iCaptureCulture >0 or iCaptureGreatWorks > 0) then
			popupText = Locale.ConvertTextKey("TXT_KEY_POPUP_GOLD_AND_CULTURE_CITY_CAPTURE", iCaptureGold, iCaptureCulture, iCaptureGreatWorks, cityNameKey);
	    else
			popupText = Locale.ConvertTextKey("TXT_KEY_POPUP_GOLD_CITY_CAPTURE", iCaptureGold, cityNameKey);
		end
	else
		popupText = Locale.ConvertTextKey("TXT_KEY_POPUP_NO_GOLD_CITY_CAPTURE", cityNameKey);
	end
		
	-- Ask the player what he wants to do with this City
	popupText = popupText .. "  " .. Locale.ConvertTextKey("TXT_KEY_POPUP_CITY_CAPTURE_INFO");
	
	SetPopupText(popupText);
	
	-- Calculate Happiness info
	local iUnhappinessNoCity = activePlayer:GetUnhappiness();
	local iUnhappinessAnnexedCity = activePlayer:GetUnhappinessForecast(newCity, nil);	-- pAssumeCityAnnexed, pAssumeCityPuppeted
	if (bMinorCivBuyout) then
		-- For minor civ buyout (Austria UA), there are no unhappiness benefits of annexing because the city is not occupied
		iUnhappinessAnnexedCity = activePlayer:GetUnhappinessForecast(nil, newCity);
	end
	local iUnhappinessPuppetCity = activePlayer:GetUnhappinessForecast(nil, newCity);		-- pAssumeCityAnnexed, pAssumeCityPuppeted
	
	local iUnhappinessForAnnexing = iUnhappinessAnnexedCity - iUnhappinessNoCity;
	local iUnhappinessForPuppeting = iUnhappinessPuppetCity - iUnhappinessNoCity;
	
	-- Initialize 'Liberate' button.
	if (iLiberatedPlayer ~= -1) then
		local OnLiberateClicked = function()
			Network.SendLiberateMinor(iLiberatedPlayer, cityID);
		end
		
		local buttonText = Locale.ConvertTextKey("TXT_KEY_POPUP_LIBERATE_CITY");
		strToolTip = Locale.ConvertTextKey("TXT_KEY_POPUP_CITY_CAPTURE_INFO_LIBERATE", Players[iLiberatedPlayer]:GetNameKey());
		strToolTip = strToolTip .. "[NEWLINE][NEWLINE]";
		strToolTip = strToolTip .. activePlayer:GetLiberationPreviewString(iLiberatedPlayer, newCity, Game.GetActivePlayer() );
		AddButton(buttonText, OnLiberateClicked, strToolTip);
	end
	
	-- Initialize 'Annex' button.
	if (not bOneCity) then
		local OnCaptureClicked = function()
			Network.SendDoTask(cityID, TaskTypes.TASK_ANNEX_PUPPET, -1, -1, false, false, false, false);
			newCity:ChooseProduction();
		end
		
		if (not activePlayer:MayNotAnnex()) then
			local buttonText = Locale.ConvertTextKey("TXT_KEY_POPUP_ANNEX_CITY");
			strToolTip = Locale.ConvertTextKey("TXT_KEY_POPUP_CITY_CAPTURE_INFO_ANNEX", iUnhappinessForAnnexing);
			if (newCity:GetOriginalOwner() ~= Game.GetActivePlayer() and bConquest == true) then
				strToolTip = strToolTip .. "[NEWLINE][NEWLINE]";
				strToolTip = strToolTip .. activePlayer:GetWarmongerPreviewString(iPreviousOwner, newCity, Game.GetActivePlayer());
			end
			AddButton(buttonText, OnCaptureClicked, strToolTip);
		end
			
		-- Initialize 'Puppet' button.
		local OnPuppetClicked = function()
			Network.SendDoTask(cityID, TaskTypes.TASK_CREATE_PUPPET, -1, -1, false, false, false, false);
		end
		
		buttonText = Locale.ConvertTextKey("TXT_KEY_POPUP_PUPPET_CAPTURED_CITY");
		strToolTip = Locale.ConvertTextKey("TXT_KEY_POPUP_CITY_CAPTURE_INFO_PUPPET", iUnhappinessForPuppeting);
		if (newCity:GetOriginalOwner() ~= Game.GetActivePlayer() and bConquest == true) then
			strToolTip = strToolTip .. "[NEWLINE][NEWLINE]"
			strToolTip = strToolTip .. activePlayer:GetWarmongerPreviewString(iPreviousOwner, newCity, Game.GetActivePlayer());
		end
		AddButton(buttonText, OnPuppetClicked, strToolTip);
	end
	
	-- Initialize 'Raze' button.
	local bRaze = activePlayer:CanRaze(newCity) or bOneCity;
	if (bRaze) then
		local OnRazeClicked = function()
			if (bOneCity) then
				Network.SendDoTask(cityID, TaskTypes.TASK_DISBAND, -1, -1, false, false, false, false);
			else
				Network.SendDoTask(cityID, TaskTypes.TASK_RAZE, -1, -1, false, false, false, false);
			end
		end

		if (not bOneCity) then
			buttonText = Locale.ConvertTextKey("TXT_KEY_POPUP_RAZE_CAPTURED_CITY");
			strToolTip = Locale.ConvertTextKey("TXT_KEY_POPUP_CITY_CAPTURE_INFO_RAZE", iUnhappinessForAnnexing);
		else
			buttonText = Locale.ConvertTextKey("TXT_KEY_POPUP_DESTROY_CAPTURED_CITY");
			strToolTip = Locale.ConvertTextKey("TXT_KEY_POPUP_CITY_CAPTURE_INFO_DESTROY");
		end

		if (newCity:GetOriginalOwner() ~= Game.GetActivePlayer() and bConquest == true) then
			strToolTip = strToolTip .. "[NEWLINE][NEWLINE]"
			strToolTip = strToolTip .. activePlayer:GetWarmongerPreviewString(iPreviousOwner, newCity, Game.GetActivePlayer());
		end
		AddButton(buttonText, OnRazeClicked, strToolTip);
	end

	-- CITY SCREEN CLOSED - Don't look, Marc
	local CityScreenClosed = function()
		UIManager:DequeuePopup(Controls.EmptyPopup);
		Events.SerialEventExitCityScreen.Remove(CityScreenClosed);
	end
	
	-- Initialize 'View City' button.
	local OnViewCityClicked = function()
		
		-- Queue up an empty popup at a higher priority so that it prevents other cities from appearing while we're looking at this one!
		UIManager:QueuePopup(Controls.EmptyPopup, PopupPriority.GenericPopup+1);
		
		Events.SerialEventExitCityScreen.Add(CityScreenClosed);
		
		UI.SetCityScreenViewingMode(true);
		UI.DoSelectCityAtPlot( newCity:Plot() );
	end
	
	buttonText = Locale.ConvertTextKey("TXT_KEY_POPUP_VIEW_CITY");
	strToolTip = Locale.ConvertTextKey("TXT_KEY_POPUP_VIEW_CITY_DETAILS");
	AddButton(buttonText, OnViewCityClicked, strToolTip, true);	-- true is bPreventClose
end