// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TrafficLight {
    // 신호등의 상태를 나타내는 열거형 정의
    enum LightState {
        Red,
        Yellow, 
        Green 
    }

    LightState public currentLight;

    constructor() {
        currentLight = LightState.Red;
    }

    function changeLight(LightState _newState) public {
        require(_newState != currentLight, "New state");
        currentLight = _newState;
    }
}
