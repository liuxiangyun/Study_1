import router from '@ohos.router'

@Entry
@Component
struct Index {
  @State message: Resource = $r('app.string.first_page')

  build() {
    Row({ space: 1 }) {
      Column({ space: 1 }) {
        if (true) {
          Text(this.message)
            .fontSize(50)
            .fontWeight(FontWeight.Bold)

        } else {
          Image($r('app.media.icon'))
        }
        MyButton().onClick(() => {
          router.pushUrl({ url: 'pages/Second' }).then(() => {
            console.debug("push success")
          }).catch(
            (reason: any) => {
              console.debug(reason)
            }
          ).finally()
        }) //.width('60%').backgroundColor(Color.Green)
      }
      .width('100%')
    }
    .height('100%')
  }

  onPageShow() {
    console.warn("index onPageShow()")
  }

  onPageHide() {
    console.warn("index onPageHide()")
  }

  onBackPress() {
    console.warn("index onBackPress()")
  }

  aboutToAppear() {
    console.warn("index aboutToAppear()")
  }

  aboutToDisappear() {
    console.warn("index aboutToDisappear()")
  }
}


@Component
struct MyButton {
  build() {
    Button($r('app.string.second_enter'), { type: ButtonType.Circle }).width('50%').backgroundColor(Color.Gray)
  }

  aboutToAppear() {
    console.log("MyButton aboutToAppear()")
  }

  aboutToDisappear() {
    console.warn("MyButton aboutToDisappear()")
  }
}
