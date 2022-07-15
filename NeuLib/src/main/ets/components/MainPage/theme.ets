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
import strTheme from "./strTheme"

@Component
export struct Theme{
  @State theme: strTheme.Model = new strTheme.Model();
  public aboutToAppear(): void {
    if (this.theme.getMode() == "default"){
      this.theme.setBackgroundColor(0xE0EAF9)
      this.theme.setDownShadow(0xbebebe)
      this.theme.setUpShadow(0xffffff)
    }
    else if(this.theme.getMode() == "light_mode") {
      this.theme.setBackgroundColor(0xECF0F3)
      this.theme.setDownShadow(0xc9cccf)
      this.theme.setUpShadow(0xffffff)
    }
    else if(this.theme.getMode() == "dark_theme") {
      this.theme.setBackgroundColor(0x303234)
      this.theme.setDownShadow(0x292b2c)
      this.theme.setUpShadow(0x373a3c)
    }
    else if(this.theme.getMode() == "white") {
      this.theme.setBackgroundColor(0xebebeb)
      this.theme.setDownShadow(0xc8c8c8)
      this.theme.setUpShadow(0xffffff)
    }
    else if(this.theme.getMode() == "silver") {
      this.theme.setBackgroundColor(0xc0c0c0)
      this.theme.setDownShadow(0xa3a3a3)
      this.theme.setUpShadow(0xdddddd)
    }
    else if(this.theme.getMode() == "gray") {
      this.theme.setBackgroundColor(0x808080)
      this.theme.setDownShadow(0x6d6d6d)
      this.theme.setUpShadow(0x939393)
    }
    else if(this.theme.getMode() == "black") {
      this.theme.setBackgroundColor(0x292929)
      this.theme.setDownShadow(0x232323)
      this.theme.setUpShadow(0x2f2f2f)
    }
    else if(this.theme.getMode() == "red") {
      this.theme.setBackgroundColor(0xe22828)
      this.theme.setDownShadow(0xc02222)
      this.theme.setUpShadow(0xff2e2e)
    }
    else if(this.theme.getMode() == "maroon") {
      this.theme.setBackgroundColor(0x800000)
      this.theme.setDownShadow(0x6d0000)
      this.theme.setUpShadow(0x930000)
    }
    else if(this.theme.getMode() == "yellow") {
      this.theme.setBackgroundColor(0xe2e236)
      this.theme.setDownShadow(0xc0c02e)
      this.theme.setUpShadow(0xffff3e)
    }
    else if(this.theme.getMode() == "olive") {
      this.theme.setBackgroundColor(0x808000)
      this.theme.setDownShadow(0x6d6d00)
      this.theme.setUpShadow(0x939300)
    }
    else if(this.theme.getMode() == "lime") {
      this.theme.setBackgroundColor(0x10e010)
      this.theme.setDownShadow(0x0ebe0e)
      this.theme.setUpShadow(0x12ff12)
    }
    else if(this.theme.getMode() == "dark_theme") {
      this.theme.setBackgroundColor(0x303234)
      this.theme.setDownShadow(0x292b2c)
      this.theme.setUpShadow(0x373a3c)
    }
    else if(this.theme.getMode() == "green") {
      this.theme.setBackgroundColor(0x008000)
      this.theme.setDownShadow(0x00d00)
      this.theme.setUpShadow(0x009300)
    }
    else if(this.theme.getMode() == "aqua") {
      this.theme.setBackgroundColor(0x22e2e2)
      this.theme.setDownShadow(0x1dc0c0)
      this.theme.setUpShadow(0x27ffff)
    }
    else if(this.theme.getMode() == "teal") {
      this.theme.setBackgroundColor(0x008080)
      this.theme.setDownShadow(0x006d6d)
      this.theme.setUpShadow(0x009393)
    }
    else if(this.theme.getMode() == "blue") {
      this.theme.setBackgroundColor(0x2a2ad5)
      this.theme.setDownShadow(0x2424b5)
      this.theme.setUpShadow(0x3030f5)
    }
    else if(this.theme.getMode() == "navy") {
      this.theme.setBackgroundColor(0x000080)
      this.theme.setDownShadow(0x00006d)
      this.theme.setUpShadow(0x000093)
    }
    else if(this.theme.getMode() == "pink") {
      this.theme.setBackgroundColor(0xd750d7)
      this.theme.setDownShadow(0xb744b7)
      this.theme.setUpShadow(0xf75f7)
    }
    else if(this.theme.getMode() == "purple") {
      this.theme.setBackgroundColor(0x800080)
      this.theme.setDownShadow(0x6d006d)
      this.theme.setUpShadow(0x930093)
    }
    else {
      this.theme.setBackgroundColor(0xE0EAF9)
      this.theme.setDownShadow(0xbebebe)
      this.theme.setUpShadow(0xffffff)
    }
  }
  //color of flex can be passed through {{color}}.
  build() {

  }
}

export {strTheme} from "./strTheme";





