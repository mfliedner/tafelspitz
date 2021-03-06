module.exports = {
  overlay : {
    position        : 'fixed',
    top             : 0,
    left            : 0,
    right           : 0,
    bottom          : 0,
    backgroundColor : 'rgba(255, 255, 255, 0.75)'
  },
  content : {
    position        : 'absolute',
    top             : '60px',
    left            : '30%',
    right           : 0,
    bottom          : 0,
    padding         : '16px',
    border          : '1px solid #000',
    background      : '#fff',
    width           : '460px',
    overflow                   : 'auto',
    WebkitOverflowScrolling    : 'touch',
    outline         : 'none',
    opacity         : '0',
    transition      : 'opacity 1s'
  }
};
