// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DynamicArrayExample {
    bytes public dynamicByteArray; // 동적 크기 바이트 배열

    constructor() {
        dynamicByteArray.push(0x01); // 요소 추가
        dynamicByteArray.push(0x02); // 요소 추가
    }

    function addElement(bytes1 element) public {
        dynamicByteArray.push(element); // 요소 추가
    }

    function getLength() public view returns (uint) {
        return dynamicByteArray.length; // 배열의 길이 조회
    }

    function getElement(uint index) public view returns (bytes1) {
        require(index < dynamicByteArray.length, "Index out of bounds");
        return dynamicByteArray[index]; // 인덱스 요소 조회
    }
    
}