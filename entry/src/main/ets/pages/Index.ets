import router from '@ohos.router'

class routerParams {
  src: string
  constructor(str: string) {
    this.src = str
  }
}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World Change'

  build() {
    Row() {
      Column() {
        Button('Next')
          .fontColor('#ff0000')
          .onClick(() => router.pushUrl({url: 'pages/test', params: new routerParams('Index数据')}))
      }
      .width('100%')
    }
    .height('100%')
  }
}