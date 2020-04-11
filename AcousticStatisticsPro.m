function varargout = AcousticStatisticsPro(varargin)
% ACOUSTICSTATISTICSPRO MATLAB code for AcousticStatisticsPro.fig
%      ACOUSTICSTATISTICSPRO, by itself, creates a new ACOUSTICSTATISTICSPRO or raises the existing
%      singleton*.
%
%      H = ACOUSTICSTATISTICSPRO returns the handle to a new ACOUSTICSTATISTICSPRO or the handle to
%      the existing singleton*.
%
%      ACOUSTICSTATISTICSPRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ACOUSTICSTATISTICSPRO.M with the given input arguments.
%
%      ACOUSTICSTATISTICSPRO('Property','Value',...) creates a new ACOUSTICSTATISTICSPRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AcousticStatisticsPro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AcousticStatisticsPro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AcousticStatisticsPro

% Last Modified by GUIDE v2.5 31-Dec-2019 15:12:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AcousticStatisticsPro_OpeningFcn, ...
                   'gui_OutputFcn',  @AcousticStatisticsPro_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before AcousticStatisticsPro is made visible.
function AcousticStatisticsPro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AcousticStatisticsPro (see VARARGIN)

% Choose default command line output for AcousticStatisticsPro
handles.output = hObject;
handles.datafilename=[];
handles.data=[];
global variable;
variable=1000000;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AcousticStatisticsPro wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AcousticStatisticsPro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'��ʼ���(m)','�������(m)','ͳ����С���(m)'};
title='�����봦����';
lines=[1,1,1];
def={'15.0';'4940.0';'1.0'};%Ĭ��ֵ
tab=inputdlg(prompt,title,lines,def);
row1=str2num(tab{1});
row2=str2num(tab{2});
row3=str2num(tab{3});
set(handles.edit1,'String',row1);
set(handles.edit2,'String',row2);
set(handles.edit3,'String',row3);
guidata(hObject,handles)%����handles����

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[datafilename datapathname]=uigetfile({'*.xls;*.xlsx;*txt;*TXT'},'Select a data file');
if datafilename
    [a,b,c]=fileparts(datafilename);
    switch c
        case '.txt'
            dataCBL3_txt=readtable(datafilename);
            dataCBL3_txt2=table2array(dataCBL3_txt);
            dataCBL3_txt2(1,:)=[];
            dataCBL3_txt2(:,3)=[];
            [m,~]=size(dataCBL3_txt2);
            temp=str2num(char(dataCBL3_txt2));
            dataCBL3(1:m,1)=temp(1:m,1);
            dataCBL3(1:m,2)=temp((m+1):(2*m),1);
            handles.datafilename=datafilename;
            handles.data=dataCBL3;
        case '.TXT'
            dataCBL3_txt=readtable(datafilename);
            dataCBL3_txt2=table2array(dataCBL3_txt);
            dataCBL3_txt2(1,:)=[];
            dataCBL3_txt2(:,3)=[];
            [m,~]=size(dataCBL3_txt2);
            temp=str2num(char(dataCBL3_txt2));
            dataCBL3(1:m,1)=temp(1:m,1);
            dataCBL3(1:m,2)=temp((m+1):(2*m),1);
            handles.datafilename=datafilename;
            handles.data=dataCBL3;
        case '.xls'
            dataCBL3=xlsread(datafilename);
            handles.datafilename=datafilename;
            handles.data=dataCBL3;
        case '.xlsx'
            dataCBL3=xlsread(datafilename);
            handles.datafilename=datafilename;
            handles.data=dataCBL3;
    end
end
guidata(hObject,handles)%����handles����

global variable;
startDepth=str2num(get(handles.edit1,'String'));
endDepth=str2num(get(handles.edit2,'String'));
temp=1;
temp1=1;
temp2=1;
for temp=1:variable
    if dataCBL3(temp,1)>=endDepth
        break;
    end
end
temp;%������ȵ�����

