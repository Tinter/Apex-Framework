/*/
File: fn_AIXHitEvade.sqf
Author:

	Quiksilver
	
Last modified:

	22/10/2017 A3 1.76 by Quiksilver
	
Description:

	Evade hits
__________________________________________________/*/

if ((random 1) > 0.5) then {
	params ['_u','','','_i'];
	if (local _u) then {
		if ((random 1) > 0.5) then {
			_u removeEventHandler ['Hit',_thisEventHandler];
			_u setVariable ['QS_AI_UNIT_gestureEvent',FALSE,FALSE];
		};
		if (alive _i) then {
			if (isPlayer _i) then {
				_u playAction (selectRandom ['TactLB','TactRB','TactL','TactR','TactLF','TactRf']);
				if ((random 1) > 0.5) then {
					_u playAction (selectRandom ['TactLB','TactRB','TactL','TactR','TactLF','TactRf']);
				};
			};
		};
	};
};