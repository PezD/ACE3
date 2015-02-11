/*
 * Author: commy2
 * Handles playerChanged.  Resets "showHUD" based on handcuff status
 *
 * Arguments:
 * 0: _newUnit <OBJECT>
 * 1: _oldUnit <OBJECT>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [bob1, bob2] call ACE_captives_fnc_handlePlayerChange
 *
 * Public: No
 */
#include "script_component.hpp"

PARAMS_2(_newUnit,_oldUnit);

if ((_newUnit getVariable [QGVAR(isHandcuffed), false]) || {_newUnit getVariable [QGVAR(isSurrendering), false]}) then {
    TRACE_1("Player Change (showHUD false)",_newUnit);
    showHUD false; 
} else {
    TRACE_1("Player Change (showHUD true)",_newUnit);
    showHUD true;
};