for j=0:variable
    
    for temp1=temp1:variable
        if dataCBL3(temp1,1)>=startDepth
            break;
        end
    end
    temp1;%start row
    switch(dataCBL3(temp1,2)<100)
        case(dataCBL3(temp1,2)<20)
            dataResult(j+1,7)=1;%good
        case(dataCBL3(temp1,2)>=20 && dataCBL3(temp1,2)<40)
            dataResult(j+1,7)=2;%median
        case(dataCBL3(temp1,2)>=40)
            dataResult(j+1,7)=3;%bad
    end
    
    temp=temp1+1;
    
    for temp2=temp:variable
        
        switch(dataCBL3(temp2,2)<100)
            case(dataCBL3(temp2,2)<20)
                dataResult(j+1,8)=1;%good
            case(dataCBL3(temp2,2)>=20 && dataCBL3(temp2,2)<40)
                dataResult(j+1,8)=2;%median
            case(dataCBL3(temp2,2)>=40)
                dataResult(j+1,8)=3;%bad
        end
        temp2;%end row
        startDepth=dataCBL3(temp2,1);
        if dataResult(j+1,7)==dataResult(j+1,8)
            if dataCBL3(temp2,1)>=endDepth
                break;
            end
            continue;
        else
            break;
        end
    end
    
    dataResult(j+1,1)=dataCBL3(temp1,1);%���㿪ʼ���
    dataResult(j+1,2)=dataCBL3(temp2,1);%����������
    dataResult(j+1,3)=dataCBL3(temp2,1)-dataCBL3(temp1,1);
    dataResult(j+1,4)=min(dataCBL3(temp1:temp2,2));%������С��������ֵ
    dataResult(j+1,5)=mean(dataCBL3(temp1:temp2,2));%����ƽ����������ֵ
    dataResult(j+1,6)=max(dataCBL3(temp1:temp2,2));%���������������ֵ
    
    if dataCBL3(temp2,1)>=endDepth
        break;
    end
end
limit=j+1;
i=1;
minimumStatics=str2num(get(handles.edit3,'String'));
    [m,~]=size(dataResult);
    dataResult(1,9)=0;%��
    dataResult(limit,9)=0;%��
    for i=i+1:limit-1%Ϊ�˱���i-1��������
        if dataResult(i,3)<=minimumStatics
            dataResult(i-1,2)=dataResult(i,2);
            dataResult(i-1,3)=dataResult(i-1,3)+dataResult(i,3);
            dataResult(i-1,4)=min(dataResult(i,4),dataResult(i-1,4));
            dataResult(i-1,5)=(dataResult(i,5)+dataResult(i-1,5))/2;
            dataResult(i-1,6)=max(dataResult(i,6),dataResult(i-1,6));
            dataResult(i,9)=111;%���
            for j=1:20
                if i+j<=m && dataResult(i+j,3)<=minimumStatics
                    dataResult(i-1,2)=dataResult(i+j,2);
                    %dataResult(i-1,3)=sum([dataResult((i-1):(i+j-1),3)]);
                    dataResult(i-1,3)=dataResult(i-1,2)-dataResult(i-1,1);
                    dataResult(i-1,4)=min([dataResult((i-1):(i+j),4)]);%Maybe a little flaw, correct later
                    dataResult(i-1,5)=sum([dataResult((i-1):(i+j),4)])/(j+1);%Maybe a little flaw, correct later
                    dataResult(i-1,6)=max([dataResult((i-1):(i+j),6)]);%Maybe a little flaw, correct later
                else
                    i=i+j;
                    break;
                end
            end
    end
    
%     if dataResult(i,3)==[]
%         break;
%     end
end
count=1;
for i=1:limit
        if dataResult(i,9)==111
            count=count+1;
        else
            break;
        end
end
count=count-1;%���Ϊ111������
for i=limit:-1:1
    if dataResult(i,9)==111
        dataResult(i,:)=[];%ɾ��
    end
end
%�ж�����
count=1;
for i=1:limit
    if dataResult(i,2)>=endDepth
        break;
    end
    count=count+1;
