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
export namespace strLabel{
  export class Model{
    label_icon: string | Resource= ""
    label_width: number = 300
    label_height: number = 60
    label_borderRadius: number = 50
    label_message: string = "Label"

    setLblWidth(label_width : number) : Model{
      this.label_width = label_width
      return this
    }

    setLblHeight(label_height: number): Model{
      this.label_height = label_height
      return this
    }

    setLblborderRadius(label_borderRadius : number) : Model{
      this.label_borderRadius = label_borderRadius
      return this
    }

    setLblMsg(label_message: string): Model{
      this.label_message = label_message
      return this
    }

    setLblIcon(icon_address: string | Resource): Model{
      this.label_icon = icon_address
      return this
    }

    getLblWidth(){
      return this.label_width
    }

    getLblHeight(){
      return this.label_height
    }

    getLblborderRadius(){
      return this.label_borderRadius
    }

    getLblMsg(){
      return this.label_message
    }

    getLblIcon() {
      return this.label_icon
    }
  }
}
export default strLabel
