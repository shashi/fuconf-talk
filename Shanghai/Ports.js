// initialize the Shanghai component which keeps track of
// shipping data in and out of the Port of Shanghai.
var shanghai = Elm.embed(Elm.Shanghai,
        document.getElementById("container"), {
    coordinates:[0,0],
    incomingShip: { name:"", capacity:0 },
    outgoingShip: ""
  });

function logger(x) { console.log(x) }
 
shanghai.ports.totalCapacity.subscribe(logger);
 
// send some ships to the port of Shanghai
shanghai.ports.incomingShip.send({
  name:"Mary Mærsk",
  capacity:18270
});
shanghai.ports.incomingShip.send({
  name:"Emma Mærsk",
  capacity:15500
});
 
// have those ships leave the port of Shanghai
shanghai.ports.outgoingShip.send("Mary Mærsk");
shanghai.ports.outgoingShip.send("Emma Mærsk");
