import router from '@ohos.router'
import { MainPage, test1, nativeAdd } from 'staticlibrary'

@Entry
@Component
struct Second {
  @State message: Resource = $r('app.string.second_page')
  enterClick = () => {
    router.pushUrl({ url: '@bundle:com.example.study_1/sharedlibrary/ets/pages/Index' })

    test1()

    // nativeAdd(1, 1)
  }

  build() {
    Row() {
      Column() {
        MainPage()
        Text($r('app.string.staticTest'))
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text($r('app.string.third_enter')).fontColor('#FF0000').fontSize('30fp').fontWeight(500)
            .onClick(() => {
              this.enterClick()
            })
        }.width('50%').height('10%').onClick(this.enterClick)
      }
      .width('100%')
    }
    .height('100%')
  }
}