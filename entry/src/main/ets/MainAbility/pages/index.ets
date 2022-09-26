import home from "../components/Home"

@Entry
@Component
struct Index {
  build() {
    Row(){
      home()
    }
  }
}