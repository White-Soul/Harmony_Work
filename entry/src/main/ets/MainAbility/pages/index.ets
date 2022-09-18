import Input from "../common/components/Input"

@Entry
@Component
struct Index {
  @State password: string = ""
  @State username: string = "123456"
  private username_reg = /^[A-Za-z0-9]{5,8}$/;

//  onPageShow(){
//    let test_res = this.username_reg.test(this.username)
//  }

  build() {
    Flex({
      direction:FlexDirection.Column,
      justifyContent: FlexAlign.Center,
      alignItems: ItemAlign.Center})
    {
      Text('登录')
        .fontSize(40)
        .fontWeight(700)
        if(!this.username_reg.test(this.username)) {
          Text("用户名至少5-8位,英文或数字")
            .fontSize(12)
            .fontWeight(700)
            .width("80%")
            .fontColor("#ff0000")
        }

      Input({label: "用户名",
        placeholder:"输入用户名",
        inputValue:$username,
        inputType: InputType.Normal
      })
      Input({label: "密码",
        placeholder:"输入密码",
        inputValue:$password,
        inputType: InputType.Password
      })
      Button('登录')
        .margin({top: 5})
    }.width('100%')
    .height('100%')
    .backgroundColor("#DCDCDC")
//    .border({width:10, color:'#000'})
    .padding(10)
  }
}