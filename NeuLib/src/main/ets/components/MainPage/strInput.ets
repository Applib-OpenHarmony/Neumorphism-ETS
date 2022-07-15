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
export namespace strInput{
  export class Model{
    input_icon: string | Resource= ""
    input_show : boolean = true

    placeholder: string = "Input"
    type: InputType = InputType.Normal
    maxLength: number = 20
    width: number = 300
    height: number = 50
    borderRadius: number  = 50

    setIcon(icon: string | Resource): Model{
      this.input_icon = icon
      return this
    }
    setShow(show: boolean): Model{
      this.input_show = show
      return this
    }

    setPlaceholder(placeholder: string): Model{
      this.placeholder = placeholder
      return this
    }
    setType(type: InputType): Model{
      this.type = type
      return this
    }
    setMaxLength(maxLength: number): Model{
      this.maxLength = maxLength
      return this
    }
    setWidth(width: number): Model{
      this.width = width
      return this
    }
    setHeight(height: number): Model{
      this.height = height
      return this
    }
    setBorderRadius(borderRadius: number): Model{
      this.borderRadius = borderRadius
      return this
    }
    getIcon(){
      return this.input_icon
    }
    getShow(){
      return this.input_show
    }
    getPlaceholder(){
      return this.placeholder
    }
    getType(){
      return this.type
    }
    getMaxLength(){
      return this.maxLength
    }
    getWidth(){
      return this.width
    }
    getHeight(){
      return this.height
    }
    getBorderRadius(){
      return this.borderRadius
    }



  }
}
export default strInput
