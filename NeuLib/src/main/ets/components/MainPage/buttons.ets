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
import strButtons from "./strButtons"
import strTheme from "./strTheme"

@Component
export struct buttons{
  @State buttons: strButtons.Model = new strButtons.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Button({ type: ButtonType.Capsule, stateEffect: true }) {
      Row({space: 40}) {
        Text(this.buttons.getBtnMsg1())
          .fontSize(this.buttons.getMsgFontSize())
          .fontColor(0xffffff)
          .textAlign(TextAlign.Center)
        Text(this.buttons.getBtnMsg2())
          .fontSize(this.buttons.getMsgFontSize())
          .fontColor(0xffffff)
          .textAlign(TextAlign.Center)
      }
    }
    .width(this.buttons.getWidth())
    .height(this.buttons.getHeight())
    .backgroundColor(this.theme.getBackgroundColor())
    .borderRadius(this.buttons.getBorderRadius())
    .margin(this.theme.getMargin())
    .shadow({ radius: 2*this.theme.getShadowRadius(),
      color: this.theme.getDownShadow()})
  }
}

export {strButtons} from "./strButtons";





