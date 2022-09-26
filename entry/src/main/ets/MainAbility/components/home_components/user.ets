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
              url: "pages/edit"
            })
          })
        }
        .borderRadius(10)
        .clip(true)
        .backgroundColor(Color.Red)
//      查看用户编辑过的新闻
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
        .borderRadius(10)
        .clip(true)
        .backgroundColor(Color.Red)
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })
        .onClick(function(){
          AlertDialog.show({ // 点击按钮，弹出一个对话框
            title: "抱歉", // 设置标题
            message: "这个功能暂时还没有实现哦", // 设置内容
            alignment: DialogAlignment.Center, // 设置弹窗的对齐方式
            confirm: { // 单个按钮的配置文本
              value: "确定",
              fontColor: Color.Blue,
              backgroundColor: "#aabbcc",
              action: () => {
              }
            }
          })
        }.bind(this))
      }
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