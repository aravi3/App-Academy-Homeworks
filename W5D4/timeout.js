// Simple Timeout
window.setTimeout(() => alert('HAMMERTIME'), 5000);

// Timeout Plus Closure
function hammerTime() {
  return function(time) {
    alert(`${time} is hammertime!`);
  }
}

let timeHasCome = hammerTime();

window.setTimeout(timeHasCome(5), 2000);
