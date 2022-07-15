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
export namespace strNavbar{
  export class Model{
    navbar_recent: string | Resource = ""
    navbar_home: string | Resource = ""
    navbar_back: string | Resource = ""
    navbar_width: Length = 300
    navbar_height: Length = 60
    navbar_borderRadius: Length = 50

    setNavWidth(navbar_width : Length) : Model{
      this.navbar_width = navbar_width
      return this
    }

    setNavHeight(navbar_height: Length): Model{
      this.navbar_height = navbar_height
      return this
    }

    setNavborderRadius(navbar_borderRadius : Length) : Model{
      this.navbar_borderRadius = navbar_borderRadius
      return this
    }

    setNavRecent(recent_address: string | Resource): Model{
      this.navbar_recent = recent_address
      return this
    }

    setNavHome(home_address: string | Resource): Model{
      this.navbar_home = home_address
      return this
    }

    setNavBack(back_address: string | Resource): Model{
      this.navbar_back = back_address
      return this
    }

    getNavWidth(){
      return this.navbar_width
    }

    getNavHeight(){
      return this.navbar_height
    }

    getNavborderRadius(){
      return this.navbar_borderRadius
    }

    getNavRecent() {
      return this.navbar_recent
    }

    getNavHome() {
      return this.navbar_home
    }

    getNavBack() {
      return this.navbar_back
    }
  }
}
export default strNavbar
