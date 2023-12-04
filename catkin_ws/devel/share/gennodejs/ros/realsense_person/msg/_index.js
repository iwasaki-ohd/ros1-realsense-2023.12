
"use strict";

let RegisteredPoint = require('./RegisteredPoint.js');
let PersonBody = require('./PersonBody.js');
let PersonTracking = require('./PersonTracking.js');
let PersonSkeleton = require('./PersonSkeleton.js');
let BoundingBox = require('./BoundingBox.js');
let PersonFace = require('./PersonFace.js');
let PersonDetection = require('./PersonDetection.js');
let Person = require('./Person.js');
let PersonId = require('./PersonId.js');

module.exports = {
  RegisteredPoint: RegisteredPoint,
  PersonBody: PersonBody,
  PersonTracking: PersonTracking,
  PersonSkeleton: PersonSkeleton,
  BoundingBox: BoundingBox,
  PersonFace: PersonFace,
  PersonDetection: PersonDetection,
  Person: Person,
  PersonId: PersonId,
};
