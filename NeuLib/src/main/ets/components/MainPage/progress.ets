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
import strProgress from "./strProgress"
import strTheme from "./strTheme"

@Component
export struct progress{
  @State progress: strProgress.Model = new strProgress.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Row(){
      Row(){
      }
      .width(((this.progress.getValue())*(this.progress.getWidth()))/100)
      .height(this.progress.getHeight())
      .borderRadius(this.progress.getBorderRadius())
      .backgroundColor(this.theme.getBackgroundColor())
      .shadow({
        radius: 2*this.theme.getShadowRadius(),
        color: this.theme.getDownShadow()
      })
    }.width(this.progress.getWidth())
    .height(this.progress.getHeight())
    .borderRadius(this.progress.getBorderRadius())
    .backgroundColor(this.theme.getBackgroundColor())
    .margin(this.theme.getMargin())
    .shadow({
      radius: 2*this.theme.getShadowRadius(),
      color: this.theme.getDownShadow()
    })

  }
}

export {strProgress} from "./strProgress";





