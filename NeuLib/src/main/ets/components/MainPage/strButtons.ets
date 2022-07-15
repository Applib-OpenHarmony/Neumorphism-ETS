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
export namespace strButtons{
  export class Model{
    button_width: Length = 300
    button_height: Length = 60
    button_borderRadius: Length = 50
    button_message1: string = "Left"
    button_message2: string = "Right"
    msg_fontsize: number = 20

    setBtnMsg1(button_message1: string): Model{
      this.button_message1 = button_message1
      return this
    }
    setBtnMsg2(button_message2: string): Model{
      this.button_message2 = button_message2
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
    getBtnMsg1(){
      return this.button_message1
    }
    getBtnMsg2(){
      return this.button_message2
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
  }
}
export default strButtons
