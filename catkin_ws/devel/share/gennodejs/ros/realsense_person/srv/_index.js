
"use strict";

let StartTracking = require('./StartTracking.js')
let GetTrackingId = require('./GetTrackingId.js')
let Deserialize = require('./Deserialize.js')
let Serialize = require('./Serialize.js')
let Register = require('./Register.js')
let Recognize = require('./Recognize.js')
let StopTracking = require('./StopTracking.js')
let Reinforce = require('./Reinforce.js')

module.exports = {
  StartTracking: StartTracking,
  GetTrackingId: GetTrackingId,
  Deserialize: Deserialize,
  Serialize: Serialize,
  Register: Register,
  Recognize: Recognize,
  StopTracking: StopTracking,
  Reinforce: Reinforce,
};
