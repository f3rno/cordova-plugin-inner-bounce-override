var exec = require("cordova/exec");

var InnerBounceOverride = {
  trigger: function() {
    exec(null, null, "InnerBounceOverride", "trigger", []);
  }
};

module.exports = InnerBounceOverride;
