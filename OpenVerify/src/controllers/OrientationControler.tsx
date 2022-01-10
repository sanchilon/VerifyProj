/*
   Copyright 2021 Queen’s Printer for Ontario

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
import {FC, useEffect} from 'react';
import Orientation from 'react-native-orientation-locker';
import DeviceInfo from 'react-native-device-info';

export interface Props {}

const OrientationController: FC<Props> = ({}) => {
  useEffect(() => {
    async function checkForTabletMode() {
      const isTablet = await DeviceInfo.isTablet();
      if (!isTablet) {
        // https://github.com/wonday/react-native-orientation-locker/issues/198
        setTimeout(() => Orientation.lockToPortrait(), 10);
      } else {
        setTimeout(() => Orientation.unlockAllOrientations(), 10);
      }
    }
    checkForTabletMode();
  }, []);

  return null;
};

export default OrientationController;
