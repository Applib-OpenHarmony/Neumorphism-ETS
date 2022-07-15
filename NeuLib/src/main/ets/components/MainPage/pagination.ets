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
import strPagination from "./strPagination"
import strTheme from "./strTheme"

@Component
export struct pagination{
  @State pagination: strPagination.Model = new strPagination.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Column()
    {
      Row(){
        Button("<",{ type: ButtonType.Capsule, stateEffect: true,}).fontColor(this.pagination.getPagColor())
      .backgroundColor(this.theme.getBackgroundColor()).width(40).height(40).margin({left : 5})
        Button("1",{ type: ButtonType.Capsule, stateEffect: true,}).fontColor(this.pagination.getPagColor())
      .backgroundColor(this.theme.getBackgroundColor()).width(40).height(40)
        Button("2",{ type: ButtonType.Capsule, stateEffect: true,}).fontColor(this.pagination.getPagColor())
      .backgroundColor(this.theme.getBackgroundColor()).width(40).height(40)
        Button("3",{ type: ButtonType.Capsule, stateEffect: true,}).fontColor(this.pagination.getPagColor())
      .backgroundColor(this.theme.getBackgroundColor()).width(40).height(40)
        Button("4",{ type: ButtonType.Capsule, stateEffect: true,}).fontColor(this.pagination.getPagColor())
      .backgroundColor(this.theme.getBackgroundColor()).width(40).height(40)
        Button(">",{ type: ButtonType.Capsule, stateEffect: true,}).fontColor(this.pagination.getPagColor())
      .backgroundColor(this.theme.getBackgroundColor()).width(40).height(40)

      }.width(this.pagination.getPagWidth())
      .height(this.pagination.getPagHeight())
      .borderRadius(this.pagination.getPagborderRadius())
      .backgroundColor(this.theme.getBackgroundColor())
      .margin(this.theme.getMargin())
      .shadow({
        radius: 2*this.theme.getShadowRadius(),
        color: this.theme.getDownShadow()
      })
    }
  }
}

export {strPagination} from "./strPagination";





