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
import strAlert from "./strAlert"
import strTheme from "./strTheme"

@Component
export struct alert{
  @State alert: strAlert.Model = new strAlert.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Column()
    {
      if(this.alert.getShow()) {
        Button({ type: ButtonType.Capsule, stateEffect: true,}) {
          Row({ space : 50 }) {
            Image(this.alert.getIcon()).width(20).height(20).margin({left : 15})
            Text(this.alert.getMsg()).fontSize(20).fontColor(this.theme.getTextColor()).margin({left : 20})
            Text("X").fontSize(20).fontColor(this.theme.getTextColor()).onClick(()=>{
              this.alert.setShow()
            }).margin({left : 20})
          }
        }
        .width(this.alert.getWidth())
        .height(this.alert.getHeight())
        .borderRadius(this.alert.getBorderRadius())
        .backgroundColor(this.theme.getBackgroundColor())
        .margin(this.theme.getMargin())
        .shadow({
          radius: 2*this.theme.getShadowRadius(),
          color: this.theme.getDownShadow()
        })
      }
    }
  }
}

export {strAlert} from "./strAlert";





