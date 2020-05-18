function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 17-May-2020 10:43:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);
% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('back1.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');


% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X = " ";
set(handles.uitable1,'Data',X);



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
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



function c_Callback(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c as text
%        str2double(get(hObject,'String')) returns contents of c as a double


% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e_Callback(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e as text
%        str2double(get(hObject,'String')) returns contents of e as a double


% --- Executes during object creation, after setting all properties.
function e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
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

x = xlsread('Hotel.xlsx');
[m n] = size(x);%inisialisasi ukuran x
HK(m,n) = 0;
for i=1:m
    %Kriteria Harga Kamar
    if(x(i,1)>1100000)
        HK(i,1)=0.2;
    elseif(x(i,1)<=1100000 & x(i,1)>900000)
        HK(i,1)=0.4;
    elseif(x(i,1)<=900000 & x(i,1)>700000)
        HK(i,1)=0.6;
    elseif(x(i,1)<=700000& x(i,1)>500000)
        HK(i,1)=0.8;
    else
        HK(i,1)=1;
    end
    %Kriteria Penilaian Fasilitas
    if(x(i,2)<=3)
        HK(i,2)=0.2;
    elseif(x(i,2)<=4)
        HK(i,2)=0.4;
    elseif(x(i,2)<=5)
        HK(i,2)=0.6;
    elseif(x(i,2)<=6)
        HK(i,2)=0.8;
    else
        HK(i,2)=1;
    end
    %Kriteria Penilaian pelayanan/kelas
    if(x(i,3)==1)
        HK(i,3)=0.2;
    elseif(x(i,3)==2)
        HK(i,3)=0.4;
    elseif(x(i,3)==3)
        HK(i,3)=0.6;
    elseif(x(i,3)==4)
        HK(i,3)=0.8;
    else
        HK(i,3)=1;
    end
    
     %Kriteria Jarak dari Bandara
    if(x(i,4)>15)
        HK(i,4)=0.2;
    elseif(x(i,4)<=15 & x(i,4)>11)
        HK(i,4)=0.4;
    elseif(x(i,4)<=11& x(i,4)>7)
        HK(i,4)=0.6;
    elseif(x(i,4)<=7 & x(i,4)>3)
        HK(i,4)=0.8;
    elseif(x(i,4)<=3)
        HK(i,4)=1;
    end
    
     %Kriteria Penilaian jarak dari Malioboro
     if(x(i,5)>15)
        HK(i,5)=0.2;
    elseif(x(i,5)<=15 & x(i,5)>11)
        HK(i,5)=0.4;
    elseif(x(i,5)<=11& x(i,5)>7)
        HK(i,5)=0.6;
    elseif(x(i,5)<=7 & x(i,5)>3)
        HK(i,5)=0.8;
    elseif(x(i,5)<=3)
        HK(i,5)=1;
    end
    
end

[m,n] = size(HK);
set(handles.uitable1,'Data',x);%menampilkan data dari excel
set(handles.uitable5,'Data',HK);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.uitable1,'Data',[]);%button untuk menghapus data pada tabel
set(handles.uitable5,'Data',[]);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = xlsread('Hotel.xlsx'); %mengambil data dari excel
k=[0,1,1,0,0]; %nilai kriteria [0 =cost, 1=biaya]
a = str2double(get(handles.a,'string'));%menginputkan atribut harga
b = str2double(get(handles.b,'string'));%menginputkan atribut akses web
c = str2double(get(handles.c,'string'));%menginputkan atribut kapasitas baterai
d = str2double(get(handles.d,'string'));%menginputkan atribut kapasitas baterai
e = str2double(get(handles.e,'string'));%menginputkan atribut kapasitas baterai
w = [a,b,c,d,e];%yang di inputkan masuk ke bobot tiap kriteria
[m n] = size(x);%inisialisasi ukuran x
HK(m,n) = 0; 
%untuk merubah data yang ada pada tabel agar sesuai dengan bobot pada
%masing2 kriteria
for i=1:m
    %Kriteria Harga Kamar
    if(x(i,1)>1100000)
        HK(i,1)=0.2;
    elseif(x(i,1)<=1100000 & x(i,1)>900000)
        HK(i,1)=0.4;
    elseif(x(i,1)<=900000 & x(i,1)>700000)
        HK(i,1)=0.6;
    elseif(x(i,1)<=700000& x(i,1)>500000)
        HK(i,1)=0.8;
    else
        HK(i,1)=1;
    end
    %Kriteria Penilaian Fasilitas
    if(x(i,2)<=3)
        HK(i,2)=0.2;
    elseif(x(i,2)<=4)
        HK(i,2)=0.4;
    elseif(x(i,2)<=5)
        HK(i,2)=0.6;
    elseif(x(i,2)<=6)
        HK(i,2)=0.8;
    else
        HK(i,2)=1;
    end
    %Kriteria Penilaian pelayanan/kelas
    if(x(i,3)==1)
        HK(i,3)=0.2;
    elseif(x(i,3)==2)
        HK(i,3)=0.4;
    elseif(x(i,3)==3)
        HK(i,3)=0.6;
    elseif(x(i,3)==4)
        HK(i,3)=0.8;
    else
        HK(i,3)=1;
    end
    
     %Kriteria Jarak dari Bandara
    if(x(i,4)>15)
        HK(i,4)=0.2;
    elseif(x(i,4)<=15 & x(i,4)>11)
        HK(i,4)=0.4;
    elseif(x(i,4)<=11& x(i,4)>7)
        HK(i,4)=0.6;
    elseif(x(i,4)<=7 & x(i,4)>3)
        HK(i,4)=0.8;
    elseif(x(i,4)<=3)
        HK(i,4)=1;
    end
    
     %Kriteria Penilaian jarak dari Malioboro
     if(x(i,5)>15)
        HK(i,5)=0.2;
    elseif(x(i,5)<=15 & x(i,5)>11)
        HK(i,5)=0.4;
    elseif(x(i,5)<=11& x(i,5)>7)
        HK(i,5)=0.6;
    elseif(x(i,5)<=7 & x(i,5)>3)
        HK(i,5)=0.8;
    elseif(x(i,5)<=3)
        HK(i,5)=1;
    end
    
end

[m,n] = size(HK);
R = zeros (m,n);
%normalisasi data yang telah disesuaikan bobot
for j=1:n,
    if k(j)==1,
        R(:,j)=HK(:,j)./max(HK(:,j));
    else
        R(:,j)=min(HK(:,j))./HK(:,j);
    end;
end;
%penghitugan alternatif
for i=1:m,
    V(i) = sum(w.*R(i,:));
end;
%menentukan aternatif yang terbaik
maxx = 0;
for i=1:m,
    if maxx < V(i)  
	maxx = V(i);
    end;
end; 

G=V;
U(1,6)=0;
for j=1:m
    B = max(G);
    U(1,j)=B;
    if (B==G(1,1))
        Alt(1,j) = "Grand Dafam Rohan Yogyakarta";
        G(1,1)=0;
    elseif (B==G(1,2))
        Alt(1,j) = "Indies Heritage Yogyakarta";
        G(1,2)=0;
    elseif (B==G(1,3))
        Alt(1,j) = "Grand Serela Yogyakarta";
        G(1,3)=0;
    elseif (B==G(1,4))
        Alt(1,j) = "Tentrem Yogyakarta";
        G(1,4)=0;
    elseif (B==G(1,5))
        Alt(1,j) = "Pawon Cokelat Yogyakarta";
        G(1,5)=0;
    end
   end; 
disp(V);
disp(maxx);
disp (Alt (1))
set(handles.text10,'string', V(1)); %menampilkan hasil bobot kriteria pada HP 1
set(handles.text37,'string', V(2)); %menampilkan hasil bobot kriteria pada HP 2
set(handles.text38,'string', V(3)); %menampilkan hasil bobot kriteria pada HP 3
set(handles.text39,'string', V(4)); %menampilkan hasil bobot kriteria pada HP 4
set(handles.text40,'string', V(5)); %menampilkan hasil bobot kriteria pada HP 5
set(handles.text45,'string', V(6)); %menampilkan hasil bobot kriteria pada HP 5
set(handles.text42,'string', maxx ); %menampilkan hasil bobot kriteria pada HP yang paling tiggi nilai bobot alternatifnya
set(handles.text58,'string', Alt(1) );



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = set(handles.a,'string', ' '); %menghapus isian
b = set(handles.b,'string', ' ');
c = set(handles.c,'string', ' ');
d = set(handles.d,'string', ' ');
e = set(handles.e,'string', ' ');
set(handles.text10,'string',' ');
set(handles.text37,'string', ' ');
set(handles.text38,'string', ' ');
set(handles.text39,'string', ' ');
set(handles.text40,'string', ' ');
set(handles.text45,'string', ' ' );
set(handles.text42,'string', ' ' );



function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double


% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g_Callback(hObject, eventdata, handles)
% hObject    handle to g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g as text
%        str2double(get(hObject,'String')) returns contents of g as a double


% --- Executes during object creation, after setting all properties.
function g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as a double


% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e as text
%        str2double(get(hObject,'String')) returns contents of e as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
