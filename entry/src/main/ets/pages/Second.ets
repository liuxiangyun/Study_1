import router from '@ohos.router'

@Entry
@Component
struct Second {
  @State message: Resource = $r('app.string.second_page')
  enterClick = () => {
    router.pushUrl({ url: '@bundle:com.example.study_1/sharedlibrary/ets/pages/Index' })
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text($r('app.string.third_enter')).fontColor('#FF0000').fontSize('30fp').fontWeight(500)
            .onClick(function(){

            }.bind(this))
        }.width('50%').height('10%').onClick(this.enterClick)
      }
      .width('100%')
    }
    .height('100%')
  }
}