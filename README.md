# ArmA-3 Command Center

Here's a short explanation of the set-up, this took me a while to tinker with and extract I'll leave it to you guys to figure out and trouble shoot how to integrate it into your missions.

Starting off, the "satellite" is actually a VR entity unit named "ISRA". Can't remember why but streaming from a unit was the best way instead of a game logic as in other examples. On the object characteristics the unit is invisible/indestructible, etc. Through attachTo commands it will be attached below the vehicle or above the unit.

Make sure you set your PiP setting to ultra and max out the PiP view distance for the highest quality.

The three satellite streams are: 

- MQ-12 Falcon (named "MQ12", you can change this to another vehicle)

- MQ-4A Greyhawk (named "MQ4", you can change this to another vehicle)

- Unit1 (the lead unit of the squad "Echo 1", you can change this to whatever you designate as "Unit1").

The "Unit1" stream does not work when the unit is in a vehicle or parachuting - I don't think there's a way around it. The stream will resume once the unit is on foot.

The body/helmet camera streams are of the five units of squad "Echo 1" (named "Echo_1").

Four scripts are called on:

- createSatelliteCameraDay.sqf - satellite stream with no PiP effect

- createSatelliteCameraNight.sqf - satellite stream with a thermal PiP effect

- createBodyCameraDay.sqf - body camera stream with no PiP effect

- createBodyCameraNight.sqf - body camera stream with night vision PiP effect

Inside the command center, the satellite streams are triggered via addAction commands on the left PC screen and the body camera streams are triggered via addAction commands on the Rugged Multi-Screen computers. See the demo video I posted in the comments.

The streams are shown on either the rugged large screen or the rugged dual screens. 

The MQ-4A and MQ-12 can be controlled via UAV terminal. In practice I've realised that the MQ-12 or the AR-2 darter are the best drones (or a helicopter if you want) as they can be stationary. Change altitude as needed.

You can command "Echo 1" via Zeus. When you enter/exit out of Zeus you'll need to turn on the streams again. 

In case you want to quickly compare what the streams are like during the day and night, there's an addAction on the whiteboard to +12 hours.
