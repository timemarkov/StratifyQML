/*
Copyright 2016 Tyler Gilbert

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

#ifndef TERMINALMANAGER_H
#define TERMINALMANAGER_H

#include "IO.h"

namespace StratifyIO {


class TerminalIO : public IO {
    Q_OBJECT
public:
    TerminalIO(Link & link);

    int open();
    int close();
    QByteArray read();
    int write(const QByteArray & data);


private:
    int mInFd;
    int mOutFd;

};

}

#endif // TERMINALMANAGER_H
