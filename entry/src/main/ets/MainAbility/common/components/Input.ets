@Component
export default struct Input {
  @Link inputValue: string
  @Prop placeholder: string
  @Prop label: string
  private inputType: InputType = InputType.Normal

  build(){
    Row({space: 5}){
      Text(this.label)
        .fontSize(18)
        .width("20%")
        .textAlign(TextAlign.Center)
      TextInput({
        placeholder: this.placeholder,
        text: this.inputValue
      }).onChange((value:string)=>{
        this.inputValue = value
      })
        .type(this.inputType)
        .width('80%')
        .height(40)
        .margin({top: 5})
        .border({width: 1, color: '#000'})
        .borderRadius(20)
        .backgroundColor("#fff")
    }
  }
}