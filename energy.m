Ppered=10; %�������� ����������� ����� ������ ��� ������ ����
ygol=10; % ���� �����
shir=68; dolg=37; dolgsp=61; % ������ ������� ������ ������� ������� ����� ������� ��������
%dal=(42250*sqrt(1.023-0.3*cos(shir)*cos(dolg-dolgsp)));%������ ������������ ���������
dal=42529;
diam1=4; % ������� 1 ������� ����� ������ �������� ��������� ��� ������� ������ ����
diam2=0.2; % ������� 2 �������
ebntreb=1.6; %��������� ��������� ������� ������ � ������������ ��������� ����
M=2; %������� ��������� 8 PSK
ber=10^(-6);% ����������
k=-228.6; % ����������� ���������
Aeff1=0.55*4*pi*diam1; % �� �����������
Aeff2=0.55*4*pi*diam2; % �� �����������
f1=1.2*10^9; % ������� �����
f2=1.65*10^9; % ������� ����
dlinav1=3*10^8/f1; %����� ����� �����
dlinav2=3*10^8/f2; % ����� ����� ����
Gpered= 10*log10(0.6*(pi*diam1/dlinav1)^2);% �� ������� ����� ������ ����� ����� ��� ������� ������ ���� �� 2
Gpriem=10*log10(0.6*(pi*diam2/dlinav1)^2); %�� ������� ����� ������ ����� ����� ��� ������� ������ ���� �� 2
Lpr=20*log10(((4*pi*dal)/dlinav1)); % ���������������� ������ ����� ������ ����� ����� ��� ������� ������ ���� �� 2
R=20;% �������� �������� � �� � ���� 32 �����/�
r=0.75; % �������� �����������
R1=32768; % �� �����
B=R+10*log10(1.2/log2(M*r)); % ������ ������ �����������
B1=10*log10((1.2*R1)/log2(M*r));% ������ ������ ����������� ������ �� ������� ��������
Tant=3100; % ����������� ������� ���� ������ ��� ������� ������ ����
Tpriem=290; %����������� ��������� ���� ������ ��� ������� ������ ����
Tpered=290;%����������� ����������� ���� ������ ��� ������� ������ ����  ����� �� �����, �� �������� � �������
Tsys=10*log10((Tant+Tpriem)); % ����������� �������
Rx=k+Tsys+B+ebntreb; % ���������������� ���������, ��� ��������� � �������� ��������� � ����������� �������� ������� �������
eeim=Ppered+Gpered -1; % ����
Ppriem=eeim+Gpriem-Lpr; %�������� ��������
dobro=Gpriem-Tsys; % ����������� �������, ���-�� ����� ���������������� 
No=k+Tsys;% ������������ ��������� ����
Sn=Ppriem-No; % ��������� ������ ���
ebnoprin=Sn-B;% �������� ��������� ������� ������ � ������������ ��������� ����
REEEE=Ppriem-Rx; % ������
REEE2= eeim-Lpr+dobro-k-B;%���� ������ �� �� �������
rezerv=ebnoprin-ebntreb; % ��� ���� ������ ��� ���������
%-ebntreb