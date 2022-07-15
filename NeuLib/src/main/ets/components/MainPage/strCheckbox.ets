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
export namespace strCheckbox{
  export class Model{
    checkbox_width: string  | Length = 50
    checkbox_height: string | Length = 50
    checkbox_borderRadius: string | Length = 50
    checkbox_color :  string | Resource = "black"
    checkbox_show : boolean = true
    checkbox_n : number = 50

    setChckWidth(checkbox_width : string | Length) : Model{
      this.checkbox_width = checkbox_width
      return this
    }

    setChckHeight(checkbox_height: string | Length): Model{
      this.checkbox_height = checkbox_height
      return this
    }

    setChckborderRadius(checkbox_borderRadius : string | Length) : Model{
      this.checkbox_borderRadius = checkbox_borderRadius
      return this
    }

    setChckColor(checkbox_color: string): Model{
      this.checkbox_color = checkbox_color
      return this
    }

    setChckShow(): Model{
      this.checkbox_show = !this.checkbox_show
      return this
    }

    setChckN(checkbox_n : number): Model{
      this.checkbox_n = checkbox_n
      return this
    }

    getChckWidth(){
      return this.checkbox_width
    }

    getChckHeight(){
      return this.checkbox_height
    }

    getChckborderRadius(){
      return this.checkbox_borderRadius
    }

    getChckColor(){
      return this.checkbox_color
    }

    getChckShow(){
      return this.checkbox_show
    }

    getChckN(){
      return this.checkbox_n
    }

  }
}
export default strCheckbox
