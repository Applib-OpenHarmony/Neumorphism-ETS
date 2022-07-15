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
import strButton from "./strButton"
import strTheme from "./strTheme"

@Component
export struct button{
  @State button: strButton.Model = new strButton.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Button({ type: ButtonType.Capsule, stateEffect: true }) {
      Row({space: this.button.getSpace()}) {
        if (this.button.getBtnIcon()!="") {
          Image(this.button.getBtnIcon())
            .width(this.button.getIconHeight())
            .height(this.button.getIconHeight())
          Text(this.button.getBtnMsg())
            .fontSize(this.button.getMsgFontSize())
            .fontColor(this.theme.getTextColor())

        }
        else {
          Text(this.button.getBtnMsg())
            .fontSize(this.button.getMsgFontSize())
            .fontColor(this.theme.getTextColor())
        }
      }
    }
    .width(this.button.getWidth())
    .height(this.button.getHeight())
    .borderRadius(this.button.getBorderRadius())
    .backgroundColor(this.theme.getBackgroundColor())
    .margin(this.theme.getMargin())
    .shadow({ radius: 2*this.theme.getShadowRadius(),
      color: this.theme.getDownShadow()})
  }
}

export {strButton} from "./strButton";





