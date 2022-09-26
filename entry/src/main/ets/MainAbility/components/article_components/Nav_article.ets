@Component
export default struct Nav_article{
  @State switchId: number = 1
  build(){
    Navigation() {                         // Navigation只能包含一个子组件
      Text('内容')
        .textAlign(TextAlign.Center)
        .fontSize(30)
        .width('100%')
        .height('100%')
        .backgroundColor('#aabbcc')
    }
    .size({width: '100%', height: '100%'})
    .title("文章")
  }

  @Builder toolbar() {// 通过builder自定义toolbar
    Row() {
      Column(){

      }
    }
    .width('100%')
    .height(60)
  }
}