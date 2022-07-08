var Top;
var b = document.getElementById("background");
let windowLength = document.getElementById("background").scrollHeight;
var body = document.body,
html = document.documentElement;
var height = Math.max( body.scrollHeight, body.offsetHeight, 
    html.clientHeight, html.scrollHeight, html.offsetHeight );
function backgroundThing() {
    
    Top = (window.scrollY*54000/height)/windowLength;
          
    b.style.backgroundColor = 'rgba(34,84,100,1)'.replace(/[^,]+(?=,[\d]+[.]*[\d]*\))/, Math.round((100-Top)/7)*7)

    document.getElementById("backgroundi").style.top = `${30-window.scrollY/1.9}%`;
}
let svgthings = ["blue1", "blue2", "blue3", "green1"];
        for (let x=0; x<svgthings.length; x++) {
            document.getElementById(`${svgthings[x]}`).addEventListener("mouseover", function(event) {
                document.getElementById(`${svgthings[x]}`).style.opacity = "0";
                setTimeout(appear, 2000, svgthings[x]);
            }, false);

        }
        function appear(s) {
                document.getElementById(`${s}`).style.opacity = "1";
            }
        const content = document.getElementById("contents");
        let closebutton = document.getElementById("close");
        let sidePane = () => {
            document.getElementById("contents").className = "enabled";
            closebutton.style.transform = "matrix(1, 0, 0, 1, 0, 0)"
        }
        let notSidePane = () => document.getElementById("contents").className = "";
        
        let closecount = 1;
        function cool() {
            closecount++;
            
            closebutton.style.transform = `matrix(1, ${Math.random()/2}, ${Math.random()/2}, ${(closecount % 2) * 2 - 1}, 0, 0)`
        }