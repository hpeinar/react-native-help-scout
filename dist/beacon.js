"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var react_native_1 = require("react-native");
var events_1 = require("events");
var NativeModule = react_native_1.NativeModules.RNHelpScoutBeacon;
var nativeEmitter = new react_native_1.NativeEventEmitter(NativeModule);
var events = new events_1.EventEmitter();
nativeEmitter.addListener('open', function () {
    events.emit('open');
});
nativeEmitter.addListener('close', function () {
    events.emit('close');
});
NativeModule.events = events;
exports.default = NativeModule;
//# sourceMappingURL=beacon.js.map