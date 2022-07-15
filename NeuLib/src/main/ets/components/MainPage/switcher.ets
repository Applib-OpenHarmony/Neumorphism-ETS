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
import strSwitcher from "./strSwitcher"
import strTheme from "./strTheme"

@Component
export struct switcher{
  @State switcher: strSwitcher.Model = new strSwitcher.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    if(this.switcher.getSwtchIsOn())
    {
      Column()
      {
        Button({type: ButtonType.Circle, stateEffect : true}).width(this.switcher.getSwtchHeight())
          .height(this.switcher.getSwtchHeight()).backgroundColor(this.switcher.getSwtchColor())
      }.alignItems(HorizontalAlign.Start)
      .width(this.switcher.getSwtchWidth())
      .height(this.switcher.getSwtchHeight())
      .borderRadius(this.switcher.getSwtchborderRadius())
      .backgroundColor(this.theme.getBackgroundColor())
      .margin(20).shadow({
        radius: 2*this.theme.getShadowRadius(),
        color: this.theme.getDownShadow()
      }).onClick(()=>{
        this.switcher.setSwtchIsOn()
      })
    }else
    {
      Column()
      {
        Button({type: ButtonType.Circle, stateEffect : true}).width(this.switcher.getSwtchHeight())
          .height(this.switcher.getSwtchHeight()).backgroundColor(this.switcher.getSwtchColor())
      }.alignItems(HorizontalAlign.End)
      .width(this.switcher.getSwtchWidth())
      .height(this.switcher.getSwtchHeight())
      .borderRadius(this.switcher.getSwtchborderRadius())
      .backgroundColor(this.theme.getBackgroundColor())
      .margin(20).shadow({
        radius: 2*this.theme.getShadowRadius(),
        color: this.theme.getDownShadow()
      }).onClick(()=>{
        this.switcher.setSwtchIsOn()
      })
    }
  }
}

export {strSwitcher} from "./strSwitcher";





