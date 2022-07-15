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
import strAvatar from "./strAvatar"
import strTheme from "./strTheme"

@Component
export struct avatar{
  @State avatar: strAvatar.Model = new strAvatar.Model();
  @State theme: strTheme.Model = new strTheme.Model();

  build(){
    Image(this.avatar.getAvatarIcon())
      .width(this.avatar.getWidth())
      .height(this.avatar.getHeight())
      .borderRadius(this.avatar.getBorderRadius())
      .borderWidth(this.avatar.getBorderWidth())
      .borderColor(this.theme.getBackgroundColor())
      .shadow({ radius: 2*this.theme.getShadowRadius(),
        color: this.theme.getDownShadow()
      })
  }
}

export {strAvatar} from "./strAvatar";