end

startDepth=str2num(get(handles.edit1,'String'));%���¸�ֵ
endDepth=str2num(get(handles.edit2,'String'));
temp1=0;
temp2=0;
temp3=0;
for i=1:count
    if dataResult(i,7)==1
        temp1=temp1+dataResult(i,3);
        tempRatio1=temp1/(endDepth-startDepth)*100;
    end
end
for i=1:count
    if dataResult(i,7)==2
        temp2=temp2+dataResult(i,3);
        tempRatio2=temp2/(endDepth-startDepth)*100;
    end
end
for i=1:count
    if dataResult(i,7)==3
        temp3=temp3+dataResult(i,3);
        tempRatio3=temp3/(endDepth-startDepth)*100;
    end
end
if temp1==0
    tempRatio1=0;
end
if temp2==0
    tempRatio2=0;
end
if temp3==0
    tempRatio3=0;
end
%��ӡ������̨
disp(['�ܳ�����:',num2str(temp1+temp2+temp3),'m��','�ܱ�����:',num2str(tempRatio1+...
    tempRatio2+tempRatio3),'%']);
disp(['�ŵĳ�����:',num2str(temp1),'m��','����ռ�ı�����:',num2str(tempRatio1),'%']);
disp(['�еĳ�����:',num2str(temp2),'m��','����ռ�ı�����:',num2str(tempRatio2),'%']);
disp(['��ĳ�����:',num2str(temp3),'m��','����ռ�ı�����:',num2str(tempRatio3),'%']);
%�ڱ�����ʾͳ�ƽ��
dataToShow1={temp1,tempRatio1;temp2,tempRatio2;temp3,tempRatio3;temp1+temp2+temp3,...
    tempRatio1+tempRatio2+tempRatio3};
dataToShow2={'         ��';'         ��';'         ��';'         ��'};
finalDataToShow=[dataToShow1,dataToShow2];
fmt={'bank'};
set(handles.uitable1,'data',finalDataToShow,'ColumnFormat',fmt(ones(1,2)));
%��axes1�ϻ�ͼ
startRow=1;
for startRow=startRow:variable
    if dataCBL3(startRow,1)>=startDepth
        break;
    end
end
if ~isempty(handles.datafilename)
    x=dataCBL3(startRow:temp,1);
    y=dataCBL3(startRow:temp,2);
    plot(handles.axes1,y,x);
    set(gca,'XLim',[0 100]);
    set(gca,'YLim',[startDepth endDepth]);
    set(handles.axes1,'YDir','rev');
end
set(handles.axes1,'XLim',[0 100]);
set(handles.axes1,'YLim',[startDepth endDepth]);
h=waitbar(0,'please wait...');
for i=1:1000
  waitbar(i/1000,h)
end
  close(h)
