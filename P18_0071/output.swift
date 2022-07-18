
func appending(y: String ,symbol: String ) -> void{
         y.append(symbol)
}

func removeS(y: String ) -> void{
        y.removeLast()
}

func case1(r: Int, c: Int){
    var x = 0
    var FirstL: String = ""
    var SecondL: String= ""
    var border: String = ""
    var PunchL: String = ""


    appending(y: FirstL, symbol:"..")
    appending(y: SecondL, symbol:"..")


    for _ in stride(from: 0, to: c + 1, by: 1){

        if (x == 0){

          appending(y: FirstL, symbol:"+")
          appending(y: FirstL, symbol:"-")
          appending(y: SecondL, symbol:"|")
          appending(y: SecondL, symbol:".")
        }
        appending(y: border, symbol:"+")
        appending(y: border, symbol:"-")
        appending(y: PunchL, symbol:"|")
        appending(y: PunchL, symbol:".")


    }
    removeS(y:FirstL)
    removeS(y:FirstL)
    removeS(y:FirstL)
    removeS(y:SecondL)
    removeS(y:SecondL)
    removeS(y:SecondL)
    removeS(y:border)
    removeS(y:PunchL)

    print(FirstL)
    print(SecondL)

    for _ in stride(from: 0,to: r, by: 1){

        if (x < r - 1){
            print(PunchL)
        }
        x =x + 1

    }

}





func output(listt: [Int]){
    var case = 1

    var x: Int = 1
    var y: Int = 2



    for _ in stride(from: 0, to: listt[0], by: 1){

        let row = listt[x]
        let col = listt[y]
        print("Case: ", case)

        case1(r: row, c: col)

        case += 1
        x += 2
        y += 2
    }
}



output(listt: Input)
