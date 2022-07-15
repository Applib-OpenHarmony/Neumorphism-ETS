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
export namespace strPagination{
  export class Model{
    pagination_color: string | Resource = "black"
    pagination_width: Length = 300
    pagination_height: Length = 60
    pagination_borderRadius: Length = 50

    setPagWidth(pagination_width : Length) : Model{
      this.pagination_width = pagination_width
      return this
    }

    setPagHeight(pagination_height: Length): Model{
      this.pagination_height = pagination_height
      return this
    }

    setPagborderRadius(pagination_borderRadius : Length) : Model{
      this.pagination_borderRadius = pagination_borderRadius
      return this
    }

    setPagColor(pagination_color: string | Resource): Model{
      this.pagination_color = pagination_color
      return this
    }

    getPagWidth(){
      return this.pagination_width
    }

    getPagHeight(){
      return this.pagination_height
    }

    getPagborderRadius(){
      return this.pagination_borderRadius
    }

    getPagColor() {
      return this.pagination_color
    }
  }
}
export default strPagination