guidata(hObject,handles)%����handles����

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[formationdatafilename formationdatapathname]=uigetfile({'*.xls;*.xlsx;*txt;*TXT'},'Select a formation data file');
if formationdatafilename
    [a,b,c]=fileparts(formationdatafilename);
    switch c
        case '.txt'
            fid = fopen(formationdatafilename);
            tline = fgetl(fid);
            list_cell={};
            while ischar(tline)
                disp(tline)
                tline = fgetl(fid);
                list_cell = [list_cell;tline];
            end
            fclose(fid);
            i=1;
            [p,~]=size(list_cell);
            p=p-1;%����
            for i=1:(p-1)
                k=strfind(list_cell(i+1,:),'--');%�ҵ���--����λ��
                k=cell2mat(k);
                singleLineData=char(list_cell(i+1,1));
                for j1=k(1):-1:0
                    if singleLineData(j1)~=' '
                        continue;
                    elseif singleLineData(j1)==' '
                        break;
                    end
                end
                for j2=k(1):30
                    if singleLineData(j2)~=' '
                        continue;
                    elseif singleLineData(j2)==' '
                        break;
                    end
                end
                %     k1=k(1)-5;
                %     k2=k(1)-1;
                %     k3=k(1)+2;
                %     k4=k(1)+6;
                formationdata(i,1)=str2num(singleLineData(j1+1:k(1)-1));
                formationdata(i,2)=str2num(singleLineData(k(1)+2:j2-1));
            end
            handles.formationdatafilename=formationdatafilename;
            handles.formationdata=formationdata;
        case '.TXT'
            fid = fopen(formationdatafilename);
            tline = fgetl(fid);
            list_cell={};
            while ischar(tline)
                disp(tline)
                tline = fgetl(fid);
                list_cell = [list_cell;tline];
            end
            fclose(fid);
            i=1;
            [p,~]=size(list_cell);
            p=p-1;%����
            for i=1:(p-1)
                k=strfind(list_cell(i+1,:),'--');%�ҵ���--����λ��
                k=cell2mat(k);
                singleLineData=char(list_cell(i+1,1));
                for j1=k(1):-1:0
                    if singleLineData(j1)~=' '
                        continue;
                    elseif singleLineData(j1)==' '
                        break;
                    end
                end
                for j2=k(1):30
                    if singleLineData(j2)~=' '
                        continue;
                    elseif singleLineData(j2)==' '
                        break;
                    end
                end
                %     k1=k(1)-5;
                %     k2=k(1)-1;
                %     k3=k(1)+2;
                %     k4=k(1)+6;
                formationdata(i,1)=str2num(singleLineData(j1+1:k(1)-1));
                formationdata(i,2)=str2num(singleLineData(k(1)+2:j2-1));
            end
            handles.formationdatafilename=formationdatafilename;
            handles.formationdata=formationdata;
        case '.xls'
            formationdata=xlsread(formationdatafilename);
            handles.formationdatafilename=formationdatafilename;
            handles.formationdata=formationdata;
        case '.xlsx'
            formationdata=xlsread(formationdatafilename);
            handles.formationdatafilename=formationdatafilename;
            handles.formationdata=formationdata;
    end
end
guidata(hObject,handles)%����handles����
global variable;
fmt={'bank'};
set(handles.uitable2,'Data',formationdata,'ColumnFormat',fmt(ones(1,2)));
%��axes2�ϻ�ͼ
[m,~]=size(formationdata);
% [n,~]=size(handles.data);
startDepth=str2num(get(handles.edit1,'String'));
endDepth=str2num(get(handles.edit2,'String'));
i=1;
if ~isempty(handles.formationdatafilename)
    for i=1:m
    x=linspace(0,100,100)'*[1 1];
    y=ones(100,1)*[formationdata(i,1) formationdata(i,2)];
    plot(handles.axes2,x,y,'Color',[rand(),rand(),rand()],'LineWidth',1);
    fill(handles.axes2,[x(:,1)',fliplr(x(:,2)')],[y(:,1)',fliplr(y(:,2)')],[0.1,0.2,0.6]);%���
    %fill(handles.axes2,[x(:,1)',fliplr(x(:,2))'],[y(:,1)',fliplr(y(:,2))'],'r');���������з�ת�����Ƿ�ת��������ת
    set(gca,'XLim',[0 100]);
    set(gca,'YLim',[startDepth endDepth]);
    set(handles.axes2,'YDir','rev');
    hold on;
    end
end
set(handles.axes2,'XLim',[0 100]);
set(handles.axes2,'YLim',[startDepth endDepth]);

%������
h=waitbar(0,'please wait...');
for i=1:1000
    waitbar(i/1000,h)
end
close(h)
guidata(hObject,handles)%����handles����

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[resultfilename resultpathname]=uigetfile({'*.xls;*.xlsx;*txt;*TXT'},'Select a result data file');
if resultfilename
    resultdata=xlsread(resultfilename);
    handles.resultfilename=resultfilename;
    handles.resultdata=resultdata;    
