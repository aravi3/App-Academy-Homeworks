function dinerBreakfast() {
  let order = "Green eggs and ham";
  console.log(order);

  return function(food) {
    order = `${order} and ${food}`;
    console.log(order);
  }
}

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");
