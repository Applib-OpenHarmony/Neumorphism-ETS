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
export namespace strCard{
  export class Model{
    imageAdd: string | Resource = ""
    width: number = 300
    height: number = 200
    borderRadius: number = 10
    borderWidth: number = 5
    borderColor: ResourceColor = 'white'

    setImageAdd(imageAdd: string | Resource): Model{
      this.imageAdd = imageAdd
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
    setBorderWidth(borderWidth: number): Model{
      this.borderWidth = borderWidth
      return this
    }
    setBorderColor(borderColor: ResourceColor): Model{
      this.borderColor = borderColor
      return this
    }
    getImageAdd(){
      return this.imageAdd
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
    getBorderWidth(){
      return this.borderWidth
    }
    getBorderColor(){
      return this.borderColor
    }

  }
}
export default strCard
