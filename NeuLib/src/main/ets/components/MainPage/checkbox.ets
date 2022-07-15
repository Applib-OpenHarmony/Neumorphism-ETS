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
import strCheckbox from "./strCheckbox"
import strTheme from "./strTheme"

@Component
export struct checkbox{
  @State checkbox: strCheckbox.Model = new strCheckbox.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Column()
    {
      if(this.checkbox.getChckShow()) {
        Path()
          .fill(this.checkbox.getChckColor())
          .commands(`M${5} ${(this.checkbox.getChckN())/2} L ${15} ${(this.checkbox.getChckN())/2 + (this.checkbox.getChckN())/5} L ${(this.checkbox.getChckN())/2 + 5} ${(this.checkbox.getChckN())/4} L${15} ${3*(this.checkbox.getChckN())/5}`)
      }
    }.width(this.checkbox.getChckWidth())
    .height(this.checkbox.getChckHeight())
    .borderRadius(this.checkbox.getChckborderRadius())
    .backgroundColor(this.theme.getBackgroundColor())
    .margin(this.theme.getMargin())
    .shadow({
      radius: 2*this.theme.getShadowRadius(),
      color: this.theme.getDownShadow()
    }).onClick(()=>{
      this.checkbox.setChckShow()
    })
  }
}

export {strCheckbox} from "./strCheckbox";





