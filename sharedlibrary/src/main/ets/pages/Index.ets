@Entry
@Component
export  struct Index {
  @State message: string = 'HSP PAGE '

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Text($r('app.string.staticTest'))
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}

import { MainPage, test1, nativeAdd } from 'staticlib'