end
guidata(hObject,handles)%����handles����
dataProcessRaw=get(handles.uitable2,'Data');
global variable;
[mm,~]=size(dataProcessRaw);%�õ�������
[nn,~]=size(resultdata);%�õ��������������
dataProcess(:,1)=dataProcessRaw(1:mm,1)-ones(mm,1)*25;
dataProcess(:,2)=dataProcessRaw(1:mm,2)+ones(mm,1)*25;
temp1=zeros(mm,1);
temp2=zeros(mm,1);
temp3=zeros(mm,1);
dd=1;
for dd=1:mm
    startDepth=dataProcess(dd,1);
    endDepth=dataProcess(dd,2);
    resultdata=handles.resultdata;%ȷ�����۱��ڴ�������б��޸�
    i=1;
    for i=1:nn
        if startDepth>resultdata(i,2) && startDepth<=resultdata(i+1,2)
            resultdata(i,2)=startDepth;
            break;
        end
    end
    j=1;
    for j=i:nn
        if endDepth>resultdata(j-1,3) && endDepth<=resultdata(j,3)
            resultdata(j,3)=endDepth;
            break;
        end
    end
    for k=i:j
        if resultdata(k,4)==1
            temp1(dd,1)=temp1(dd,1)+(resultdata(k,3)-resultdata(k,2));
        end
        if resultdata(k,4)==2
            temp2(dd,1)=temp2(dd,1)+(resultdata(k,3)-resultdata(k,2));
        end
        if resultdata(k,4)==50
            temp3(dd,1)=temp3(dd,1)+(resultdata(k,3)-resultdata(k,2));
        end
    end
    tempRatio1(dd,1)=temp1(dd,1)/(temp1(dd,1)+temp2(dd,1)+temp3(dd,1))*100;
    tempRatio2(dd,1)=temp2(dd,1)/(temp1(dd,1)+temp2(dd,1)+temp3(dd,1))*100;
    tempRatio3(dd,1)=temp3(dd,1)/(temp1(dd,1)+temp2(dd,1)+temp3(dd,1))*100;
end
%��ʾ�������
DataFinalForPrint=[dataProcess,temp1+temp2+temp3,tempRatio1+tempRatio2+tempRatio3,temp1,...
    tempRatio1,temp2,tempRatio2,temp3,tempRatio3];
