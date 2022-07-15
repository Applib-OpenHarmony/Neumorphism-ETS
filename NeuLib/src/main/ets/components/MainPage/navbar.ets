/*
 * Copyright (C) 2022 Application Library Engineering Group
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import strNavbar from "./strNavbar"
import strTheme from "./strTheme"

@Component
export struct navbar{
  @State navbar: strNavbar.Model = new strNavbar.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Column()
    {
      Row({space : 70}){
        Button({ type: ButtonType.Capsule, stateEffect: true,}) {
            Image(this.navbar.getNavRecent()).width(20).height(20)
        }.backgroundColor(this.theme.getBackgroundColor()).margin({left : 30})

        Button({ type: ButtonType.Capsule, stateEffect: true,}) {
          Image(this.navbar.getNavHome()).width(20).height(20)
        }.backgroundColor(this.theme.getBackgroundColor())

        Button({ type: ButtonType.Capsule, stateEffect: true,}) {
          Image(this.navbar.getNavBack()).width(20).height(20)
        }.backgroundColor(this.theme.getBackgroundColor())

      }.width(this.navbar.getNavWidth())
      .height(this.navbar.getNavHeight())
      .borderRadius(this.navbar.getNavborderRadius())
      .backgroundColor(this.theme.getBackgroundColor())
      .margin(20)
      //      .shadow({ radius: this.theme.getShadowRadius(), color: this.theme.getDownShadow(), offsetX: this.theme.getOffsetXP(), offsetY: this.theme.getOffsetYP() })
      .shadow({
        radius: this.theme.getShadowRadius(),
        color: this.theme.getDownShadow(),
        offsetX: this.theme.getOffsetXP(),
        offsetY: this.theme.getOffsetYP()
      })
    }
  }
}

export {strNavbar} from "./strNavbar";





