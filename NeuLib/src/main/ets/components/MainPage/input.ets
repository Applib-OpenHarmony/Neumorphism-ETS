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
import strInput from "./strInput"
import strTheme from "./strTheme"

@Component
export struct input{
  @State input: strInput.Model = new strInput.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Column()
    {
      Row() {
        if (this.input.getIcon()!="") {
          Image(this.input.getIcon())
            .width(this.input.getHeight()/2+this.input.getBorderRadius()/4)
            .height(this.input.getHeight()/2)
            .padding({left:this.input.getBorderRadius()/4})
        }
        TextInput({placeholder: this.input.getPlaceholder() })
          .type(this.input.getType())
          .maxLength(this.input.getMaxLength())
          .width(this.input.getWidth()-this.input.getHeight())
          .height(this.input.getHeight())
          .borderRadius(this.input.getBorderRadius())
          .backgroundColor(this.theme.getBackgroundColor())

      }
    }
    .width(this.input.getWidth())
    .height(this.input.getHeight())
    .borderRadius(this.input.getBorderRadius())
    .backgroundColor(this.theme.getBackgroundColor())
    .margin(this.theme.getMargin())
    .shadow({
      radius: 2*this.theme.getShadowRadius(),
      color: this.theme.getDownShadow()
    })
  }
}

export {strInput} from "./strInput";





