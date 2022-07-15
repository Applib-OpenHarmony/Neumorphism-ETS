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
import {Theme,strTheme,button,strButton,buttons,strButtons,avatar,strAvatar,dropdown} from '@ohos/neulib'
import {strDropdown,input,strInput,card,strCard,carousel,strCarousel,progress,strProgress} from '@ohos/neulib'
import {alert,strAlert,label,strLabel,navbar,strNavbar,pagination,strPagination,radio} from '@ohos/neulib'
import {switcher,strRadio,strSwitcher,checkbox,strCheckbox} from '@ohos/neulib'

import prompt from '@system.prompt';

@Entry
@Component
struct Index {
  @State arrImage: string[] | Resource[] = [$r('app.media.avatar'),$r('app.media.avatar'),$r('app.media.avatar')]
  scroller: Scroller = new Scroller();
  @State theme: strTheme.Model = new strTheme.Model();
  button: strButton.Model = new strButton.Model();
  buttons: strButtons.Model = new strButtons.Model();
  avatar: strAvatar.Model = new strAvatar.Model();
  dropdown: strDropdown.Model = new strDropdown.Model();
  input: strInput.Model = new strInput.Model();
  card: strCard.Model = new strCard.Model();
  carousel: strCarousel.Model = new strCarousel.Model();
  progress: strProgress.Model = new strProgress.Model();
  emailInput: strInput.Model = new strInput.Model();
  passwordInput: strInput.Model = new strInput.Model();
  submit: strButton.Model = new strButton.Model();
  reset: strButton.Model = new strButton.Model();
  radio: strRadio.Model = new strRadio.Model();
  alert: strAlert.Model = new strAlert.Model();
  label : strLabel.Model = new strLabel.Model();
  navbar : strNavbar.Model = new strNavbar.Model();
  pagination : strPagination.Model = new strPagination.Model();
  switcher : strSwitcher.Model = new strSwitcher.Model();
  checkbox : strCheckbox.Model = new strCheckbox.Model();

  private swiperController: SwiperController = new SwiperController()

  @State message: string = 'Hello World';
  items: SelectOption[] = [
    {value:"Item1"},{value:'Item2'},{value:'Item3'}, {value:'Item4'}, {value:'Item5'}];


  public aboutToAppear(): void {
    this.updateModel()
  }

  updateModel(){
    this.theme.setMode('yellow')
    this.theme.setTextColor('black')
    this.theme.setMargin(20)
    this.avatar.setAvatarIcon($r('app.media.avatar'))
    this.alert.setMsg('Alert!')
    this.alert.setIcon($r('app.media.heart'))
    this.alert.setWidth(300)
    this.alert.setHeight(60)
    this.alert.setBorderRadius(50)
    this.button.setBtnMsg('Button')
    this.button.setBtnIcon($r('app.media.heart'))
    this.button.setSpace(80)
    this.buttons.setBtnMsg1('Left')
    this.buttons.setBtnMsg2('Right')
    this.label.setLblMsg('Label')
    this.label.setLblIcon($r('app.media.heart'))
    this.label.setLblWidth(250)
    this.label.setLblHeight(50)
    this.label.setLblborderRadius(50)
    this.dropdown.setItems(this.items)
    this.dropdown.setDefaultValue('Item5')
    this.navbar.setNavRecent($r('app.media.recent'))
    this.navbar.setNavHome($r('app.media.home'))
    this.navbar.setNavBack($r('app.media.return'))
    this.navbar.setNavWidth(250)
    this.navbar.setNavHeight(50)
    this.navbar.setNavborderRadius(50)
    this.pagination.setPagColor("black")
    this.pagination.setPagWidth(250)
    this.pagination.setPagHeight(50)
    this.pagination.setPagborderRadius(50)
    this.radio.setRadColor("white")
    this.radio.setRadWidth(40)
    this.radio.setRadHeight(40)
    this.radio.setRadborderRadius(50)
    this.switcher.setSwtchColor("white")
    this.switcher.setSwtchWidth(40)
    this.switcher.setSwtchHeight(20)
    this.switcher.setSwtchborderRadius(10)
    this.checkbox.setChckColor("white")
    this.checkbox.setChckWidth("100px")
    this.checkbox.setChckHeight("100px")
    this.checkbox.setChckN(100)
    this.checkbox.setChckborderRadius(50)
    this.input.setIcon($r('app.media.user'))
    this.input.setPlaceholder('Input')
    this.input.setWidth(200)
    this.input.setHeight(40)
    this.input.setBorderRadius(50)
    this.input.setType(InputType.Normal)
    this.input.setMaxLength(20)

    this.card.setImageAdd($r('app.media.placeholder'))
    this.carousel.setImageArray([$r('app.media.placeholder'), $r('app.media.placeholder'), $r('app.media.placeholder')])
    this.progress.setValue(60)
    this.emailInput.setPlaceholder('Email')
    this.emailInput.setIcon($r('app.media.user'))
    this.emailInput.setType(InputType.Email)
    this.emailInput.setWidth(200)
    this.passwordInput.setPlaceholder('Password')
    this.passwordInput.setType(InputType.Password)
    this.passwordInput.setWidth(200)
    this.submit.setBtnMsg('Submit')
    this.submit.setBtnIcon('')
    this.submit.setWidth(90)
    this.submit.setHeight(45)
    this.reset.setBorderRadius(5)
    this.reset.setBtnMsg('Reset')
    this.reset.setBtnIcon('')
    this.reset.setWidth(90)
    this.reset.setHeight(45)
    this.reset.setBorderRadius(0)

  }

  build() {
  Scroll(this.scroller) {
    //Row() {
      Column() {
        Theme({ theme: this.theme })
        Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {

          Text('Neumorphism')
            .fontSize('40')
            .height('10%')
            .width('90%')
            .textAlign(TextAlign.Center)
            .fontColor(this.theme.getTextColor())

          alert({alert : this.alert, theme : this.theme})
          avatar({ avatar: this.avatar, theme: this.theme })
          button({ button: this.button, theme: this.theme })
          //buttons({ buttons: this.buttons, theme: this.theme })
          navbar({ navbar: this.navbar, theme: this.theme })
//          dropdown({ dropdown: this.dropdown, theme: this.theme })
//          input({ input: this.input, theme: this.theme })
//          radio({radio: this.radio, theme: this.theme})
          progress({ progress: this.progress, theme: this.theme })
//          label({label : this.label ,theme : this.theme})
//          pagination({ pagination: this.pagination, theme: this.theme })
//          switcher({ switcher: this.switcher, theme: this.theme })
//          checkbox({ checkbox: this.checkbox, theme: this.theme })
//          input({ input: this.input, theme: this.theme })
          //card({ card: this.card, theme: this.theme })
          carousel({ carousel: this.carousel, theme: this.theme })

//          Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
//            input({ input: this.emailInput, theme: this.theme })
//            input({ input: this.passwordInput, theme: this.theme })
//            Row() {
//              button({ button: this.submit, theme: this.theme })
//              button({ button: this.reset, theme: this.theme })
//            }
//          }
//          .backgroundColor(this.theme.getBackgroundColor())
//          .width('750px')
//          .height('700px')
//          .borderRadius('50px')
//          .margin(this.theme.getMargin())
//          .shadow({ radius: this.theme.getShadowRadius(),
//            color: this.theme.getDownShadow()})
        }
        .backgroundColor(this.theme.getBackgroundColor()) //(0x303234)
        .padding(10)
        .width('100%')
        .height('100%')
      }
      .width('100%')
//    }
//    .height('100%')
    }
    .scrollable(ScrollDirection.Vertical)
  }
}










