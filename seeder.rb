require 'mongoid'
require './models/verb'
require './models/noun'
#Check if in development,test or production mode
Mongoid.load!('./mongoid.yml', :development)
verbs = [
  "jumping", "running", "skipping", "hopping", "walking", "crawling", "bending",
  "swaying", "swinging", "shaking", "twisting", "galloping", "leaping",
  "rolling", "twirling", "kicking", "tip-toeing", "stamping", "grabing",
  "punching", "pulling", "pushing", "wiggling", "catching", "throwing",
  "digging", "waving", "climbing", "winking", "clapping", "yawning", "blinking",
  "shuffling", "creeping", "marching", "turning", "riding", "swimming", "diving",
  "skating", "dancing", "jogging", "stomping"]
nouns = [
  "apple", "arm", "banana", "bike", "bird", "book", "chin",
  "clam", "class", "clover", "club", "corn", "crayon","crow",
  "crown","crowd","crib", "desk", "dime", "dirt", "dress", "fang",
  "field","flag", "flower", "fog", "game", "heat", "hill", "home",
  "horn", "hose", "joke", "juice", "kite", "lake", "maid", "mask",
  "mice", "milk", "mint", "meal", "meat", "moon", "mother", "morning",
  "name", "nest", "nose", "pear", "pen", "pencil", "plant", "rain",
  "river","road", "rock", "room", "rose", "seed", "shape", "shoe",
  "shop", "show","sink", "snail", "snake", "snow", "soda", "sofa",
  "star", "step", "stew", "stove", "straw", "string", "summer",
  "swing", "table", "tank", "team", "tent", "test", "toes", "tree",
  "vest", "water", "wing", "winter", "woman", "women"
]
verbs.each do |verb|
 Verb.create(verb: verb)
end

nouns.each do |noun|
  Noun.create(noun: noun)
end
