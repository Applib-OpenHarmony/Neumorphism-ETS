
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
 */import strRadio from "./strRadio"
import strTheme from "./strTheme"

@Component
export struct radio{
  @State radio: strRadio.Model = new strRadio.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Column()
    {
      if(this.radio.getRadShow()) {
        Button({ type: ButtonType.Capsule, stateEffect: true,})
        .width(this.radio.getRadWidth())
        .height(this.radio.getRadHeight())
        .borderRadius(this.radio.getRadborderRadius())
        .backgroundColor(this.radio.getRadColor())
        .borderWidth(this.radio.getRadWidth()/4).borderColor(this.theme.getBackgroundColor())
        .margin(this.theme.getMargin())
        .shadow({
          radius: 2*this.theme.getShadowRadius(),
          color: this.theme.getDownShadow()
        }).onClick(() =>{
          this.radio.setRadShow()
        })
      }else{
        Button({ type: ButtonType.Capsule, stateEffect: true,})
          .width(this.radio.getRadWidth())
          .height(this.radio.getRadHeight())
          .borderRadius(this.radio.getRadborderRadius())
          .backgroundColor(this.theme.getBackgroundColor())
          .borderWidth(this.radio.getRadWidth()/4).borderColor(this.theme.getBackgroundColor())
          .margin(this.theme.getMargin())
          .shadow({
            radius: 2*this.theme.getShadowRadius(),
            color: this.theme.getDownShadow()
          }).onClick(() =>{
            this.radio.setRadShow()
          })
      }
    }
  }
}

export {strRadio} from "./strRadio";