fmt={'bank'};
set(handles.uitable4,'data',DataFinalForPrint,'ColumnFormat',fmt(ones(1,10)));
%��ӡ��Excel��
DataFinalForExcel=[(1:mm)',dataProcessRaw,DataFinalForPrint];
allColumnName={'���','���㿪ʼ���(m)','����������(m)','������25(m)','������25(m)','�ܳ���(m)',...
    '�ܱ���(%)','�ŵĳ���(m)','�ŵ�ռ��(%)','�еĳ���(m)','�е�ռ��(%)','��ĳ���(m)','���ռ��(%)'};
xlswrite('AutoStatistics_Based_On_Result.xls', allColumnName,'sheet1','A1');
xlswrite('AutoStatistics_Based_On_Result.xls', DataFinalForExcel,'sheet1','A2');
h=waitbar(0,'please wait...');
for i=1:1000
  waitbar(i/1000,h)
end
  close(h)
msgbox('�Ѵ�����ΪAutoStatistics_Based_On_Result.xls�ı���ļ��ڳ���Ŀ¼�У���鿴:)','��ܰ��ʾ');
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dataProcessRaw=get(handles.uitable2,'Data');
global variable;
[mm,~]=size(dataProcessRaw);
dataProcess(:,1)=dataProcessRaw(1:mm,1)-ones(mm,1)*25;
dataProcess(:,2)=dataProcessRaw(1:mm,2)+ones(mm,1)*25;%need to consider the range
ii=1;
for ii=1:mm
    startDepth=dataProcess(ii,1);
    endDepth=dataProcess(ii,2);
    dataCBL3=handles.data;
    temp1=1;
    temp2=1;
    for temp=1:variable
        if dataCBL3(temp,1)>=endDepth
            break;
        end
    end
    temp;%������ȵ�����
    
    for j=0:variable
        
        for temp1=temp1:variable
            if dataCBL3(temp1,1)>=startDepth
                break;
            end
        end
        temp1;%start row
        switch(dataCBL3(temp1,2)<100)
            case(dataCBL3(temp1,2)<20)
                dataResult(j+1,7)=1;%good
            case(dataCBL3(temp1,2)>=20 && dataCBL3(temp1,2)<40)
                dataResult(j+1,7)=2;%median
            case(dataCBL3(temp1,2)>=40)
                dataResult(j+1,7)=3;%bad
        end
        
        temp=temp1+1;
        
        for temp2=temp:variable
            
            switch(dataCBL3(temp2,2)<100)
                case(dataCBL3(temp2,2)<20)
                    dataResult(j+1,8)=1;%good
                case(dataCBL3(temp2,2)>=20 && dataCBL3(temp2,2)<40)
                    dataResult(j+1,8)=2;%median
                case(dataCBL3(temp2,2)>=40)
                    dataResult(j+1,8)=3;%bad
            end
            temp2;%end row
            startDepth=dataCBL3(temp2,1);
            if dataResult(j+1,7)==dataResult(j+1,8)
                if dataCBL3(temp2,1)>=endDepth
                    break;
                end
                continue;
            else
                break;
            end
        end
        
        dataResult(j+1,1)=dataCBL3(temp1,1);%���㿪ʼ���
        dataResult(j+1,2)=dataCBL3(temp2,1);%����������
        dataResult(j+1,3)=dataCBL3(temp2,1)-dataCBL3(temp1,1);
        dataResult(j+1,4)=min(dataCBL3(temp1:temp2,2));%������С��������ֵ
        dataResult(j+1,5)=mean(dataCBL3(temp1:temp2,2));%����ƽ����������ֵ
        dataResult(j+1,6)=max(dataCBL3(temp1:temp2,2));%���������������ֵ
        
        if dataCBL3(temp2,1)>=endDepth
            break;
        end
    end
    limit=j+1;
    i=1;
    minimumStatics=str2num(get(handles.edit3,'String'));
    [m,~]=size(dataResult);
    dataResult(1,9)=0;%��
    dataResult(limit,9)=0;%��
    for i=i+1:limit-1%Ϊ�˱���i-1��������
        if dataResult(i,3)<=minimumStatics
            dataResult(i-1,2)=dataResult(i,2);
            dataResult(i-1,3)=dataResult(i-1,3)+dataResult(i,3);
            dataResult(i-1,4)=min(dataResult(i,4),dataResult(i-1,4));
            dataResult(i-1,5)=(dataResult(i,5)+dataResult(i-1,5))/2;
            dataResult(i-1,6)=max(dataResult(i,6),dataResult(i-1,6));
            dataResult(i,9)=111;%���
            for j=1:20
                if i+j<=m && dataResult(i+j,3)<=minimumStatics
                    dataResult(i-1,2)=dataResult(i+j,2);
                    %dataResult(i-1,3)=sum([dataResult((i-1):(i+j-1),3)]);
                    dataResult(i-1,3)=dataResult(i-1,2)-dataResult(i-1,1);
                    dataResult(i-1,4)=min([dataResult((i-1):(i+j),4)]);%Maybe a little flaw, correct later
                    dataResult(i-1,5)=sum([dataResult((i-1):(i+j),4)])/(j+1);%Maybe a little flaw, correct later
                    dataResult(i-1,6)=max([dataResult((i-1):(i+j),6)]);%Maybe a little flaw, correct later
                else
                    i=i+j;
                    break;
                end
            end
        end
        
        %     if dataResult(i,3)==[]
        %         break;
        %     end
    end
    count=1;
    for i=1:limit
        if dataResult(i,9)==111
            count=count+1;
        else
            break;
        end
    end
    count=count-1;%���Ϊ111������
    for i=limit:-1:1
        if dataResult(i,9)==111
            dataResult(i,:)=[];%ɾ��
        end
    end
    %�ж�����
    count=1;
    for i=1:limit
        if dataResult(i,2)>=endDepth
            break;
        end
        count=count+1;
    end
    
    startDepth=dataProcess(ii,1);%���¸�ֵ
    endDepth=dataProcess(ii,2);

    temp1=0;
    temp2=0;
    temp3=0;
    for i=1:count
        if dataResult(i,7)==1
            temp1=temp1+dataResult(i,3);
            tempRatio1=temp1/(endDepth-startDepth)*100;
        end
    end
    for i=1:count
        if dataResult(i,7)==2
            temp2=temp2+dataResult(i,3);
            tempRatio2=temp2/(endDepth-startDepth)*100;
        end
    end
    for i=1:count
        if dataResult(i,7)==3
            temp3=temp3+dataResult(i,3);
            tempRatio3=temp3/(endDepth-startDepth)*100;
        end
    end
    if temp1==0
        tempRatio1=0;
    end
    if temp2==0
        tempRatio2=0;
    end
    if temp3==0
        tempRatio3=0;
    end
    %��ӡ������̨
    disp(['��',num2str(ii),'��','�ܳ�����:',num2str(temp1+temp2+temp3),'m��','�ܱ�����:',num2str(tempRatio1+...
        tempRatio2+tempRatio3),'%']);
    disp(['�ŵĳ�����:',num2str(temp1),'m��','����ռ�ı�����:',num2str(tempRatio1),'%']);
    disp(['�еĳ�����:',num2str(temp2),'m��','����ռ�ı�����:',num2str(tempRatio2),'%']);
    disp(['��ĳ�����:',num2str(temp3),'m��','����ռ�ı�����:',num2str(tempRatio3),'%']);
    newData(ii,1)=temp1+temp2+temp3;
    newData(ii,2)=tempRatio1+tempRatio2+tempRatio3;
    newData(ii,3:8)=[temp1,tempRatio1,temp2,tempRatio2,temp3,tempRatio3];
end
%��ʾ�������
DataFinalForPrint=[dataProcess,newData];
fmt={'bank'};
set(handles.uitable3,'data',DataFinalForPrint,'ColumnFormat',fmt(ones(1,10)));
%��ӡ��Excel��
DataFinalForExcel=[(1:mm)',dataProcessRaw,dataProcess,newData];
allColumnName={'���','���㿪ʼ���(m)','����������(m)','������25(m)','������25(m)','�ܳ���(m)',...
    '�ܱ���(%)','�ŵĳ���(m)','�ŵ�ռ��(%)','�еĳ���(m)','�е�ռ��(%)','��ĳ���(m)','���ռ��(%)'};
xlswrite('AutoStatistics.xls', allColumnName,'sheet1','A1');
xlswrite('AutoStatistics.xls', DataFinalForExcel,'sheet1','A2');
h=waitbar(0,'please wait...');
for i=1:1000
  waitbar(i/1000,h)
end
close(h)
msgbox('�Ѵ�����ΪAutoStatistics.xls�ı���ļ��ڳ���Ŀ¼�У���鿴:)','��ܰ��ʾ');

% --------------------------------------------------------------------
function introduction_Callback(hObject, eventdata, handles)
% hObject    handle to introduction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('����ʹ��˵���������������һ�ǻ�����������ͳ�ƣ����ǻ��ڽ���ͳ�ơ�������������ͳ�Ʋ��裺������Ⱥ�ͳ�ƺ�ȵȲ�����>���������������ݡ�>���봢�����ݡ�>��������ͳ�ơ����ڽ���ͳ�Ʋ��裺������Ⱥ�ͳ�ƺ�ȵȲ�����>���������������ݡ�>���봢�����ݡ�>���ڽ���ͳ�ơ�','�����Ի���','help')


% --------------------------------------------------------------------
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.uitable1,'data','');
set(handles.uitable2,'data','');
set(handles.uitable3,'data','');
set(handles.uitable4,'data','');
axes(handles.axes1);
cla;%ȥ���������е�ͼ��
axes(handles.axes2);
cla;%ȥ���������е�ͼ��
guidata(hObject,handles)%����handles����
