//convert time to 24h military format
const convertTime = (time12h) => {
    const [time, meridiem] = time12h.split(' '); //ante meridiem post meridiem
    let [hours, minutes, seconds] = time.split(':'); //splitting unneeded object :
  
    if (hours === '12') {
      hours = '00';
    }
    if (meridiem === 'PM') {
      hours = parseInt(hours) + 12; //parseInt is used to convert 'hours' as integer in order to +12
    }
    return `${hours}:${minutes}:${seconds}`; //template literal
  }
  
  console.log(convertTime('01:02:21 PM'));
  console.log(convertTime('05:06:21 PM'));
  console.log(convertTime('12:00:12 PM'));
  console.log(convertTime('12:00:18 AM'));
  console.log(convertTime('04:02:21 PM'));
  console.log(convertTime('02:12:39 PM'));