import org.scalatest.{WordSpec, OneInstancePerTest, Matchers}

class FooTest extends WordSpec with OneInstancePerTest with Matchers {

   val sut = new Foo

   "Foo.f" should {
      "say blah" in {
         sut.f should be("blah")
      }
   }

}