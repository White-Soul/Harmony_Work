@Component
export default struct msg {
  @State msg1: boolean = true
  @State msg2: boolean = true

  build() {
    List() {
      ListItem() {
        Row() {
          Text(this.msg1 ? "通过拉！！": "没通过^.^||")
            .fontSize(24)
            .size({ width: '40%', height: 100 })
          Text("你提交的文章审核已经通过拉")
            .fontSize(18)
            .size({ width: '60%', height: 100 })
        }
        .backgroundColor('#aabbcc')
      }
      .clip(true)
      .borderRadius(20)
    }
    .width('100%')
    .height('100%')
    .padding(10)
  }
}