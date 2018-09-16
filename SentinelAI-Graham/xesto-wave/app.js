let xesto = require("xesto-wave-npm");
const client = xesto("c09fbe65eac44ceeaea2e351f4faace8");

client.connect().then( controller => {

  controller.on("Wave", () => {
    console.log("Wave acknowledged!!");
  });

  controller.connect();
});