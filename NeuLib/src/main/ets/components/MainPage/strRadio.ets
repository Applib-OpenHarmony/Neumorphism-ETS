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
export namespace strRadio{
  export class Model{
    radio_width: number = 50
    radio_height: number = 50
    radio_borderRadius: number = 50
    radio_color :  string | Resource = "black"
    radio_show : boolean = true

    setRadWidth(radio_width : number) : Model{
      this.radio_width = radio_width
      return this
    }

    setRadHeight(radio_height: number): Model{
      this.radio_height = radio_height
      return this
    }

    setRadborderRadius(radio_borderRadius : number) : Model{
      this.radio_borderRadius = radio_borderRadius
      return this
    }

    setRadColor(radio_color: string): Model{
      this.radio_color = radio_color
      return this
    }

    setRadShow(){
      this.radio_show = !this.radio_show
      return this
    }

    getRadWidth(){
      return this.radio_width
    }

    getRadHeight(){
      return this.radio_height
    }

    getRadborderRadius(){
      return this.radio_borderRadius
    }

    getRadColor(){
      return this.radio_color
    }

    getRadShow(){
      return this.radio_show
    }
  }
}
export default strRadio
