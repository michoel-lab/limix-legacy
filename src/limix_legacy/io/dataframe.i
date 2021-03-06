// Copyright(c) 2014, The LIMIX developers(Christoph Lippert, Paolo Francesco Casale, Oliver Stegle)
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.

namespace limix_legacy {
//CMemDataFram

%ignore ARDataFrame::getMatrix;
%ignore ARDataFrame::getColHeader;
%ignore ARDataFrame::getRowHeader;

%rename(getMatrix) ARDataFrame::agetMatrix;
%rename(getRowHeader) ARDataFrame::aetRowHeader;
%rename(getColHeader) ARDataFrame::aetColHeader;
}

//raw include
%include "limix_legacy/io/dataframe.h"

namespace limix_legacy{

//CRMemDataFrameXd
%template(CRMemDataFrameXd) CRMemDataFrame<MatrixXd>;
%template(CRWMemDataFrameXd) CRWMemDataFrame<MatrixXd>;
%template(ARDataFrameXd) ARDataFrame< MatrixXd >;
%template(AWDataFrameXd) AWDataFrame< MatrixXd >;

}