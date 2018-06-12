#include "script_component.hpp"

diag_log text "[CF_ANIMATIONFIX] Animation fix is running";

["CAManBase", "init", {
    params ["_unit"];

    if (animationState _unit == "acinpknlmstpsraswrfldnon") then {
        _unit playMoveNow "amovppnemstpsraswrfldnon";
    };
    _unit addEventHandler ["AnimChanged",{
        params ["_unit","_anim"];
        if (!isPlayer _unit) then {
            if (_anim == "acinpknlmstpsraswrfldnon") then {
                _unit playMoveNow "amovppnemstpsraswrfldnon";
            };
        };
    }];
},true,[],true] call CBA_fnc_addClassEventHandler;