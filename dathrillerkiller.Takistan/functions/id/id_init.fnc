
if (!isNil { profileNamespace getVariable "tickleme"})then {
call id_generate;
};

player setVariable ["PlayerSettings", [ profileNamespace getVariable "tickleme",dtk_side], true];