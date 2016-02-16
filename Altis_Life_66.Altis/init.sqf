StartProgress = false;
enableSentences false; // Disable AI chatter.
enableSaving[false,false];

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

[] execVM "scripts\fastrope.sqf"; //Toss ropes
[] execVM "scripts\fn_disableSnakes.sqf"; //disable snakes ingame
[] execVM "scripts\safezone.sqf";

StartProgress = true;

//fuck you fog
[] spawn {
	while{true} do {
		sleep 10;
		200 setFog 0;
		sleep 590;
	};
};
//fuck you rain
[] spawn {
	while{true} do {
		sleep 10;
		200 setRain 0;
		sleep 590;
	};
};

call compile preprocessFile "scripts\text.sqf";