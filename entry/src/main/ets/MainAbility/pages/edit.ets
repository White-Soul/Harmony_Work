import router from '@ohos.router';
@Entry
@Component
struct edit{
  build(){
    Column(){
//        输入标题
        TextInput({placeholder:"请输入标题"})
          .width("95%")
          .height(60)
          .margin(10)
          .borderRadius(20)
          .borderWidth(4)
          .borderColor(Color.Red)

//      输入框
      TextArea({placeholder: "请输入内容"})
        .width("95%")
        .height("80%")
        .fontColor(Color.Red)
        .fontStyle(FontStyle.Italic)
        .caretColor(Color.Red)
        .placeholderColor(Color.Green)
        .placeholderFont({
          size: 20,
          style: FontStyle.Italic,
          weight: FontWeight.Bold
        })
      Row(){
//        提交内容
        Button("确定")
          .width(80)
          .margin({right: 100})

        Button("取消")
          .width(80)
          .onClick(()=>{
            router.back()
          })
      }
      .margin({top: 20})
    }
    .width('100%')
    .height('100%')
  }
}