module.exports = {
  timing(time) {
    let meridiem = " AM";
    if (time > 43199) {
      meridiem = " PM";
      time -= 43200;
    }
    let h = Math.floor(time / 3600);
    if (h === 0) {
      h = 12;
    }
    const min = Math.round((time % 3600) / 60);
    let pad = ":";
    if (min < 10) {
      pad = ":0"
    }
    return ( h + pad + min + meridiem )
  }
};
