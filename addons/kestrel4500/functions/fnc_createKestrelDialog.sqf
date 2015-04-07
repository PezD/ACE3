#include "script_component.hpp"

if (dialog) exitWith { false };
if (underwater ACE_player) exitWith { false };
if (!("ACE_Kestrel4500" in (uniformItems ACE_player)) && !("ACE_Kestrel4500" in (vestItems ACE_player))) exitWith { false };

GVAR(Kestrel4500_Overlay) = false;
3 cutText ["", "PLAIN"];

GVAR(Kestrel4500) = true;
createDialog 'Kestrel4500_Display';

[{
    if (!dialog || !GVAR(Kestrel4500)) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    
    [] call FUNC(updateDisplay);
}, 1, _this select 0] call CBA_fnc_addPerFrameHandler;

true