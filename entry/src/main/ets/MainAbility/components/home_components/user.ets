import router from '@ohos.router';
@Component
export default struct user {
  @State isLogin: boolean = true;

  build() {
    List({ space: 10 }) {
//      用户登录注销模块
      ListItem() {
        if (this.isLogin) {
          Row() {
            Image($r("app.media.icon"))
              .width(50)
              .height(50)
              .margin(20)
            Text("欢迎用户xxxx")
              .width(200)
              .fontSize(20)
              .textAlign(TextAlign.Center)
          }
          .size({ width: '100%', height: 80 })
          .backgroundColor(Color.Red)
        }
        else {
          Row() {
            Image($r("app.media.icon"))
              .width(50)
              .height(50)
              .margin(20)
            Text("登录/注册")
              .width(200)
              .fontSize(20)
              .textAlign(TextAlign.Center)
          }
          .size({ width: '100%', height: 80 })
        }
      }
      .height(100)
      .width('100%')
      .borderRadius(20)
      .clip(true)
      .backgroundColor(Color.Red)
//     用户是否登录，和进行操作文件
      if (this.isLogin) {
        ListItem() {
          Row() {
            Text("编辑新闻")
              .fontSize(24)
              .width("50%")
              .textAlign(TextAlign.Start)
            Text(">")
              .fontSize(30)
              .width("50%")
              .textAlign(TextAlign.End)
          }
          .width('100%')
          .height(50)
          .padding({ left: 20, right: 20 })
          .onClick(()=>{
            router.push({
              url: "pages/paper"
            })
          })
        }
        .borderRadius(10)
        .clip(true)
        .backgroundColor(Color.Red)

        ListItem() {
          Row() {
            Text("查看我的新闻")
              .fontSize(24)
              .width("50%")
              .textAlign(TextAlign.Start)
            Text(">")
              .fontSize(30)
              .width("50%")
              .textAlign(TextAlign.End)
          }
          .width('100%')
          .height(50)
          .padding({ left: 20, right: 20 })
          .onClick(()=>{
            router.push({
              url: "pages/paper"
            })
          })
        }
        .borderRadius(10)
        .clip(true)
        .backgroundColor(Color.Red)
      }
//      进入设置
      ListItem() {
        Row() {
          Text("设置")
            .fontSize(26)
            .width("50%")
            .textAlign(TextAlign.Start)
          Text(">")
            .fontSize(30)
            .width("50%")
            .textAlign(TextAlign.End)
        }
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })
      }
      .borderRadius(10)
      .clip(true)
      .backgroundColor(Color.Red)
//      随便写的文本占位置
      ListItem(){
        Row(){
          Text("学海无涯！！")
            .textAlign(TextAlign.Center)
            .fontSize(30)
            .height(400)
            .width("100%")
        }
        .height(400)
        .width("100%")
      }
      .borderRadius(10)
      .clip(true)
      .backgroundColor(Color.Red)
    }
    .width('100%')
    .height('100%')
    .padding(10)
  }
}