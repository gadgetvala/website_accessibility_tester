module.exports = function haltOnTimedout(req, res, next) {
  if (!req.timedout) next();
};
