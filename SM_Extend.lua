function CogzMacro()
	local itemLink = GetInventoryItemLink("player",14)
	if not itemLink then itemLink="None" end
	local bsnum=string.gsub(itemLink,".-\124H([^\124]*)\124h.*", "%1")
	local itemName, _, _, _, _, _, _, _, _ = GetItemInfo(bsnum)
	local item2Link = GetInventoryItemLink("player",13)
	if not item2Link then item2Link="none" end
	local bsnum2=string.gsub(item2Link,".-\124H([^\124]*)\124h.*", "%1")
	local item2Name, _, _, _, _, _, _, _, _ = GetItemInfo(bsnum2)	
	
	if itemName=="Six Demon Bag" or item2Name=="Six Demon Bag" then
		UseItemByName("Six Demon Bag")
	end
end