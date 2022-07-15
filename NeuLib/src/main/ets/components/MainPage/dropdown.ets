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
import strDropdown from "./strDropdown"
import strTheme from "./strTheme"

@Component
export struct dropdown{
  @State dropdown: strDropdown.Model = new strDropdown.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Select(this.dropdown.getItems())
      .value(this.dropdown.getDefaultValue())
      .fontColor(this.theme.getTextColor())
      .width(this.dropdown.getWidth())
      .height(this.dropdown.getHeight())
      .borderRadius(this.dropdown.getBorderRadius())
      .margin(this.theme.getMargin())
      .backgroundColor(this.theme.getBackgroundColor())
      .shadow({ radius: 2*this.theme.getShadowRadius(),
        color: this.theme.getDownShadow()
      })
  }
}

export {strDropdown} from "./strDropdown";





