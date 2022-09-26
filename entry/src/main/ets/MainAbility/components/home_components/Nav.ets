import user from './user';
import msg from './user_msg';
import paper from './list_paper';
@Component
export default struct Nav {

  @State index: number = 2;// 选项卡下标，默认为第一个
//  下方导航
  @Builder toolbar() {// 通过builder自定义toolbar
    Row() {
      Column() {
        Image(this.index == 0 ? 'pages/icon_message_selected.png' : 'pages/icon_message_normal.png')
          .size({width: 25, height: 25})
        Text('消息')
          .fontSize(16)
          .fontColor(this.index == 0 ? "#2a58d0" : "#6b6b6b")
      }
      .alignItems(HorizontalAlign.Center)
      .height('100%')
      .layoutWeight(1)
      .onClick(() => {
        this.index = 0;
      })

      Column() {
        Image(this.index == 1 ? 'pages/icon_contract_selected.png' : 'pages/icon_contract_normal.png')
          .size({width: 25, height: 25})
        Text('主页')
          .fontSize(16)
          .fontColor(this.index == 1 ? "#2a58d0" : "#6b6b6b")
      }
      .alignItems(HorizontalAlign.Center)
      .height('100%')
      .layoutWeight(1)
      .onClick(() => {
        this.index = 1;
      })

      Column() {
        Image(this.index == 2 ? 'pages/icon_dynamic_selected.png' : 'pages/icon_dynamic_normal.png')
          .size({width: 25, height: 25})
        Text('个人中心')
          .fontSize(16)
          .fontColor(this.index == 2 ? "#2a58d0" : "#6b6b6b")
      }
      .alignItems(HorizontalAlign.Center)
      .height('100%')
      .layoutWeight(1)
      .onClick(() => {
        this.index = 2;
      })
    }
    .width('100%')
    .height(60)
  }
//  上方标题
  @Builder home_title(){
      Row() {
        Text("主页")
          .height(50)
          .fontSize(20)
          .textAlign(TextAlign.Center)
          .width("100%")
        //          .borderWidth(1)
      }
      .width("100%")
      .height(60)
  }
// 右上方设置
  @Builder home_setting(){
    if(this.index != 2)
      Row(){
        Text("设置")
          .textAlign(TextAlign.Center)
          .fontSize(20)
      }
      .height(60)
  }

  build() {
    Navigation() {
      if(this.index == 1)
        paper()
      else if(this.index == 0)
        msg()
      else if(this.index == 2){
        user()
      }
//      只能放入一个组件
//      Text(this.index == 0 ? "消息" : this.index == 1 ? "联系人" : "动态")
//        .textAlign(TextAlign.Center)
//        .fontSize(30)
//        .size({width: '100%', height: '100%'})
//        .backgroundColor('#aabbcc')
    }
    .size({width: '100%', height: '100%'})
//    定义标题栏
//    .title("标题栏")
    .title(this.home_title())
    .toolBar(this.toolbar())
    .hideBackButton(this.index == 1 ? true :false )
    .menus(this.home_setting())
    //  右上方设置
//    .menus([{
//      value: "设置",
//      icon: "图片",
////      回调
//      action: ()=>{}
//            }])
  }
}