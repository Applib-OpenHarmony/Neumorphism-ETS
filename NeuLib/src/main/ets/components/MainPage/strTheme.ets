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
export namespace strTheme{
  export class Model{
    FlexDirection: FlexDirection = FlexDirection.Column//'Column'
    FlexAlign: FlexAlign = FlexAlign.Center
    ItemAlign: ItemAlign = ItemAlign.Center
    FlexColor: string = 'black'
    mode: string = 'default'
    textColor: ResourceColor = 'black'
    BackgroundColor: ResourceColor = 0xE0EAF9
    upShadow: ResourceColor = 0xffffff
    downShadow: ResourceColor = 0xbebebe
    shadowRadius: number = 20
    offsetXP: number = 10
    offsetYP: number = 10
    offsetXN: number = -10
    offsetYN: number = -10
    margin: number = 10


    setMode(mode: string): Model{
      this.mode = mode
      return this
    }
    setTextColor(textColor: ResourceColor): Model{
      this.textColor = textColor
      return this
    }
    setFlexDirection(FlexDirection: FlexDirection): Model{
      this.FlexDirection = FlexDirection
      return this
    }
    setFlexAlign(FlexAlign: FlexAlign): Model{
      this.FlexAlign = FlexAlign
      return this
    }
    setItemAlign(ItemAlign: ItemAlign): Model{
      this.ItemAlign = ItemAlign
      return this
    }
    setColor(FlexColor: string): Model{
      this.FlexColor = FlexColor
      return this
    }
    setBackgroundColor(BackgroundColor: ResourceColor): Model{
      this.BackgroundColor = BackgroundColor
      return this
    }
    setUpShadow(upShadow: ResourceColor): Model{
      this.upShadow = upShadow
      return this
    }
    setDownShadow(downShadow: ResourceColor): Model{
      this.downShadow = downShadow
      return this
    }
    setShadowRadius(shadowRadius: number): Model{
      this.shadowRadius = shadowRadius
      return this
    }
    setMargin(margin: number){
      this.margin = margin
      return this
    }
    getMode(){
      return this.mode
    }
    getTextColor(){
      return this.textColor
    }
    getFlexDirection(){
      return this.FlexDirection
    }
    getFlexAlign(){
      return this.FlexAlign
    }
    getItemAlign(){
      return this.ItemAlign
    }
    getColor(){
      return this.FlexColor
    }
    getBackgroundColor(){
      return this.BackgroundColor
    }
    getUpShadow(){
      return this.upShadow
    }
    getDownShadow(){
      return this.downShadow
    }
    getShadowRadius(){
      return this.shadowRadius
    }
    getOffsetXP(){
      return this.offsetXP
    }
    getOffsetYP(){
      return this.offsetYP
    }
    getOffsetXN(){
      return this.offsetXN
    }
    getOffsetYN(){
      return this.offsetYN
    }
    getMargin(){
      return this.margin
    }

  }
}
export default strTheme