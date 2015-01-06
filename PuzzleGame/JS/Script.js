/* File Created: January 5, 2015 */
var empty_div_index = 15;
var winning_state=[];
var Boxes = [];
Initialize_array();

function shuffleBox() {
    Boxes = shuffle(Boxes);
    manipulate_array();
    empty_div_index = $.inArray("box16", Boxes);
}
function Initialize_array() {
    Boxes = [];
    for (var i = 1; i <= 16; i++) {
        Boxes.push("box" + i);
    }
    winning_state=Boxes;
    empty_div_index = 15;
}

function manipulate_array() {
    for (i = 0; i < 16; i++) {
        $("#maindivID").append($("#" + Boxes[i]));
    }
    check_winner();
}

function check_winner() {
    var counter = 0;
    for (i = 0; i < 16; i++) {
        var temp = i + 1;
        if ("box" + temp == Boxes[i]) {
            counter++;
        }
        if (counter == 16) {
            alert("Congratulation,you solved the puzzle");

        }

    }
}

function shuffle(array) {
    var counter = array.length, temp, index;
    while (counter > 0) {
        index = Math.floor(Math.random() * counter);
        counter--;
        temp = array[counter];
        array[counter] = array[index];
        array[index] = temp;
    }
    return array;
}

$(document).ready(function () {

    $(".small_div").click(function () {

        var selected_index = $.inArray(this.id, Boxes);
        if (selected_index + 1 == empty_div_index || selected_index - 1 == empty_div_index || selected_index + 4 == empty_div_index || selected_index - 4 == empty_div_index) {

            var temp = Boxes[empty_div_index];
            Boxes[empty_div_index] = Boxes[selected_index];
            Boxes[selected_index] = temp;
            manipulate_array();
            empty_div_index = selected_index;
            console.log(empty_div_index);
        }
        else {
            alert("Illegeal Move");
        }

    });
    $(".btn_Suffle").click(function () {

        shuffleBox();
    });
});
