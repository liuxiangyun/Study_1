@Component
export struct MainPage {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text($r('app.string.staticTest'))
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
    }
  }
}

export function test1(){

}


import native from "libnative.so"
export function nativeAdd(a: number, b: number) {
  let result: number = native.add(a, b);
  return result;
}
