/**
 * Adds cbc to the mode on demand
 */
var sjcl = require('./index');

// Add cbc by calling the sjcl function
sjcl.beware["CBC mode is dangerous because it doesn't protect message integrity."]();

// For convenience provide the mode as the export
module.exports = sjcl.mode.cbc;
