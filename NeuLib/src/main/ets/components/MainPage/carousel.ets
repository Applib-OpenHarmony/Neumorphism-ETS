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
import strCarousel from "./strCarousel"
import strTheme from "./strTheme"
import strCard from "./strCard"

@Component
export struct carousel{
  @State carousel: strCarousel.Model = new strCarousel.Model();
  @State theme: strTheme.Model = new strTheme.Model();
  private swiperController: SwiperController = new SwiperController()


  build(){
    Swiper(this.swiperController) {
      ForEach(this.carousel.getImageArray(),
        (image: string) => {

          Image(image)
            .width(this.carousel.getWidth()-2*this.carousel.getBorderWidth())
            .height(this.carousel.getHeight()-2*this.carousel.getBorderWidth())
            .borderRadius(this.carousel.getBorderRadius())
        },
        (image: string) => image.toString()
      )
    }
    .index(this.carousel.getIndex())
    .autoPlay(false)
    .indicator(this.carousel.getIndicator())
    .indicatorStyle({selectedColor: this.carousel.getIndicatorColor(), color: 'white'})
    .loop(this.carousel.getLoop())
    .vertical(false)
    .borderWidth(this.carousel.getBorderWidth())
    .borderColor(this.theme.getBackgroundColor())
    .borderRadius(this.carousel.getBorderRadius())
    .margin(this.theme.getMargin())
    .shadow({ radius: 2*this.theme.getShadowRadius(),
      color: this.theme.getDownShadow()
    });
  }
}

export {strCarousel} from "./strCarousel";





