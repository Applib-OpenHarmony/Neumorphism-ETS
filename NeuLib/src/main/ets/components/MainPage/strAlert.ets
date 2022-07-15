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
export namespace strAlert{
  export class Model{
    alert_icon: string | Resource= ""
    alert_width: Length = 300
    alert_height: Length = 60
    alert_borderRadius: Length = 50
    alert_message: string = "Alert"
    alert_show : boolean = true

    setWidth(alert_width : Length) : Model{
      this.alert_width = alert_width
      return this
    }

    setHeight(alert_height: Length): Model{
      this.alert_height = alert_height
      return this
    }

    setBorderRadius(alert_borderRadius : Length) : Model{
      this.alert_borderRadius = alert_borderRadius
      return this
    }

    setMsg(alert_message: string): Model{
      this.alert_message = alert_message
      return this
    }

    setIcon(icon_address: string | Resource): Model{
      this.alert_icon = icon_address
      return this
    }

    setShow(){
      this.alert_show = false
      return this
    }

    getWidth(){
      return this.alert_width
    }

    getHeight(){
      return this.alert_height
    }

    getBorderRadius(){
      return this.alert_borderRadius
    }

    getMsg(){
      return this.alert_message
    }

    getIcon() {
      return this.alert_icon
    }

    getShow(){
      return this.alert_show
    }
  }
}
export default strAlert
