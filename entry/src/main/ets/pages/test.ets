import router from '@ohos.router'
class routerParams {
  src: string = ''
}

@Entry
@Component
struct Test {
  @State message: string = 'test'
  @State params: routerParams = router.getParams() as routerParams

  build() {
    Row() {
      Column() {
        Text(this.params.src)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('back')
          .onClick(() => router.back())
      }
      .width('100%')
    }
    .height('100%')
  }
}