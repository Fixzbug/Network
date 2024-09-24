
# My Ionic Project

## Table of Contents
- [About](#about)
- [Setup](#setup)
- [Development](#development)
- [Installation](#installation)
- [Libraries](#libraries)
- [Firebase](#firebase)
- [NVM](#NVM)

## About
This project is an Ionic application that integrates various utilities and plugins to provide a seamless user experience. It includes features like drag and drop, film management, and more.

## Setup
### Prerequisites
- **Ionic CLI:** 6.19.0
- **NodeJS:** v14.17.0 (or use NVM for version management)
- **npm:** 6.14.13
- **OS:** Windows 10

### Additional Utilities
- **cordova-res:** 0.15.4
- **native-run:** 1.7.2

## Installation

### Step 1: Install Node.js
First, install Node.js version 16.15.1:

```sh
nvm install 16.15.1
```

Then, load NVM and install the required Node.js versions:

```sh
nvm install 14.17.0
nvm install 18.14.1
```

### Step 2: Use the Required Node Version
Switch to Node.js version 14.17.0:

```sh
nvm use 14.17.0
```

### Step 3: Install Global Dependencies
Install necessary global packages:

```sh
npm install -g touch-cli-windows typescript
```

### Step 4: Initialize Git
Initialize your git repository:

```sh
git init
git add .
git commit -m "update admin :fire:"
git push -u origin master
```

## Development

### Create Environment File
Create the environment configuration file:

```sh
touch ./src/environment.ts
```

### Generate Ionic Provider
Generate a new service provider:

```sh
ionic g provider service
```

## Libraries

### Required Libraries
Install the following libraries for your project:

```sh
npm install typescript@4.7.4 --save 
npm install angularfire2 firebase@7.24.0 promise-polyfill --save
npm install rxjs@6.6.7 rxjs-compat@6.6.3 --save
npm install moment --save
npm install geofire --save
npm install @ngx-translate/core@10.0.2 @ngx-translate/http-loader@3.0.1 --save
npm install ng-circle-progress@1.0.0 --save
npm install ngx-mqtt@5.5.0 --save
npm install date-fns
```

### TypeScript Installation
Install TypeScript both globally and locally:

```sh
npm install --global typescript
npm install --save-dev typescript
```
## Firebase

### Firebase Version
Ensure you have the correct Firebase version installed:

```sh
firebase --version
12.8.0
```

## NVM

# Instructions to Install NVM on Windows

## Step 1: Download Node.js

1. Go to the Node.js previous releases page: [Node.js Previous Releases](https://nodejs.org/en/about/previous-releases)
2. Download the version of Node.js you need. 

## Step 2: Install Node.js

1. Run the downloaded Node.js installer.
2. Follow the prompts to complete the installation.

## Step 3: Download NVM (Node Version Manager)

1. Go to the NVM releases page on GitHub: [NVM for Windows v1.1.11](https://github.com/coreybutler/nvm-windows/releases/tag/1.1.11)
2. Download the `nvm-setup.zip` file from the Assets section.
3. Extract the contents of the zip file.
4. Run the `nvm-setup.exe` installer.
5. Follow the prompts to complete the installation.

## Step 4: Use NVM Commands

1. Open a command prompt or PowerShell.
2. List all installed Node.js versions using:
   ```
   nvm list
   ```
3. Install a specific Node.js version (e.g., v14.22.3) using:
   ```
   nvm install v14.22.3
   ```
4. Uninstall a specific Node.js version (e.g., v14.22.3) using:
   ```
   nvm uninstall v14.22.3
   ```

By following these steps, you can manage multiple Node.js versions on your Windows machine using NVM.

```sh

   20.15.0
   18.20.3
   16.20.2
* 14.21.3 (Currently using 64-bit executable)
   12.22.12

```

## Error ionic serve

[app-scripts] [19:24:47]  ionic-app-script task: "serve" 
[app-scripts] [19:24:47]  Error: Could not find an "NgModule" decorator

```sh
   npm install typescript@4.7.4 --save 

```

[app-scripts]             ';' expected. 
[app-scripts]     L4891:  gtagName?: string;
[app-scripts]     L4892:  /** Sets custom name for `dataLayer` array used by gtag. */


```sh
   npm i firebase@4.6.2

```

# Cordova Diagnostic Plugin Permissions

This document lists the various permissions available in the Cordova Diagnostic Plugin.

## Permissions

- `cordova.plugins.diagnostic.permission.ACCEPT_HANDOVER`
- `cordova.plugins.diagnostic.permission.ACCESS_BACKGROUND_LOCATION`
- `cordova.plugins.diagnostic.permission.ACCESS_COARSE_LOCATION`
- `cordova.plugins.diagnostic.permission.ACCESS_FINE_LOCATION`
- `cordova.plugins.diagnostic.permission.ACCESS_MEDIA_LOCATION`
- `cordova.plugins.diagnostic.permission.ACTIVITY_RECOGNITION`
- `cordova.plugins.diagnostic.permission.ADD_VOICEMAIL`
- `cordova.plugins.diagnostic.permission.ANSWER_PHONE_CALLS`
- `cordova.plugins.diagnostic.permission.BLUETOOTH_ADVERTISE`
- `cordova.plugins.diagnostic.permission.BLUETOOTH_CONNECT`
- `cordova.plugins.diagnostic.permission.BLUETOOTH_SCAN`
- `cordova.plugins.diagnostic.permission.BODY_SENSORS`
- `cordova.plugins.diagnostic.permission.BODY_SENSORS_BACKGROUND`
- `cordova.plugins.diagnostic.permission.CALL_PHONE`
- `cordova.plugins.diagnostic.permission.CAMERA`
- `cordova.plugins.diagnostic.permission.GET_ACCOUNTS`
- `cordova.plugins.diagnostic.permission.NEARBY_WIFI_DEVICES`
- `cordova.plugins.diagnostic.permission.POST_NOTIFICATIONS`
- `cordova.plugins.diagnostic.permission.PROCESS_OUTGOING_CALLS`
- `cordova.plugins.diagnostic.permission.READ_CALENDAR`
- `cordova.plugins.diagnostic.permission.READ_CALL_LOG`
- `cordova.plugins.diagnostic.permission.READ_CONTACTS`
- `cordova.plugins.diagnostic.permission.READ_EXTERNAL_STORAGE`
- `cordova.plugins.diagnostic.permission.READ_MEDIA_AUDIO`
- `cordova.plugins.diagnostic.permission.READ_MEDIA_IMAGES`
- `cordova.plugins.diagnostic.permission.READ_MEDIA_VIDEO`
- `cordova.plugins.diagnostic.permission.READ_PHONE_NUMBERS`
- `cordova.plugins.diagnostic.permission.READ_PHONE_STATE`
- `cordova.plugins.diagnostic.permission.READ_SMS`
- `cordova.plugins.diagnostic.permission.RECEIVE_MMS`
- `cordova.plugins.diagnostic.permission.RECEIVE_SMS`
- `cordova.plugins.diagnostic.permission.RECEIVE_WAP_PUSH`
- `cordova.plugins.diagnostic.permission.RECORD_AUDIO`
- `cordova.plugins.diagnostic.permission.SEND_SMS`
- `cordova.plugins.diagnostic.permission.USE_SIP`
- `cordova.plugins.diagnostic.permission.UWB_RANGING`
- `cordova.plugins.diagnostic.permission.WRITE_CALENDAR`
- `cordova.plugins.diagnostic.permission.WRITE_CALL_LOG`
- `cordova.plugins.diagnostic.permission.WRITE_CONTACTS`
- `cordova.plugins.diagnostic.permission.WRITE_EXTERNAL_STORAGE`



# Ionic Page Life Cycle Events

This document provides an overview of the life cycle events in Ionic for both English and Thai languages.

## English

1. **ionViewDidLoad**: Fired only when a view is stored in memory. This event is NOT fired on entering a view that is already cached. It’s a nice place for init related tasks.

2. **ionViewWillEnter**: It’s fired when entering a page, before it becomes the active one. Use it for tasks you want to do every time you enter in the view (setting event listeners, updating a table, etc.).

3. **ionViewDidEnter**: Fired when entering a page, after it becomes the active page. Quite similar to the previous one.

4. **ionViewWillLeave**: Fired when you leave a page, before it stops being the active one. Use it for things you need to run every time you are leaving a page (deactivate event listeners, etc.).

5. **ionViewDidLeave**: Fired when you leave a page, after it stops being the active one. Similar to the previous one.

6. **ionViewWillUnload**: Fired when a view is going to be completely removed (after leaving a non-cached view).

## Thai (ภาษาไทย)

1. **ionViewDidLoad**: เรียกเมื่อหน้าเพจถูกโหลดเข้าสู่หน่วยความจำ (ครั้งแรกที่โหลด) แต่จะไม่เรียกเมื่อเข้าไปยังเพจที่ถูกแคชไว้แล้ว ใช้สำหรับการตั้งค่าที่ต้องทำครั้งเดียวเมื่อเพจถูกโหลด

2. **ionViewWillEnter**: เรียกเมื่อกำลังจะเข้าสู่หน้าเพจ ก่อนที่เพจนั้นจะกลายเป็นเพจหลัก ใช้สำหรับงานที่ต้องทำทุกครั้งเมื่อเข้าไปยังเพจ เช่น ตั้งค่าตัวฟังเหตุการณ์ หรืออัพเดตข้อมูลในตาราง

3. **ionViewDidEnter**: เรียกเมื่อเข้าสู่หน้าเพจ หลังจากเพจนั้นกลายเป็นเพจหลักแล้ว คล้ายกับเหตุการณ์ก่อนหน้านี้

4. **ionViewWillLeave**: เรียกเมื่อกำลังจะออกจากหน้าเพจ ก่อนที่เพจนั้นจะหยุดเป็นเพจหลัก ใช้สำหรับงานที่ต้องทำทุกครั้งเมื่อออกจากเพจ เช่น ปิดการทำงานของตัวฟังเหตุการณ์

5. **ionViewDidLeave**: เรียกเมื่อออกจากหน้าเพจ หลังจากเพจนั้นหยุดเป็นเพจหลักแล้ว คล้ายกับเหตุการณ์ก่อนหน้านี้

6. **ionViewWillUnload**: เรียกเมื่อหน้าเพจจะถูกลบออกจากหน่วยความจำทั้งหมด (หลังจากออกจากเพจที่ไม่ถูกแคช)



# การใช้ Safe Navigation Operator ใน Angular

## ความเข้าใจเกี่ยวกับโค้ด: \*ngIf="(order | async)?.isClose"

โค้ดนี้เป็นส่วนหนึ่งของ Angular framework ที่ใช้สำหรับการสร้างแอปพลิเคชันเว็บ โดยเฉพาะการใช้ Angular template syntax และ Angular Async Pipe เพื่อจัดการกับ observable properties. มาทำความเข้าใจกันทีละส่วน:

### 1. \*ngIf="..."
นี่คือ Angular directive ที่ใช้สำหรับการแสดงหรือซ่อนองค์ประกอบใน DOM ขึ้นอยู่กับเงื่อนไขที่กำหนดภายใน double quotes (`"`).

### 2. (order | async)?.isClose
- `order`: นี่คือ observable ซึ่งอาจจะเป็นตัวแปรหรือ property ใน component ที่กำลังส่งผ่านข้อมูลที่เป็น asynchronous stream.
- `| async`: Angular Async Pipe ใช้สำหรับ subscribe ไปยัง observable และดึงค่าล่าสุดออกมาเพื่อใช้ใน template. มันจะจัดการ unsubscribe อัตโนมัติเมื่อ component ถูกทำลาย.
- `?.isClose`: นี่คือ Angular safe navigation operator ใช้เพื่อเข้าถึง property ของ object โดยไม่ทำให้เกิดข้อผิดพลาดถ้า object นั้นเป็น `null` หรือ `undefined`. ในกรณีนี้คือการเข้าถึง property `isClose` ของ object ที่ได้จาก observable `order`.

**สรุป**: โค้ด \*ngIf="(order | async)?.isClose" หมายความว่า จะทำการแสดงองค์ประกอบใน DOM ก็ต่อเมื่อ observable `order` มีค่าที่ถูกดึงมาแล้ว และค่าของ property `isClose` ของ object ที่ได้จาก observable นั้นเป็น `true`.

## ทำไมต้องใช้ ?.isClose

การใช้ `?.isClose` มีเหตุผลหลักสองประการ:

1. **การจัดการค่า null หรือ undefined**:
   - Safe navigation operator (`?.`) ใช้เพื่อหลีกเลี่ยงการเกิดข้อผิดพลาดเมื่อพยายามเข้าถึง property ของ object ที่อาจเป็น `null` หรือ `undefined`. ในกรณีนี้ `order | async` อาจจะยังไม่ได้ส่งค่าออกมาทันที หรืออาจส่งค่าเป็น `null` หรือ `undefined`. ดังนั้นการใช้ `?.` ช่วยให้มั่นใจว่าถ้า `order` ยังไม่มีค่าหรือมีค่าเป็น `null` หรือ `undefined` การเข้าถึง `isClose` จะไม่ทำให้เกิดข้อผิดพลาดใน JavaScript (จะไม่เกิด error และคืนค่า `undefined` แทน).

2. **ความปลอดภัยของการเขียนโค้ด**:
   - การใช้ `?.` ทำให้โค้ดมีความปลอดภัยมากขึ้นโดยไม่ต้องเขียนเงื่อนไขเพิ่มเติมเพื่อตรวจสอบว่าค่า `order` เป็น `null` หรือ `undefined` ก่อนที่จะเข้าถึง `isClose`. สิ่งนี้ทำให้โค้ดดูเรียบร้อยและอ่านง่ายขึ้น.

### ตัวอย่างการใช้โดยไม่มี `?.`

ถ้าไม่มีการใช้ `?.`, โค้ดจะต้องเขียนแบบนี้:

```html
*ngIf="(order | async) && (order | async).isClose"
```

ซึ่งทำให้โค้ดดูซับซ้อนและอ่านยากขึ้น.

## ตัวอย่าง: {{ fruit?.price_retail }}

ในโค้ด `{{ fruit?.price_retail }}`, Angular template syntax ถูกใช้เพื่อแสดงค่าของ property `price_retail` ของ object `fruit`. การใช้ `?.` มีประโยชน์ดังนี้:

1. **การจัดการค่า null หรือ undefined**:
   - Safe navigation operator (`?.`) ใช้เพื่อหลีกเลี่ยงการเกิดข้อผิดพลาดเมื่อพยายามเข้าถึง property ของ object ที่อาจเป็น `null` หรือ `undefined`.
   - ในกรณีนี้ ถ้า `fruit` เป็น `null` หรือ `undefined`, การใช้ `?.` จะทำให้การเข้าถึง `price_retail` ไม่ทำให้เกิดข้อผิดพลาด แต่จะคืนค่า `undefined` แทน.

2. **ความปลอดภัยของการเขียนโค้ด**:
   - การใช้ `?.` ช่วยให้โค้ดปลอดภัยและลดความซับซ้อน โดยไม่ต้องเขียนเงื่อนไขตรวจสอบว่าค่า `fruit` เป็น `null` หรือ `undefined` ก่อนที่จะเข้าถึง `price_retail`.

### ตัวอย่างการใช้โดยไม่มี `?.`

ถ้าไม่มีการใช้ `?.`, โค้ดจะต้องเขียนแบบนี้:

```html
{{ fruit && fruit.price_retail }}
```

ซึ่งทำให้โค้ดดูซับซ้อนและอ่านยากขึ้น.

**สรุป**: `{{ fruit?.price_retail }}` ใช้เพื่อแสดงค่า `price_retail` ของ `fruit` ถ้า `fruit` มีค่า และหลีกเลี่ยงข้อผิดพลาดถ้า `fruit` เป็น `null` หรือ `undefined`.
