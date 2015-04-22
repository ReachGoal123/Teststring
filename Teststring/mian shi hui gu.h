//
//  mian shi hui gu.h
//  Teststring
//
//  Created by wanglin on 15-4-22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface mian_shi_hui_gu : NSObject
/*
 C语言 数据类型
 
 一、数据类型
 
 1.数据类型分类
 
 a.基本数据类型
 
 b.引用数据类型（后续再讲）
 
 2.基本数据类型
 
 在C语言中，基本数据类型有四种:char、int、float、double。
 
 二、字符型 char
 
 1.底层存储是整数，是字符表(ASC)里面的编码。
 
 2.二进制数<==>整数<==>ASC(字符)
 
 3.ASC:American Standard Code
 
 4.UTF8:全世界主流语言编码
 
 5.计算机默认情况只支持ASC
 
 6.常见字符:
 
 ‘A’= 65、’a' = 97、’0' = 48
 
 1.char代表一个字符’ '括起来，占位8位(8bit)内存，8位二进制数占用1个字节(1byte)空间。
 
 2.位bit：描述二进制数的位数
 
 3.字节byte：描述占存储器的空间大小
 
 4.输出函数printf输出char类型变量内容，所使用占分符为%c输出数据
 
 5.输入函数
 
 输入函数scanf 键盘->程序
 
 1)通过键盘向程序传输数据，等待(阻塞)用户输入。直到用户输入完毕，默认以回车为用户输入结束。
 
 control+c 强制停止程序运行
 
 2)语法格式 scanf(” %c",&ch);输入函数
 
 参数1 对应数据类型占位符
 
 参数2 取变量地址，将键盘输入的数据存在
 
 相应地址中
 
 6.转义符 \
 
 在做字符类型数据处理时，一些特殊的符号，需要转义处理。(特殊符号：与系统定义的语法符号冲突)，转义处理，就会用到"\"符号，就是转义符。
 
 常用的转义符处理：
 
 \n 换行字符(下一行行首)
 
 \r  回车字符(本行行首)
 
 \t  制表符(相当于按tab)
 
 点一下空格 等于一个字符
 
 点一下tab  等于8个空格字符
 
 \\ 斜杠字符
 
 \'   单引号字符
 
 \"   双引号字符
 
 7.数据范围
 
 unsigned(无符号) char 8位 1字节 0~255
 
 signed char(*有符号)char 8位 1字节 -128 ~ (0)127
 
 2.有符号：最高位为符号位
 
 3.溢出:超出最大值的范围，从最小值开始计算，超出最小值的范围，从最大值开始计算。
 
 
 
 三、整型 int
 
 1.int代表16位或32位二进制数，short/long修饰。
 
 2.short (int) 16位，long (int)32位，long long int 代表就是64位整数。推荐int类型描述整数。
 
 3.signed int 第一位就是符号位。
 
 
 
 在C语言中，整数有二进制数、八进制数、十进制数、十六进制数。
 
 二进制数，以值0标识为开始，到1结束，当为2时会向前进一位。
 
 十进制数，以值0标识为开始，到9结束，当为10时会向前进一位。
 
 八进制数，以值0标识为开始，到7结束，当为8时会向前进一位。
 
 十六进制数，以值0标识为开始，到15结束，当为16时会向前进一位。A10B11C12D13E14F15
 
 
 
 4.进(数)制转换 自动
 
 1.赋值
 
 int i = 11;//默认 十进制
 
 int i2 = 011;//八进制
 
 int i3 = 0x11;//十六进制
 
 2.输出
 
 printf("i:%d i:%o i:%x\n",i,i,i);
 
 
 
 取值范围
 
 1.short 16位 2字节 有符号 -32768~32767
 
 2.unsigned short 16位 2字节 无符号 0~65535
 
 3.long 32位 4字节 有符号 -2^31~2^31-1(+-21亿)
 
 4.unsigned long 32位 4字节 无符号 0~2^32-1
 
 
 
 四、浮点型 float/double
 
 1.有整数和小数两个部分组成
 
 2.C语言中，浮点型包括float、double、long double。
 
 float 32位 4字节 2^32
 
 double 64位 8字节 2^64
 
 long double 96位 12字节 2^96
 
 3.输出结果时，使用占位符
 
 %f->float
 
 %lf->double %g
 
 %.2f输出的结果保留两位小数
 
 五、数(进)制转换
 
 1.进制转换是人们利用符号来计数的方法，包含有多种数据转换，进制转换由一组数码符号和两个基本因素（位与权），进制包括二进制、十进制、八进制、十六进制。
 
 2.二进制和十进制
 
 a、位与权
 
 9 3  位 = 3*1+9*10
 
 10  1 权
 
 b、整数93在一个字节中的二进制存储方式
 
 0      1      0    1    1   1   0   1 位
 
 128  64   32  16  8   4   2   1 权
 
 c、零和正数：符号位为最高位值0
 
 1)二进制转换成十进制：一位加权 零位不见
 
 01011101=1+4+8+16+64=93
 
 01101101=109
 
 2)十进制转换成二进制：有权添一 无权补零
 
 93=0101 1101
 
 93-64=29-16=13-8=5-4=1-1=0
 
 
 
 UILabel* label=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, 320, 44)];
 
 
 
 label.backgroundColor=[UIColor redColor];
 
 label.text=@"我草泥马";
 
 label.textColor=[UIColor whiteColor];
 
 //字体右边
 
 //label.textAlignment=NSTextAlignmentRight;
 
 
 
 //字体左边
 
 //label.textAlignment=NSTextAlignmentLeft;
 
 
 
 //字体中间
 
 label.textAlignment=NSTextAlignmentCenter;
 
 
 
 // 修改字体的大小
 
 label.font=[UIFont systemFontOfSize:30];
 
 //加粗字体
 
 label.font=[UIFont boldSystemFontOfSize:30];
 
 // 斜体字
 
 label.font=[UIFont italicSystemFontOfSize:40];
 
 //多行显示
 
 label.numberOfLines=0;
 
 [self.view addSubview:label]
 
 
 UIKIT框架
 
 1.1 认识 UIWindow坐标系
 
 普:一个像素点对应UIWindow坐标系中的一个点。
 
 Retina屏:二个像素点对应UIWindow坐标系中的一个
 
 点。(iPhone5/5c/5s)   @2x
 
 左上角为0,0 原点，水平方向是x轴，竖直方向上为y轴，3.5屏  480点，4寸 568点，状态 20 点，导航条 44 横 32。
 
 1.2 UIView 视图
 
 1.frame 子视图相对于父视图的位置和大小
 
 CGPoint 子视图相对父视图位置 x,y;   例:0,20
 
 CGSize    子视图本身的 宽  和  高。
 
 CGRect   是一个矩形框 4个参数  x,y,w,h;
 
 
 
 2.center 子视图相对于父视图的中心点坐标 x,y
 
 3.bounds 子视图本身的大小，宽和高。
 
 4.backgroundColor 背景色
 
 
 
 1.3 UIViewController 视图控制器(管理和控制 视图)
 
 视图控制器VC---->视图View----->图层Layer
 
 1.作用   管理和控制视图，出现 消失  切换等
 
 2.使用步骤:
 
 第一步：自定义类(继承):UIViewController
 
 创建完毕以后 AppDelegate.m中导入
 
 头文件并实例化。
 
 第二步：设置 UIWindow的一个属性,窗口视图,
 
 self.window.rootViewController =	                                                                                           xxVC
 
 第三步：XXXViewController.m 实现需求
 
 
 
 viewDidLoad 载入视图(一般我们自己添
 
 加的代码都写在该方法中)。
 
 
 
 多封装,多用面向对象中得特征  抽象性  继承  封装  多态   扩展类的时候 类别(类目  分类)。分散接口时要多用协议(委托  代理)。
 
 3.每一个视图控制器 都自带一个根视图 view属性。
 
 
 
 3.1 添加子视图  addSubView:UIVIew *类型
 
 
 
 3.2 删除子视图
 
 
 
 二、UILabel UIButton常见属性
 
 
 
 2.1 UILabel 静态文本标签的常见属性
 
 
 
 1> frame 位置和大小
 
 2> 背景色
 
 3> text 文本内容  字符串的类型 常量  变量
 
 4> textColor 文本内容的颜色  UIColor的对象
 
 UIColor 控件的颜色  R  G  B  A  自定义颜色。+方法
 
 5> font  管理字体  字号  指定自定义字体  粗  斜体。
 
 6> 对齐方式   默认 左对齐  居中  右对齐。
 
 7> 文本的阴影的颜色 shadowColor
 
 8> 阴影的位置   shadowoffset 类型CGSize
 
 等
 
 
 
 2.2 UIButton 按钮
 
 
 
 1>是什么
 
 UIButton是UIControl的子类,UIControl是UIView子类,所以受UIButton是一个控件。
 
 可以给一个视图添加一个点击事件。
 
 
 
 2>重要的属性
 
 2.1 frame 属性 相对父视图坐标系的位置和大小
 
 2.2 backgroundColor 背景色
 
 2.3 tag 唯一标示  101 ….102….103….
 
 
 
 3>重要的方法
 
 3.1 设置按钮的标题   setTitle:    forState:
 
 
 
 4>事件通知  ---->UIControl类中来的
 
 addTarget:委托类 action:@selector(方法名) forControlEvents:触发事件的类型
 
 参数2:@selector(方法名)  如果是有参数 :   例:btnClick:
 
 参数3：
 
 按下、点击或触摸按下事件
 
 UIControlEventTouchDown
 
 多次点击(点击次数大于1)
 
 UIControlEventTouchDownRepeat
 
 当一次触摸在控件的窗口内拖动
 
 UIControlEventTouchDragInside
 
 当一次触摸在控件的窗口外拖动
 
 UIControlEventTouchDragOutside
 
 当一次触摸在控件的窗口外拖动------->内
 
 UIControlEventTouchDragEnter
 
 当一次触摸在控件的窗口内拖动------->外
 
 UIControlEventTouchDragExit
 
 当一次触摸或点击  抬起事件
 
 UIControlEventTouchUpInside
 
 当所有控件之外触摸抬起事件
 
 UIControlEventTouchUpOutside
 
 当所有的触摸事件取消时
 
 UIControlEventTouchCancel
 
 当控件的值发生变化时 触发事件
 
 UIControlEventValueChanged
 
 //开始编辑
 
 UIControlEventEditingDidBegin
 
 //内容发生改变了
 
 UIControlEventEditingChanged
 
 //结束编辑
 
 UIControlEventEditingDidEnd
 
 //结束以后退出
 
 UIControlEventEditingDidEndOnExit
 
 
 
 UIControlEventAllTouchEvents
 
 UIControlEventAllEditingEvents
 
 UIControlEventApplicationReserved
 
 UIControlEventSystemReserved
 
 UIControlEventAllEvents  删除通知用
 
 
 
 5>删除一个事件通知
 
 [btn removeTaget:委托类(self)  action:nil  forControlEvents:UIControlEventAllEvents];
 
 
 
 *6>获取到一个控件的所有的制定的动作列表
 
 NSSet *myAction = [myControl allTargets];
 
 拿到一个UIControl对象的所有制定的动作列表，返回的时一个集合对象。
 
 
 
 三、Interface Builder (IB)
 
 
 
 3.1 是什么
 
 是一个可视化的变成工具,在早期的版本中Xcode3.x IB是独立的一个程序，到Xcode4.x以后才集成到Xcode IDE集成开发环境中去。
 
 
 
 3.2 作用
 
 
 
 3.2.1 帮助程序员、开发者在构建界面时的时候使用。比如我们将来要学的 TableViewCell的使用可以用于局部复杂控件的布局，iOS构建界面的时候的其中一种方式。
 
 
 
 3.2.2 苹果公司的一些软件都是由IB设计的
 
 例如：办公三件套   Pages(相当于Office Word),
 
 KeyNote (Office PPT),Numbers等。
 
 
 
 3.2.3  可以少写或不写代码来构建界面，提高开发效率。缺点 你不知道某些功能是通过设置哪个属性来实现的。
 
 
 
 
 
 3.3 工作原理
 
 
 
 将界面上所需要的视图或控件的创建、和一部分属性的设置、以及控件的关系保存到一个XML格式的文件中去。比如说  视图的位置和大小。程序运行时，回从XML格式的文件中读取所需要的视图的配置信息，自动创建出对象，并加入到父视图上。
 
 
 
 3.4 使用IB用到的一些文件
 
 
 
 UIViewController类  ------> 视图控制器
 
 创建一个自定义类，创建是勾选   XIB 文件。
 
 
 
 老版本中 .nib文件  -------->新版本中 .xib
 
 
 
 3.5 如何使用
 
 
 
 第一步：创建一个自定义类  :UIViewController
 
 注意：勾选使用XIB选项。
 
 
 
 第二步：使用XIB文件创建视图
 
 initWithNibName:自定义类类名
 
 
 
 3.6 IBOutlet 属性 和IBAction方法
 
 
 
 作用：XIB文件上创建的视图----->ViewController相关联，必须要有这一步，才能在ViewController中去访问XIB上拖拽的视图或(控件)。
 
 
 
 选中你要的视图------->按Control------->鼠标拖动----->
 
 XXViewController.m中去,要给一个按钮添加一个点击事件，需要使用IBAction方法，这个方法连接到XIB中得某一个控件的某个事件上。当用户出发了这个事件，就会自动调用IBAction类型的方法。
 

 UIStepper
 1.固定SIZI的控件 只能设置它的位置，大小不起作用。
 2.常见的属性：
 
 center  属性x.y;
 例子：stepper.cener=CGPointMake(100,100);
 
 minnimumValue  最小值 0；
 maximumValue  最大值 10;
 
 stepValue  步长2  +/- 一步的值是2；
 
 自动记步antorepeat  默认值YES,是布尔类型的值，如果按住按钮的时候一直累加，如果NO就只加一步,不会自动累加
 
 
 //  数值累加
 self.textlabel.text=[NSString stringWithFormat:@"%d",(int)[sender value]];
 
 // 字体变大
 
 self.textlabel.font=[UIFont systemFontOfSize:sender.value];
 

 ULK图形化操作界面
 
 1.图形化操作界面：如果界面元素复杂，代码方式不方便。
 
 注：
 
 a.创建viewController
 
 创建视图控制器 记得将xib前面打钩
 
 initWithNibName:@“xib文件的名字” bundle:nil
 
 b.在检查器中 showObjectLiberay中，拖拽控件即可。
 
 相当于：创建视图器、自动创建控件、并且修改属性、将控件放到view的子图中。?”添加事件”
 
 c.添加事件 IBAction
 
 右击控件(按住)->拖拽到VC.m(target)
 
 创建方法名字(@selecter) 事件
 
 原有添加：[button target:self action:@selecter(onclick) event:…]
 
 注：原来添加了一个控件并且对应一个方法，把方法删除了，连线不会自动删除。
 
 NSInvalidArgumentException
 
 d.添加属性 IBOutlet
 
 右击控件(UILabel)->拖拽到VC.m(扩展)
 
 注：原来添加了一个控件并且对应一个属性，把属性删除了，连线不会自动删除。
 
 NSUnknownKeyException
 
 注：视图控制器与视图也有一个IBOutlet关系
 
 loaded the "TRViewController" nib but the view outlet was not set.
 
 练习：用图形化操作方式，点击按钮改变label控件的内容
 
 
 2.IBAction/IBOutlet
 
 IBOutlet是一种属性，这种属性指向了xib中的一个对象。
 
 IBAction是一种方法，这个方法连接到xib中的一个控件的某个事件上。当用户触发了这个控件的事件，就会调用此方法。
 
 注：容易出错的地方：方向
 
 3.Interface Builder(IB)
 
 3.1 是什么
 
 一个工具软件，以前是独立的，从xcode4开始集成到code中。
 
 3.2 干什么
 
 帮助程序员设计和构建界面用的
 
 可以不写代码或少写来构建界面，提高开发效率，所见即所得。（Dreamweaver）
 
 3.3 工作原理
 
 将界面上需要的控制(或视图)的创建、属性的设置、之间的关系等都保存到一个xml文件中，程序运行时，从xml文件中读取所有控件(或视图的)配置，自动创建出这些对象，加入到父视图中。
 
 3.4 一些文件
 
 VC类 => xxxHhh.h xxxHhh.m
 
 IB文件=> xxxHhh.xib
 
 .doc       .docx
 
 .nib         .xib
 
 3.5 在Xib文件中
 
 file’s owner ->视图控制器
 
 first responder->第一响应者 当前操作的控件
 
 view->视图控制器中的视图
 
 
 
 4.事件方法的参数
 
 任何控件产生事件时，如果调用一个方法，且这个方法有参数，就会将控件自身传给这个参数。
 
 sender代表事件触发的对象，可以使用id类型，不同类型的控制都可以使用相同的事件触发方法，使用某种类型控件属性必须进行类型转换，且存在安全性问题。也可以指定具体的事件触发的对象类型，缺点灵活欠佳。
 
 当多个控件对象指向同一个事件方法，可以通过事件方法参数的属性来进行区分。
 
 
 
 5.UIStepper,UISlider,UISwitch
 
 5.1UIStepper控件
 
 属性:
 
 .value 当前值
 
 .stepValue 步长值(每点一次增减多少)
 
 .minimumValue 最小值
 
 .maximunValue 最大值
 
 事件：
 
 valueChanged
 
 两种方式：代码的方式和xib的方式
 
 练习：改变UIStepper的初始值，-50~+50
 
 每次点击步长为5，显示在label控件中。
 
 5.2 UISlider控件 滑块
 
 属性：
 
 .value 当前值
 
 .minimumValue 最小值
 
 .maximunValue 最大值
 
 事件：
 
 valueChanged
 
 
 
 练习：划动控件，改变label的背景色
 
 三原色：光(红、绿、蓝) 0~255 ios:0~1
 
 alpha:透明度0~1 1为不透明
 
 label.backgroudColor = [UIColor colorWithRed:… green:0.0 blue:0.0 alpha:1.0];
 
 
 [红色的值:ios*255]  ———o————
 
 [label的背景色]
 
 5.3 UISwitch 开关控件
 
 属性：
 
 .on:BOOL (getter:isOn) 逻辑值改名
 
 事件：
 
 valueChanged
 
 方法：
 
 setOn…animated:YES 支持动画效果
 
 
 
 练习：1.点击开关，如果开，后台就输出信息开。
 
 如果关，后台就输出信息关。
 
 2.在界面创建两个开头对象，如果第一个开	 关是开，就将第二个开关设置成关。如果第	 一个开关是关，将第二个开着设置成开。
 
 
 
 5.4 UITextFiled控件 文本框
 
 a. 是什么
 
 是一个单行文本框，用来接收用户输入的一个控件。
 
 b.使用
 
 c.属性
 
 textFiled.text 文本框的内容
 
 secure 文本框的内容 密文的形式显示
 
 placeHolder 文本框的提示信息(淡显)
 
 BorderStyle 设置边框，无边框可以美工
 
 ClearButton 是否出现清除功能
 
 keyboradType 指定模拟键盘的类型
 
 Appearance键盘显示的样式
 
 ReturnKey 右下角的按键提示
 
 d.第一响应者(First responder)
 
 一个界面中一般只有一个第一响应者，如果UITextFiled控件变成第一响应者，键盘会自动弹出。
 
 如果想取消键盘的使用，就得让UITextFiled控件放弃第一响应者身份。
 
 发送resignFirstResponder消息，放弃第一响应者身份。
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 self.Textnumber.delegate=self;
 self.Textname.delegate=self;
 
 }
 
 
 
 
 
 
 
 
 - (BOOL)textFieldShouldReturn:(UITextField *)textField
 {
 
 [self.Textnumber resignFirstResponder];
 [self.Textname resignFirstResponder];
 return YES;
 
 }
 
 // 载入视图位置
 self.shoujianren.keyboardType=    UIKeyboardTypeNumberPad;
 
 
 //定制键盘

 UIKeyboardTypeDefault,
 UIKeyboardTypeASCIICapable,
 UIKeyboardTypeNumbersAndPunctuation,
 UIKeyboardTypeURL,
 UIKeyboardTypeNumberPad,
 UIKeyboardTypePhonePad,
 UIKeyboardTypeNamePhonePad,
 UIKeyboardTypeEmailAddress,
 UIKeyboardTypeAlphabet = UIKeyboardTypeASCIICapable,
 
定制键盘的确定键

self.Textnumber.returnKeyType=

UIReturnKeyDefault,

UIReturnKeyGo,

UIReturnKeyGoogle,

UIReturnKeyJoin,

UIReturnKeyNext,

UIReturnKeyRoute,

UIReturnKeySearch,

UIReturnKeySend,

UIReturnKeyYahoo,

UIReturnKeyDone,

UIReturnKeyEmergencyCall,



//文本框收键盘
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.zhuti resignFirstResponder];
}
 
 
 

 创建一个新字符串并将其设置为 path 指定的文件的内容,使用字符编码enc,在error上返回错误
 
 + (id)stringWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError **)error;
 
 
 
 创建一个新字符串并将其设置为 url 指定的内容,使用字符编码enc,在error上返回错误
 + (id)stringWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError **)error;
 
 
 
 创建一个新的空字符串
 
 +(id)string
 
 
 
 创建一个新的字符串,并将其内容设置为string的内容
 
 + (id)stringWithString:(NSString *)string;
 
 
 
 将新分配的字符串设置为astring的内容
 
 - (id)initWithString:(NSString *)aString;
 
 
 
 将字符串设置为path指定的文件的内容 使用字符编码enc,在error上返回错误
 
 - (id)initWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError **)error;
 
 
 
 将字符串设置为path指定的文件的内容 使用字符编码enc,在error上返回错误
 
 - (id)initWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError **)error;
 
 
 返回字符串中的字符数目
 
 - (NSUInteger)length;
 
 
 
 返回索引(某个值,比如i)所在的Unicode字符
 - (unichar)characterAtIndex:(NSUInteger)index;
 
 
 
 返回从(?)开始到结尾的子字符串
 
 - (NSString *)substringFromIndex:(NSUInteger)from;
 
 
 
 返回从字符串开始的位置到(?)的子字符串
 - (NSString *)substringToIndex:(NSUInteger)to;
 
 
 
 根据指定范围返回子字符串
 - (NSString *)substringWithRange:(NSRange)range;
 
 
 
 比较两个字符串 (忽略大小写)
 
 - (NSComparisonResult)caseInsensitiveCompare:(NSString *)string;
 
 
 
 比较两个字符串
 
 - (NSComparisonResult)localizedCompare:(NSString *)string;
 
 
 
 测试字符串是否以aString开始
 
 - (BOOL)hasPrefix:(NSString *)aString;
 
 
 
 测试字符串是否以aString结尾
 
 - (BOOL)hasSuffix:(NSString *)aString;
 
 
 
 测试两个字符串是否相等
 
 - (BOOL)isEqualToString:(NSString *)aString;
 
 
 
 返回字符串 串中的每个单词的首字母大写,其余字母小写
 
 - (NSString *)capitalizedString;
 
 
 
 返回转换为小写的字符串
 
 - (NSString *)lowercaseString;
 
 
 
 返回转换为大写的字符串
 
 - (NSString *)uppercaseString;
 
 
 
 返回转换为UTF8编码格式的字符串
 
 - (__strong const char *)UTF8String;
 
 
 
 返回转换double类型的字符串
 
 - (double)doubleValue;
 
 
 
 返回转换float类型的字符串
 
 - (float)floatValue;
 
 
 
 返回转换int类型的字符串
 
 - (int)intValue;
 
 
 
 返回转换为NSInteger类型的字符串
 
 - (NSInteger)integerValue
 
 
 UITextField中的使用addTarget方法获取回车（Return key）点击的方法
 
 
 在- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string中监听replacementText，如果为回车则将键盘收起
 
 1 - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
 2     {
 3
 4         if ([string isEqualToString:@"\n"]) {
 5
 6             [textField resignFirstResponder];  //textField为你的UITextField实例对象
 7             return NO;
 8         }
 9
 10         return YES;
 11     }
 
 iOS UITableViewDelegate UITableViewDataSource 执行顺序
 
 #pragma mark - Table view data source
 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
 
 #pragma mark - Table view delegate
 - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
 
 #pragma mark - Table view data source
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
 
 #pragma mark - Table view delegate
 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
 
 #pragma mark - Table view data source
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
 
 #pragma mark - Table view delegate
 - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;
 
 
 
 
 
 
 
 这个功能的重点就是在如何判断应用是第一次启动的. 其实很简单
 
 我们只需要在一个类里面写好用户引导页面  基本上都是使用UIScrollView 来实现,
 
 新建一个继承于UIViewController的类 命名为 UserGuideViewController ,
 
 在UserGuideViewController.m 写
 
 复制代码
 1 - (void)viewDidLoad
 2 {
 3     [super viewDidLoad];
 4     // Do any additional setup after loading the view.
 5     self.view.backgroundColor = [UIColor redColor];
 6
 7     [self initGuide];   //加载新用户指导页面
 8 }
 9
 10 - (void)initGuide
 11 {
 12     UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 640)];
 13     [scrollView setContentSize:CGSizeMake(1280, 0)];
 14     [scrollView setPagingEnabled:YES];  //视图整页显示
 15     //    [scrollView setBounces:NO]; //避免弹跳效果,避免把根视图露出来
 16
 17     UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
 18     [imageview setImage:[UIImage imageNamed:@"0.png"]];
 19     [scrollView addSubview:imageview];
 20     [imageview release];
 21
 22     UIImageView *imageview1 = [[UIImageView alloc] initWithFrame:CGRectMake(320, 0, 320, 460)];
 23     [imageview1 setImage:[UIImage imageNamed:@"1.png"]];
 24     [scrollView addSubview:imageview1];
 25     [imageview1 release];
 26
 27     UIImageView *imageview2 = [[UIImageView alloc] initWithFrame:CGRectMake(640, 0, 320, 460)];
 28     [imageview2 setImage:[UIImage imageNamed:@"2.png"]];
 29     [scrollView addSubview:imageview2];
 30     [imageview2 release];
 31
 32     UIImageView *imageview3 = [[UIImageView alloc] initWithFrame:CGRectMake(960, 0, 320, 460)];
 33     [imageview3 setImage:[UIImage imageNamed:@"3.png"]];
 34     imageview3.userInteractionEnabled = YES;    //打开imageview3的用户交互;否则下面的button无法响应
 35     [scrollView addSubview:imageview3];
 36     [imageview3 release];
 37
 38     UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];//在imageview3上加载一个透明的button
 39     [button setTitle:nil forState:UIControlStateNormal];
 40     [button setFrame:CGRectMake(46, 371, 230, 37)];
 41     [button addTarget:self action:@selector(firstpressed) forControlEvents:UIControlEventTouchUpInside];
 42     [imageview3 addSubview:button];
 43
 44     [self.view addSubview:scrollView];
 45     [scrollView release];
 46 }
 复制代码
 button的方法
 
 1 - (void)firstpressed
 2 {
 3     [self presentModalViewController:[[[WeiBoViewController alloc] init] autorelease] animated:YES];  //点击button跳转到根视图
 4 }
 
 
 至于添加button是因为我的用户引导最后一个页面有一个画上去的button,写着 开始使用  我在上面添加一个透明的button 用以实现调用方法
 
 
 
 打开AppDelegate.m
 
 首先引入头文件
 
 1 #import "UserGuideViewController.h"
 2 #import "WeiBoViewController.h"
 WeiBoViewController是我的根视图
 application: didFinishLaunchingWithOptions: 方法内进行判断
 
 复制代码
 1 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 2 {
 3     self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
 4     // Override point for customization after application launch.
 5
 6     //判断是不是第一次启动应用
 7     if(![[NSUserDefaults standardUserDefaults] boolForKey:@"firstLaunch"])
 8     {
 9         [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstLaunch"];
 10         NSLog(@"第一次启动");
 11         //如果是第一次启动的话,使用UserGuideViewController (用户引导页面) 作为根视图
 12         UserGuideViewController *userGuideViewController = [[UserGuideViewController alloc] init];
 13         self.window.rootViewController = userGuideViewController;
 14         [userGuideViewController release];
 15     }
 16     else
 17     {
 18         NSLog(@"不是第一次启动");
 19         //如果不是第一次启动的话,使用LoginViewController作为根视图
 20         WeiBoViewController *weiBoViewController = [[WeiBoViewController alloc] init];
 21         self.window.rootViewController = weiBoViewController;
 22         [weiBoViewController release];
 23
 24     }
 25
 26     self.window.backgroundColor = [UIColor whiteColor];
 27     [self.window makeKeyAndVisible];
 28     return YES;
 29 }
 复制代码
 
 
 这样,就可以实现第一次打开应用显示用户引导 之后不再显示
 
 

*/




 
 
 
 
 
 
 
 
 
 

@end
