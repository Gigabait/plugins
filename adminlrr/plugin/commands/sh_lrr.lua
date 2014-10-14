
local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("LRR");
COMMAND.tip = "Sends a message over the LRR channel as MOBCOMM.";
COMMAND.text = "<string Text>";
COMMAND.access = "M";
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	Clockwork.radio:SayRadio(player, table.concat(arguments, " "), {Mobcomm = "MOBCOMM", bNoEavesdrop = true, channelID = "lrr"});
end;

COMMAND:Register();