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
export namespace strAvatar{
  export class Model{
    avatar_icon: string | Resource= ""
    avatar_width: Length = 100
    avatar_height: Length = 100
    avatar_borderRadius: Length = 50
    borderWidth: number = 7.5


    setAvatarIcon(icon_address: string | Resource): Model{
      this.avatar_icon = icon_address
      return this
    }
    setWidth(width: number): Model{
      this.avatar_width = width
      return this
    }
    setBorderRadius(borderRadius: number): Model{
      this.avatar_borderRadius = borderRadius
      return this
    }
    setHeight(height: number): Model{
      this.avatar_height = height
      return this
    }
    setBorderWidth(borderWidth: number): Model{
      this.borderWidth = borderWidth
      return this
    }
    getAvatarIcon(){
      return this.avatar_icon
    }
    getWidth(){
      return this.avatar_width
    }
    getHeight(){
      return this.avatar_height
    }
    getBorderRadius(){
      return this.avatar_borderRadius
    }
    getBorderWidth(){
      return this.borderWidth
    }
  }
}
export default strAvatar
