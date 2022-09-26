import router from '@ohos.router';
@Component
export default struct paper{
  build(){
    List({space: 10}){
      ListItem() {                            // List的子组件只能是ListItem
          Text('Text1')
            .size({width: '100%', height: 100})
            .fontSize(26)
            .backgroundColor('#aabbcc')
            .onClick(()=>{
              router.push({
                url: "pages/paper"
              })
            })
      }
      .clip(true)
      .borderRadius(20)
      ListItem() {                            // List的子组件只能是ListItem
        Text('Text2')
          .size({width: '100%', height: 100})
          .fontSize(26)
          .backgroundColor('#aabbcc')
          .onClick(()=>{
            router.push({
              url: "pages/paper"
            })
          })
      }
      .clip(true)
      .borderRadius(20)
      ListItem() {                            // List的子组件只能是ListItem
        Text('Text3')
          .size({width: '100%', height: 100})
          .fontSize(26)
          .backgroundColor('#aabbcc')
          .onClick(()=>{
            router.push({
              url: "pages/paper"
            })
          })
      }
      .clip(true)
      .borderRadius(20)
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor(Color.Pink)
  }

}