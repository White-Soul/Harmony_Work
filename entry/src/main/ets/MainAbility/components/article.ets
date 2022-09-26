import Nav_article from './article_components/Nav_article';
@Component
export default struct article{
  build(){
    Flex({direction: FlexDirection.Column, wrap: FlexWrap.NoWrap}){
      Nav_article()
    }
  }
}