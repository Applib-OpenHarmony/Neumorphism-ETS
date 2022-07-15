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
export namespace strCarousel{
  export class Model{
    imageArray: string[] | Resource[] = []
    width: number = 300
    height: number = 200
    borderRadius: number = 10
    borderWidth: number = 5
    borderColor: ResourceColor = 'white'
    index: number = 0
    indicator: boolean = true
    indicatorColor: ResourceColor = 'black'
    loop: boolean = true

    setImageArray(imageArray: string[] | Resource[]): Model{
      this.imageArray = imageArray
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
    setIndex(index: number): Model{
      this.index = index
      return this
    }
    setIndicator(indicator: boolean): Model{
      this.indicator = indicator
      return this
    }
    setIndicatorColor(indicatorColor: ResourceColor): Model{
      this.indicatorColor = indicatorColor
      return this
    }
    setLoop(loop: boolean): Model{
      this.loop = loop
      return this
    }
    getImageArray(){
      return this.imageArray
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
    getIndex(){
      return this.index
    }
    getIndicator(){
      return this.indicator
    }
    getIndicatorColor(){
      return this.indicatorColor
    }
    getLoop(){
      return this.loop
    }


  }
}
export default strCarousel
