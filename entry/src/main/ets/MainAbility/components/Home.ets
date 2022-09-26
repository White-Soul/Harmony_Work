import Nav from "./home_components/Nav"

@Component
export default struct home {
  build() {
    Flex({direction: FlexDirection.Column, wrap: FlexWrap.NoWrap}){
      Nav()
    }
  }
}