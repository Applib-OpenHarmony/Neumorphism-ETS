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
export namespace strButton{
  export class Model{
    button_icon: string | Resource= ""
    icon_width: number = 20
    icon_height: number = 20
    button_width: Length = 300
    button_height: Length = 60
    button_borderRadius: Length = 50
    button_message: string = "Button"
    msg_fontsize: number = 20
    space: number = 0

    setBtnMsg(button_message: string): Model{
      this.button_message = button_message
      return this
    }
    setBtnIcon(icon_address: string | Resource): Model{
      this.button_icon = icon_address
      return this
    }
    setWidth(width: number): Model{
      this.button_width = width
      return this
    }
    setBorderRadius(borderRadius: number): Model{
      this.button_borderRadius = borderRadius
      return this
    }
    setHeight(height: number): Model{
      this.button_height = height
      return this
    }
    setMsgFontsize(fontsize: number): Model{
      this.msg_fontsize = fontsize
      return this
    }
    setIconHeight(iconHeight: number): Model{
      this.icon_height = iconHeight
      return this
    }
    setIconWidth(iconWidth: number): Model{
      this.icon_width = iconWidth
      return this
    }
    setSpace(space: number): Model{
      this.space = space
      return this
    }
    getBtnMsg(){
      return this.button_message
    }
    getBtnIcon(){
      return this.button_icon
    }
    getWidth(){
      return this.button_width
    }
    getHeight(){
      return this.button_height
    }
    getBorderRadius(){
      return this.button_borderRadius
    }
    getMsgFontSize(){
      return this.msg_fontsize
    }
    getIconHeight(){
      return this.icon_height
    }
    getIconWidth(){
      return this.icon_width
    }
    getSpace(){
      return this.space
    }
  }
}
export default strButton
