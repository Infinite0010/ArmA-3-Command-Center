params ["_pipTarget",  "_unit"];

_cam = "camera" camCreate [0,0,0];
_eyeDir = eyeDirection _unit;
_cam setVectorDir _eyeDir;

_cam cameraEffect ["Internal", "Back", _pipTarget];
_cam camSetFov 0.7;
_pipTarget setPiPEffect [1];

_cam attachTo [_unit, [0.12,0,0.15], "Head", true];