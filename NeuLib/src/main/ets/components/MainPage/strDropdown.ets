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
export namespace strDropdown{
  export class Model{
    items: SelectOption[] = []
    defaultValue: string = "Select"
    width: number = 200
    height: number = 50
    borderRadius: number= 10
    setItems(items: SelectOption[]): Model{
      this.items = items
      return this
    }
    setDefaultValue(defaultValue: string): Model{
      this.defaultValue = defaultValue
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
    setBorderRadius(radius: number): Model{
      this.borderRadius = radius
      return this
    }
    getItems(){
      return this.items
    }
    getDefaultValue(){
      return this.defaultValue
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
export default strDropdown
