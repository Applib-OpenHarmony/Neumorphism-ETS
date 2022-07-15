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
export namespace strSwitcher{
  export class Model{
    switcher_width: Length = 50
    switcher_height: Length = 20
    switcher_borderRadius: Length = 50
    switcher_color :  string | Resource = "black"
    switcher_isOn : boolean = true

    setSwtchWidth(switcher_width : Length) : Model{
      this.switcher_width = switcher_width
      return this
    }

    setSwtchHeight(switcher_height: Length): Model{
      this.switcher_height = switcher_height
      return this
    }

    setSwtchborderRadius(switcher_borderRadius : Length) : Model{
      this.switcher_borderRadius = switcher_borderRadius
      return this
    }

    setSwtchColor(switcher_color: string): Model{
      this.switcher_color = switcher_color
      return this
    }

    setSwtchIsOn(){
      this.switcher_isOn = !this.switcher_isOn
      return this
    }

    getSwtchWidth(){
      return this.switcher_width
    }

    getSwtchHeight(){
      return this.switcher_height
    }

    getSwtchborderRadius(){
      return this.switcher_borderRadius
    }

    getSwtchColor(){
      return this.switcher_color
    }

    getSwtchIsOn(){
      return this.switcher_isOn
    }
  }
}
export default strSwitcher
