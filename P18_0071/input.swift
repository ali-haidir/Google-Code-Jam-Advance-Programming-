import Cocoa

extension String{
    func fileN()-> String{
        return URL(fileURLWithPath: self).deletingPathExtension().lastPathComponent
    }

    func fileE()->String{
        return URL(fileURLWithPath: self).pathExtension
    }
}


func fileW(fileO:String ,data:String){

    let fileE=fileO.fileE()
    let fileN=fileO.fileN()

    let fileURL= FileManager.default.url(for: .documentDirectory, in: .userDomainMask, create: true)
    let fileO=fileURL.appendingPathComponent(fileN).appendingPathExtension(fileE)

    guard let data = data.data(using: .utf8) else{
        print("Unable to convert string to data")
        return
    }

    do{
        if (data.write(to: fileO)){
        print("Data written: \(data)")
    }
    else
    {
        print(error.localizedDescription)
    }
    }

}

var values :String=""

for i in 1...20{



var Row:Int = Int.random(in: 1..<11)
var Column:Int = Int.random(in: 1..<11)


values = values + String(Row)+String(Column)

print(values)
}
fileW(fileO: "temperorary.txt", data: values)
