//
//  Teststring.h
//  Teststring
//
//  Created by wanglin on 14-12-25.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teststring : NSObject
//+(void)testNSString;

/*
 汇编语言 低级语言 偏向硬件本身表达方式 效率高、难理解
 
 高级语言 C、Java、OC、C# 偏向人表达方式 效率低、理解易
 
 c.语系分类
 
 C语系
 
 B语系
 
 d.C语系
 
 C、C++、C#、OC(ObjectiveC)、Java
 
 2.C语言的优点
 
 a.高效
 
 b.功能强大
 
 c.灵活 从嵌入式至商用开发
 
 d.标准库(工具)
 
 e.Unix、Linux、MAC系统集成C语言的开发环境
 
 3.C语言的缺点
 
 a.有时难以理解
 
 b.有时易隐藏错误
 
 c.有时会难修改
 
 二、C语言概述
 
 1.编程：自己有一个想法，通过计算机语言使计算机理解帮我们实现。
 
 2.C语言：就是告诉计算机如果去操作的一种方式。
 
 3.C语言及标准化：
 
 a.最早由Denis Richchie于1973年为Unix设计并实现
 
 从贝尔实验室。
 
 b.C89 ANSI美国国家标准89年12月正式通过
 
 C99 1999年ISO通过了新版本，C语言的标准，
 
 包含了一些重要改变。
 
 三、C语言的编程步骤
 
 1.编辑 C语言
 
 保存在文件中，且以扩展名.c结尾 test.c
 
 #include <stdio.h>
 
 int main(){
 
 printf("HelloWorld!\n");
 
 return 0;
 
 }
 
 2.编译 C语言->二进制代码(0、1)
 
 gcc *.c 将c语言文件->二进制文件 默认生成	a.out文件 windows中*.exe
 
 3.运行 二进制代码 ./a.out
 
 四、编辑
 
 编写C语言的代码，保存在扩展名.c文件中，源文件。
 
 编写代码有三种方式：
 
 1.vi命令行方式 系统自带
 
 2.***UltraEdit 网络下载
 
 3.xcode 网络下载
 
 五、编译
 
 1.将C语言代码转换成计算机识别的代码(二进制代码) 目标文件（可执行文件）
 
 2.GNU C Compiler，GNU自由软件基金会的项目，C语言，Compiler编译。
 
 3.编译C语言、C++、Java、ObjectiveC
 
 六、运行
 
 1.默认情况下，编译后的文件名叫做a.out文件
 
 2.通过命令"./" 运行编译后的文件(a.out)。
 
 七、分析一下第一个c语言程序
 
 1.预处理命令(头文件)#include <stdio.h>
 
 2.函数，代码段，***入口程序 必须有且只有唯一一个
 
 int main(){
 
 ……语句….
 
 return 0;
 
 }
 
 3.语句 以”;"符号结尾为一条语句，语句是以自上向下的顺序依次执行。
 
 printf("HelloWorld2!\n");
 
 4.printf("")输出函数，会将""符号中的内容，原样输出(显示）到屏幕上。
 
 5.\n符号，转义符，将语句与语句之间换一行。
 
 八、预处理（预编译）指令 #include
 
 1.在编译之前做的事情
 
 2.相当于复制操作 不推荐在一个文件中包含另一个.c文件
 
 3.加载系统提供的标准函数库
 
 #include <stdio.h>
 
 stdio.h 标准输入输出功能
 
 standard input output (printf)
 
 4.gcc -E *.c 查看编译前文件内容
 
 5.在使用#include指令的时候，可以有两种方式<>和""两种格式
 
 a.<>是加载系统功能，可以在/usr/include中得到相应文件
 
 b.""是加载自定义功能，优先查找当前文件夹下的文件，再去查看C函数库中的文件
 

 九、C语言程序的完整执行过程
 
 1.语句可以分开放在任意行任意文件中(一个文件、多个文件)
 
 2.代码预处理，解决所有指定(#开头)
 
 3.编译源代码，每个源文件都会生成一个目标文件*.o，如果程序只有一个源文件，默认会忽略这一步。-c
 
 4.链接代码 将多个目标文件合成一个可执行文件。(a.out)
 
 5."./a.out"运行程序，加载a.out可执行程序到内存当中
 
 6.a.out运行代码，cpu去内存中执行代码
 
 
 
 十、C语言的编程规范
 
 1.语句可以分开放在任意行的位置
 
 2.空格让代码更清晰
 
 3.缩进可以让程序层次更直观(tab)
 
 4.空行可以更好的划分程序逻辑单元
 
 5.命名使用驼峰标识或者下划线 _-_-_
 
 *getName getNameByPinYin
 
 get_name	 get_name_by_pinyin
 
 十一、变量
 
 1.概述
 
 大多数程序会进行大量计算，在计算过程当中需要临时保存数据，存储数据的方法，称之为变量。
 
 2.数据类型
 
 对应内存区域，其值可变，变量有相应的类型和值。
 
 3.变量类型分为字符型char、整数型int、浮点型float/double、指针、结构、联合等类型。
 
 4.每次使用之前要声明，需要声明其类型且只声明一次
 
 a.声明 int number1;
 
 声明变量number1，并且开辟(int类型)内存空间。
 
 b.保存运算中临时的值 number1 = 10 赋值，可以多次赋值，但只会保存最后一次的值
 
 5.声明一个变量，在使用之前，它是有可能有值的，但是最好给它一个初值，给变量第一次赋值，初始化。
 
 int number3=0;
 
 6.声明变量的格式
 
 变量类型 变量名 = 初始值;
 
 7.输出变量的值
 
 %d变量类型对应的占位符
 
 %d int
 
 %f float
 
 %lf double
 
 %c char
 
 eg:printf(“%d",number3);
 
 十二、浮点数据类型
 (小数)float
 
 1.float类型代表浮点数（小数）数值的表示方式
 
 2.输出函数输出内容的时候占位符为%f
 
 3.%.2f可以只显示两位有效数字
 
 十三、变量的名字必须是标识符，函数、宏、实体名也必须使用标识符来起名。
 
 1.必须以字母或下划线开头
 
 2.包含字母、下划线或数字
 
 3.大小敏感的
 
 4.不能与关键字冲突
 
 5.标识符理论上讲，长度无限制，但会被编译器截断
 
 注：见名之意 shuZi
 
 3	 -int
 
 3L	 -long int
 
 3LL	 -long long int
 
 3u	 -unsigned int
 
 3ul    -unsigned long
 
 2.
 
 3.5	 -double
 
 3.5f	-float
 
 3.5L	-long double 2^96
 
 3.
 
 ‘A’
 
 三、sizeof(参数)
 
 计算出数据所占内存空间大小，以字节单位。
 
 参数可以是类型、变量或表达式，但sizeof()不负责计算表达式的值，只关注类型。
 
 sizeof(参数)对应的数据类型是long unsigned int->%ld
 
 四、运算符
 
 C语言的一个特点是它更强调表达式而不是语句，表达式是表示如何计算值的公式，最简单的表达式是常量和变量，变量表示程序运行的时候需要计算的值，常量表示不变的值，更加复杂的表达式把运算符用作操作数。
 
 1.算术运算符
 
 a.+、-、*
 
 b./(求商)和%(求余、取模)
 
 1)/ 整数相除，取整数部分
 
 2)/和%都不能对0操作，否则中断程序，但/0.0允许，无穷大(inf)。
 
 3)%只能用于整数，浮点数不支持
 
 
 b./(求商)和%(求余、取模)
 
 4)/向0取整(取更靠近0的数)，运算时的符号与数学中的定义是一样的
 
 5)%符号与%前面的数字符号相同，运算时的符号与数学中的定义是不一样的
 
 2.赋值运算符 =
 
 a.把等号右边的值赋给左边的变量
 
 赋值从右向左
 
 int i = 10;
 
 int j=20,k=30;
 
 i=j=k=6;注：不推荐
 
 b.左边必须是一个左值(变量)，不能是常量，也不能是表达式
 
 i+j = 10;错误
 
 int 10 = x;错误
 
 c.=代表赋值 ==代表相等
 
 d.赋值可以和其它运算符结合使用，叫复合赋值
 
 i+=3 -> i = i + 3
 
 优点：+=（*一个操作数） 比 = + （二个操作数）效率高
 
 3.自增、自减运算符
 
 a.++或--：变量自增或自减，不能用于常量。
 
 b.可以使用*整型变量 int/short/long、浮点型float/double和字符型char变量。
 
 c.前缀表达式++i，先自增(减)，再运算
 
 后缀表达式i++，先运算，再自增(减)
 
 d.i，++i，i++，从内存上说是同块内存
 
 e.在同一个表达式中不要对同一个变量多次进行自增或自减操作，难度加大，代码变的不可读。
 
 k=++l + l++ + l++;
 
 4.关系运算符
 
 a.主要用来表示两个或多个数、变量、表达式之间的关系。
 
 b.在C语言中，关系运算符和数学上的>、<、>=、<=相对应的，==等于、!=不等于，表达式产生结果，1(成立)或0(不成立)
 
 c.关系运算符也可以用于比较整数和浮点数，也允许混合类型操作数。
 
 5.逻辑运算符 &&与 、||或、 !非
 
 通常用来表示表达式间的关系
 
 a.逻辑运算符所产生的结果：逻辑结果0(不成立、假)或者1(成立、真)
 
 b.当操作数处理结果不是1或者0时，逻辑运算符将非零操作数作为真值处理。	 1真 非0真 0假
 
 c.&&与(且)、||或、!非
 
 d.表达式1 && 表达式2   逻辑表达式的结果为
 
 真                    真                       真
 
 真                    假                       假
 
 假                    真                       假
 
 假                    假                       假
 
 两者都为真，逻辑表达式结果才为真
 
 e.表达式1 || 表达式2      逻辑表达式的结果为
 
 真                    真                        真
 
 真                    假                        真
 
 假                    真                        真
 
 假                    假                        假
 
 两者只要有其一为真，逻辑表达式结果就为真
 
 f.非(取反)关系表达式
 
 表达式1         !表达式1
 
 真                    假
 
 假                    真
 
 取原来表达式的相反值
 
 g.短路运算
 
 1）短路与：若第一个表达式的值为假，后面的表达式不再计算
 
 2）短路或：若第一个表达式的值为真，后面的表达式不再计算
 
 6.取地址&和寻址运算符*
 
 a.在变量前加上&，得到的就是变量在内存中的地址
 
 b.内存会被划分成以字节为单位，一块一块的空间
 
 每一个空间都有唯一的标识，内存地址。
 
 c.在地址前使用*寻址符号，得到该地址保存的数据、值。
 
 7、类型转换
 
 a.类型升级
 
 类型升级，浮点型高于整型，长整型高于短整型，有符号与无符号取有符号。
 
 在C语言中，类型转换是没有提示的
 
 高 long double
 
 double
 
 float
 
 long long
 
 long
 
 低 int
 
 a.类型升级
 
 低精度的值赋值给高精度的值是没有问题
 
 int i = 10;float f = i;
 
 高精度的值赋值给低精度的值是有可能有问题的
 
 int i2 = 200;
 
 char c = (char)i2;//最好在代码中提示
 
 b.其它转换
 
 1)浮点型和整型运算，转换浮点型(double)后运算
 
 2)short/char的运算转成int后运算
 
 c.如果程序中进行类型转换，可以使用强制类型转换
 
 目标类型 变量 = (目标类型)源类型变量;
 
 注：类型转换的时候，实际是建立了一个新的变量（开辟了新的内存空间），原有的变量不变。
 
 8.条件运算符 多目运算符 三目运算符
 
 1.语法格式:
 
 条件表达式?表达式1:表达式2;
 
 2.若条件表达式值为真值，则条件表达式的值为表达式1的值，若条件表达值为假，则条件表达式的值为表达式2的值。表达式1和表达式2为不同的基本类型时，会自动转换二者中精度较高的类型。
 
 9.逗号运算符
 
 表达式1,表达式2,表达式n;
 
 1.依次计算各表达式的值，以表达式n的值作为整个表达式的结果
 
 2.并不是所有出现逗号的地方都组成逗号表达式，如果在声明变量、函数的参数中，逗作用就是分隔符。
 
 10.运算符的优先级
 
 a.单目运算符(++、--)优先级较高，赋值运算符优先级较低，算术运算符优先级比较高，关系运算符和逻辑运算符优先比较低。从高到低参考关系:如
 
 10.运算符的优先级
 
 高	初等运算符:()、[]、.
 
 |     单目运算符：!、++、--、类型转换、&、*、sizeof()
 
 |     算术运算符：先*、/、%、后加、减
 
 |	 关系运算符：>、>=、<、<= 高于!=、==
 
 |     逻辑运算符:   !高于&&高于||
 
 |     条件运算符：?:
 
 |     赋值运算符:	 =、+=…复合赋值
 
 低   逗号运算符：,
 
 注：如果无法确定优先级，可像数学中的情况一样，使用()符号。
 
 b.运算顺序(结合性)
 
 多数运算符具有左结合性，单目/三目/赋值运算符具有右结合性。
 
 左结合性:a+b+c=>(a+b)+c
 
 右结合性:a=b=c=>a=(b=c)
 
 C语言 流程控制
 
 1.条件分支
 
 a.语法格式
 
 if(表达式1){
 
 表达式1为真时(非0时)，执行的语句部分。
 
 代码块可以由一条件或多条语句组成
 
 }else if(表达式2){
 
 表达式2为真时(非0时)，执行的语句部分。
 
 }else{
 
 以上条件都不满足，执行的语句部分。
 
 }
 
 b.if只能出一次，else if可以出现0~N次，else可以出现0~1次。
 
 c.If…else语句应用于需要根据不同条件执行代码的场合
 
 d.if…else语句最多只能执行一个分支，有else分支，必选其一执行，无else分支，可以选其一执行，也可能不执行。
 
 e.如果{}中仅有一条语句，可以省略{}，不推荐。
 
 2.开关分支(选择分支)
 
 a.语法规则
 
 switch(控制表达式){//整型或字符类型变量组成->常量
 
 case 常量表达式1:语句;break;
 
 case 常量表达式2:语句;break;
 
 case 常量表达式n:语句;break;
 
 default :语句;break;
 
 }
 
 b.break关键字，终止switch代码块的继续执行。
 
 c.控制表达式当做整型数据处理，也可以是字符型数据处理，但不能是浮点数和字符串。常量表达式必须是常量(整数和字符组成)，不允许重复。
 
 d.default语句，不一定在最后一行
 a.循环就是重复执行循环体(语句、语句块)的一种语句，在C语言中，每一个循环都有一个控制表达式(循环终止的条件)，每次循环的时候，都要向控制表达式求值，如果表达式的值为真(1)，那么继续循环，如果值为假，终止循环。
 
 b.C语言中使用循环语句来反复执行特定的代码段，	在C语言中循环有三种表现方式:for/while/do while
 
 c.for循环
 
 1).语法规则
 
 for(表达式1;表达式2;表达式3){
 
 循环体;(可以是一条或多条语句)
 
 }
 
 表达式1:用来标识每一次循环，初始值
 
 表达式2:用来判断循环是否执行的控制语句
 
 表达式3:每次循环之间的规律，步长
 
 d.循环的执行顺序
 
 1)第一次执行循环语句的时候
 
 执行表达式1->表达式2(真)->循环体
 
 执行表达式1->表达式2(假)->终止循环
 
 2)第二次执行循环语句的时候
 
 执行表达式3->表达式2(真)->循环体
 
 执行表达式3->表达式2(假)->终止循环
 
 3)第n次执行循环语句的时候
 
 执行表达式3->表达式2(真)->循环体
 
 执行表达式3->表达式2(假)->终止循环
 
 e.for(;;) 编译不会报错，循环次数是不确定的，死循环，永远的执行下去。ctrl+c强制终止循环。
 
 f.break关键字，不但可以终止switch语句，也可以终止for循环语句。
 
 g.continue关键字，可以终止当次循环，继续下一次循环。
 
 
 
 二、循环的嵌套(多重循环)
 
 1)如果两重循环，外面的循环执行一次，里面循环执行一遍。
 
 2)外面的循环和行有关系，里面的循环和列有关系。
 
 eg:
 
 for(;;){
 
 for(;;){}
 
 }
 
 三、while
 
 while循环与for循环完全互通，除了语法格式稍有区别，其它原理、工作方式都是一样的。
 
 a.语法格式
 
 表达式1;
 
 while(表达式2){
 
 循环体;
 
 表达式3;
 
 }
 
 b.执行顺序
 
 1)第一次执行循环的时候
 
 表达式1->表达式2(真)->循环体->表达式3
 
 表达式1->表达式2(假)->终止循环
 
 2)第二次执行循环的时候
 
 表达式2(真)->循环体->表达式3
 
 表达式2(假)->终止循环
 
 3)第N次执行循环的时候
 
 表达式2(真)->循环体->表达式3
 
 表达式2(假)->终止循环
 
 四、do … while
 
 先执行循环体，再进行判断，do...while与for、while最大的不同，就算条件不成立，至少也会执行一次。
 
 1.语法格式
 
 表达式1;
 
 do{
 
 循环体;
 
 表达式3
 
 }while(表达式2);
 
 2.执行顺序
 
 a.第一次执行循环
 
 表达式1->循环体->表达式3->表达式2(真)->继续
 
 表达式1->循环体->表达式3->表达式2(假)->终止
 
 b.第二次执行循环
 
 循环体->表达式3->表达式2(真)->继续
 
 循环体->表达式3->表达式2(假)->终止
 
 五、三个循环的对比
 
 1.可以控制循环的范围 for循环
 
 2.关注循环规则 while循环
 
 3.第一次不需要进行判断的时候 do…while
 
 1.概述
 
 数组是用来存储多条相同数据类型的数据结构。(容器)
 
 2.关键点
 
 a.多条
 
 b.类型相同
 
 c.数组是数据的容器，而非数据本身
 
 d.数组中的每一个数据，叫元素，数组由多个元素(数据)组成。
 
 e.数据下标(索引)来区分数组中的元素
 
 f.元素从数组的位置0开始
 
 g.元素可以使用数组变量名[下标]来得到具体的元素
 
 h.数组中元素的个数叫数组的长度
 
 i.数组所占空间=元素的类型*数组的长度
 
 j.数组是一段连续的内存区域 指针
 
 k.数组变量指向的区域，是数组在内存中的首地址
 
 3.语法格式
 
 元素的类型 数组名[长度];
 
 int array[3];
 
 4.初始化
 
 a.赋使用的值
 
 int array2[3]={3,4,5};//依次给数组元素赋值
 
 int array4[3]={1,2};//如果赋值的个数少于数组 的长度，会自动用0来填充后面的值
 
 b.赋零值
 
 int array[3];//未初始化 可能存在垃圾时
 
 int array3[3]={0};//数组中每个元素是0
 
 
 5.赋值
 
 a.数组前有类型 数字就是长度
 
 int array4[3];
 
 b.数组前无类型 数字就是下标 	       array4[2]=10;
 
 c.下标<长度 否则越界
 
 d.array4[2]=10;
 
 6.取出数组元素的值
 
 printf("array4[2]:%d\n",array4[2]);
 
 7.查看数组中的每一个元素，遍历
 
 遍历数组中的元素内容
 
 for (int i = 0; i<3; i++) {
 
 printf("array4[%d]:%d\n",
 
 i,array4[i]);
 
 }
 
 8.可变数组
 
 在声明数组前，可以修改数组的长度，一但数组声明，其长度不可变。
 
 在数组长度不确定的时候，可使用可变数组。
 
 9.数组的长度
 
 数组长度=数组所占内存空间/元素所占内存空间
 
 long size = sizeof(array)/sizeof(array[0]);
 
 当数组过多，只要知道数组名，使用sizeof计算出数组的长度。
 
 
 
 二、多维数组
 
 1.声明一个一维数组
 
 int array[2];
 
 2.声明一个二维数组
 
 3代表一维数组 元素个数
 
 2代表二维数组 元素个数
 
 int array2[3][2];
 
 3.初始化
 
 //对应元素内容
 
 int array2[3][2]=
 
 {{1,2},{3,4},{5,6}};
 
 //依次赋值
 
 int array2[3][2]={1,2,3,4,5,6};
 
 //自动补零
 
 int array2[3][2]={1,2,3,4};
 
 4.二维数组的遍历
 
 先遍历一维数组中元素，再遍历对应一维数组中的元素的二维数组中的元素。
 
 三、数组的补充内容
 
 1.根据元素的个数可以确定数组的长度
 
 int array[]={1,2,3,4};
 
 2.二维数组 必须确定二维数组的长度
 
 int array3[][3]
 
 ={1,2,3,4,5,6};
 
 1.变量作用域
 
 a.表示一个变量在代码范围内是可以使用的。
 
 通常使用'{}'符号来表示代码范围
 
 b.在上一级代码中定义的变量，可以在下一级代码块中使用。下一级代码块中定义的变量，不可以在上一级代码块使用。
 
 c.下一级代码块中，如果声明了和上一级名称类型一样的变量，会优先取近的变量的值。
 
 d.局部变量:定义在函数中的变量      叫局部变量
 
 e.全局变量:定义在函数外的变量叫全局变量
 
 f.全局变量可以供多个函数使用，而局部变量只可以供当前函数使用。
 
 g.当全局变量与局部变量重名，依然遵守就近原则。
 
 h.参数也有作用域，是函数的内部。
 
 2.变量生命周期
 
 当变量存在时，就会开辟一块内存空间。
 
 当变量不存时，就会消除相应的内存空间。
 
 a.当修饰局部变量的时候加auto(默认)，声明变量时，会创建内存空间，当变量超出作用域，就会消除相应的内存空间。
 
 b.当修饰局部变量的时候加static，静态局部变量，此时变量的生命周期就会变长，长到程序结束为止，虽然静态变量的生命周期变长，但作用域依然在函数内部。
 
 c.auto是不可以修饰全局变量
 
 d.static是可以修饰全局变量
 
 e.加static与不加static的全局变量区别是，参考多文件情况。
 
 小结：
 
 作用域：使用代码范围
 
 生命周期：变量在内存中是否存在
 
 
 
 a.有网兜存球 数组
 
 b.放球操作 函数
 
 c.取球操作 函数
 
 d.标识	   索引
 
 e.兜满不能放 函数
 
 f.兜空不能取  函数
 
 g.得到的是什么球？ 返回值
 
 
 
 二、指针
 
 1.内存被分为字节，每个字节有唯一的地址，指针指的就是内存地址。
 
 2.保存指针的变量，就叫指针变量。
 
 (保存地址)
 
 3.声明一个指针变量
 
 int i = 0;&I;(指针)
 
 int* p;//声明一个指针变量 int* 指针类型
 
 int * p; int* p; int *p;
 
 4.每个指针变量能指向一种特定类型的对象（地址，内存区域）。
 
 5.指针是引用数据类型，因为本身没有保存数据，只是保存了数据的地址，间接的找到内存中的数据。
 
 6.指针的用法:
 
 a.指针可用于参数，传递变量的地址，就相当于多个函数共享内存地址(内存空间)。
 
 值传递：相当于两个变量，不同的内存区域
 
 地址传递：相于同一个变量，相同的内存区域
 
 p:指针的值 地址
 
 *p:指针指向的值 数据(区域)
 
 &i:取变量i的地址     &i 等价 p
 
 i:变量名                      i   等价 *p
 
 b.指针也可以做为返回值，但不要返回自动变量，因为局部变量的生命周期，当函数结束，局部变量会被自动清除（释放）。解决方案：延长生命周期。
 
 c.指针支持加整数、减整数、指针的值比较和相减，但运算的单位由指针的类型决定。
 
 int类型指针+1 = 地址+4
 
 char类型指针+1 =地址+1
 
 d.指针与数组
 
 1)占用空间
 
 数组占用空间 = 数组元素占用的空间*长度
 
 指针占用空间 = 在64位系统下，8个字节，固定的，与指针的类型没关系。
 
 2)赋值
 
 数组是不可以修改其值
 
 指针是可以多次赋值
 
 1.概念：一组字符数组，以数组的首地址为开始，
 
 以ASC的'\0'为结束符。
 
 2.字符串与普通数组的区别：普通数组没有结束标识，而字符串是有的。
 
 3.字符串的定义方式：
 
 a.字面值 "Hello”
 
 printf("Hello");
 
 b.使用字符数组来定义字符串
 
 char str[10]={'H','e','l','l','o','\0'};
 
 c.使用字符指针
 
 char* str2 = str;
 
 4.字符串创建方式的不同
 
 a.声明的变量，放在内存中的栈区。
 
 b.字面值方式创建的字符串，放在内存中的代码区，如果创建的是字符串，并且值是相同的，只会创建一个内存区域，其值是只读的，值不可以改变。
 
 c.使用数组方式创建的字符串，放在内存中的栈区，可以创建多个相同的字符串，其值可以改变。
 
 d.字符指针，只是指向了内存的一个区域。
 
 6.输入
 
 可以接收用户从键盘上输入的数据
 
 a.scanf() 在输入字符的时候存在缓冲区问题
 
 通过scanf("%*c");清除缓冲区
 
 b.scanf() 在输入字符串的时候不存在缓冲区问题，但存在安全性问题（内存溢出）。
 
 c.fgets()函数，解决安全性问题
 
 语法格式：fgets(参数1,参数2,参数3);
 
 参数1:保存数据的首位置
 
 参数2:保存的长度(包括结束符)
 
 参数3:获取数据的方式
 
 注：使用fgets方式输入数据的时候，会自动的在数据的后面加上'\n'
 
 计算数据长度的时候，原有数据内容加上结束符'\0'、加上'\n'。
 
 解决安全性问题，主要是参数2.
 
 2.输出
 
 a.printf()可以输出字符串，并且可以根据占位符的个数来决定输出字符串的个数。
 
 b.puts()可以输出一个字符串，而且是自动换行
 
 printf()与puts
 
 1)相同点，都可以输出字符串
 
 2)不同点
 
 printf()需要手动换行，可以多次输出字符串
 
 puts()自动换行，只能输出一次字符串内容
 
 c.const关键字
 
 可以将变量变为只读，只可以在初始化时才可以改变变量的值，此变量就为常量。
 
 const int* p = &i;
 
 //指针指向的值变为只读
 
 int* const p = &i;
 
 //指针的值变为只读
 
 2.输出
 
 d.指针数组(字符串数组)
 
 数组中的元素是指针->指针又可以是字符串->字符串数组
 
 1)保存多个字符串首地址
 
 2)定义指针数组
 
 char* array[3]={ "guanyu","zhangfei" ,"liubei" };
 
 char array[3][10]…
 
 3)遍历
 
 for(int i = 0 ;i<3;i++){
 
 printf("array[%d]:%s\n",i,array[i]);
 
 }
 
 2.输出
 
 e.字符串的比较
 
 注意:==不能判断两个字符串是否相等，判断的是两个字符串的内存地址，正常的做法应该是比较字符串中每一个字符的值是否相等(ASC码值比较)
 
 3.C语言字符串函数库
 
 a.#include <string.h>
 
 b.字符串的复制 strcpy(str2,str)
 
 参数1：目标字符串位置(复制到哪里)
 
 参数2：源位置(字符串的来源)
 
 c.字符串的拼接 strcat(str3,str)
 
 参数1：第一个字符串
 
 参数2：第二个字符串
 
 将第一个字符串的内容与第二个字符串的内容拼接在一起，保存在第一个字符串中
 
 d.字符串的长度 strlen(str)
 
 求字符串的长度，不包含结束符
 
 参数为:所求字符串
 
 有返回值：返回字符串的长度
 
 e.两个字符串比较 strcmp(str,str1)
 
 根据ASC来进行比较，比较字符串中的每个字符是否相等(值)，结果为两个字符串的差值，结果为0时，两个字符串相等。
 
 
 
 4.用命令行输入参数
 
 a.argc代表命令行的参数个数(包含命令本身)
 
 b.*argv[]代表命令行的参数的值(字符串)(包含命令本身)
 
 c.运行：./a.out abc hahaha
 
 二、宏
 
 宏相当于文本的替换操作
 
 1.优点：可以代码更简单、更容易，避免大量使用。
 
 2.宏定义
 
 a.定义在函数的外面
 
 b.格式：
 
 #define PI 3.14
 
 PI为宏的文本内容
 
 在编译前将PI的内容替换成3.14
 
 c.宏与全局变量的区别
 
 1)宏相当于文本的替换操作，内存中不存在
 
 2)全局变量在内存中就存在的
 
 d.相同点：
 
 通常定义一个全局变量加const修饰符，全局变量的值是不可以修改的。
 
 宏的内容也是不可以修改的
 
 3.宏函数
 
 #define MianJi(r) PI*r*r
 
 宏函数只是文本，只是相当于做了内容替换的操作，注意参数是没有数据类型
 
 4.在声明数组时也可以使用宏
 
 
 宏
 1.#x 代表把x内容转换字符串
 #define STR(x) #x
 2.##x 代表将标识的内容与其它内容拼接在一起成为新的标识
 #define QUANJU(x) g_##x
 int QUANJU(i) = 20;
 3.C语言内部预定义的宏
 __LINE__ 当前行号
 __FILE__ 当前的文件名
 __DATE__ 当前的日期
 __TIME__ 当前的时间
 __STDC__ 是否是C语言的标准 返回值为0或1
 __STDC__ ?"符合":"不符合";
 二、宏的高级使用(条件编译)
 1.在代码中设置编译条件 根据编译条件进行代码的编译并运行。（跨平台）
 2.在编译文件的时候传入一个参数，根据参数就可以对代码进行有选择的编译。
 gcc -DZHAOBENSHAN main3.c
 3.条件指令
 #if 如果
 #ifdef 如果定义
 #ifndef 如果没定义
 #elif 如果 //else if
 #else 否则 与 #if 对应关系
 #endif 结束标识
 #undef 取消宏和#define 定义宏
 4.编译方式
 a.根据参数编译
	gcc -DXXX main.c
 b.根据宏值(参数)
	#define ZHAOBENSHAN 1
 c.根据宏"值(逻辑)"进行编译
	#if ZHAOBENSHAN==1
 
 三、大型软件开发
 将一个文件代码中的内容，拆分成多个文件(团队开发)，最后的可执行文件只有一个。
 1.操作步骤
 a.原来只有一个文件main.c 输入函数 输出函数 声明
 b.多人开发 将原文件拆分成三个文件，分别为*.h、*.c、main.c
 c.编译的时候
 1)分别编译不同的源文件，生成相应的目标文件 gcc -c input.c=>input.o
 2)可以将多个目标文件链接生成同一个可执行文件
 gcc input.o main.o=>a.out
 c.编译的时候
 3)在main.c文件中，记的导入头文件
 4).h文件中的条件编译解决的是重复声明的问题
 #ifndef day11_3_input_h
 #define day11_3_input_h
 int inputNum();
 #endif
 c.编译的时候
 5)在xcode中，Compile Sources解决链接问题的根本
	
 总结：如果使用第三方的代码，要做两件事情，导入.h文件(声明)，导入目标文件.o(实现)(*库)。
 
 2.批量处理  make
 可以使用make命令，一次性编译、链接多个文件的内容。(一次性执行多次命令)
 a.创建 makefile文件(任务清单)
 b.执行命令 make
 
 Linux 软件安装 编译后.bin a.out 编译前.src make
 
 3.头文件：以.h结尾的文件，是头文件。
 未使用内存空间的内容都可以放到头文件中，声明变量可能会有问题（因为开辟了存储空间），将要使用函数的声明放在头文件中，方便使用函数，如果函数声明变更，则只需要修改头文件的内容，而不需要修改源代码。
 4.如果想在一个项目中共享全局变量，在使用的文件中，要使用extern关键字，声明变量，才可使用，并且可以得到全局变量的值。
 5.全局变量前可以加static修饰符，该全局变量只能在当前文件中使用，static也可以修饰函数。加了static的变量，就是私有变量，加了static的函数，就是私有函数。
 
 大型软件开发:操作步骤
 a.原来只有一个文件main.c
 函数声明 input.h
 输入函数 input.c
 输出返回值函数 main.c
 b.多人开发 将原文件拆分成三个文件，分别为*.h、*.c、main.c
	c.编译的时候
 1)分别编译不同的源文件，生成相应的目标文件 			gcc -c input.c=>input.o
 2)可以将多个目标文件链接生成同一个可执行文件
 gcc input.o main.o=>a.out
 
 四、结构体
 1.C语言中，可以使用结构体定义用户自定义类型，但结构成员类型可以不一样。
 2.结构体的格式
 struct{
 成员;
 }变量名;
 eg:
 struct{
 int age;
 char name[20];
 }student1,student2;//变量
 最终版：
 typedef struct {
 int age;//成员
 char name[20];
 }Student2;//别名
 
 结构体使用：
	Student2 stu = {17,"lisi"};
 stu.age = 18;
 printf("stu name:%s age:%d\n",stu.name,stu.age);
 
 3.如果结构体中的成员是字符串，是不能通过=进行赋值的，要使用
 strcpy(student2.name,"zhangsan");
 4.结构体的定义部分是不占用内存的，所以可以把结构体的定义放到头文件中，项目中的其它文件就可以使用该类型。
 5.如果是基本数据类型，使用结构类型的变量.成员，可以操作该成员。
 6.声明结构体类型的变量，占的空间为所有成员类型所占空间之和?边界对齐
 sizeof(Student2)
 7.如果使用结构体变量赋值，相当于将结构体中每一个成员的值，都赋给新的结构体变量的成员。
 五、联合
 1.联合的用法、语法和结构非常相似，但联合中所有成员分配的内存是同一块。(只能保存一个成员信息，联合的空间以最大成员所占的空间为值)
 2.联合可以用一块内存对应多种数据类型
 3.联合与结构的区别，结构可以保存多个成员信息，而联合只能保存一个成员信息且最后一个。
 typedef union {
 int age;
 char name[2];
 }LianHe;
 六、枚举
 用文本来描述一组有规律的数值。
 1.定义一个枚举
 enum{SPR,SUM,AUT,WIN};
 2.枚举的默认值从0开始 ，每个值都是一个整型常量
 3.只能在声明枚举的时候，修改枚举值
 4.修改后的枚举值=上一枚举值加1
 
 OC 面向对象
 
 Anything is Object.万物皆对象。
 
 
 
 现实中的对象是一种客观存在，
 
 程序中的对象是一片内存中的数据。
 
 1.对象
 
 现实中的对象学生
 
 有什么？姓名、年龄
 
 能干什么？学习
 
 1.对象
 
 计算机中的对象Student
 
 属性(成员) age，name
 
 方法(函数)study()
 
 
 
 用解决现实中的问题的方法，来解决计算机问题。
 
 2.类
 
 设计(图纸)(梦想中)---努力实现--->楼(现实)
 
 类                 ---实例化    --->对象
 
 代码(文件)     ---执行加载--->内存(数据)
 
 
 2.类
 
 类是一种主观思想，是对我们需要解决问题的一种抽象，是创建对象的模型，就是类型，用户自定义类型。
 
 对象就是具体的数据，计算机会把类->实例化->对象。
 
 3.第一个面向对象程序
 
 a.设计类Student 代码存在文件中，OC class。
 
 一个类是由两个部分组成的 *.h文件和*.m文件
 
 1).h文件 定义类的interface部分(声明)
 
 @interface Student : NSObject
 
 @property int age;//声明属性
 
 -(void)study;//声明方法
 
 @end
 
 2).m文件 定义类的implemention部分(实现)
 
 @implementation Student
 
 //方法的定义、实现
 
 -(void)study{
 
 NSLog(@"学生执行了study方法");
 
 }
 
 @end
 
 
 
 b.类的实例化->对象
 
 1)main.m文件中的->main函数(程序入口)执行程序
 
 2)能过类发送alloc，通过一个类创建对象，通过stu变量，找到内存的对象。
 
 3)可以向对象发送消息(函数)，此时对象就会响应消息，执行方法。
 
 4)对象如果有属性，对象.属性 = 值，给对象的属性赋值
 
 二、方法
 
 
 
 对象可以干什么，功能。
 
 1.函数与方法有什么区别?
 
 函数只是一个程序的代码段，与类无关系。
 
 方法，类的一部分，代表对象可以干什么。
 
 正常来讲，类必须实例化，方法才可以使用，实例方法，调用方法时，也叫做向对象发送消息。
 
 .m:message
 
 2.语法格式 语法格式与函数非常相似，但截然不同。使用方法时，在.h文件中声明，在.m文件中实现。
 
 a.-(返回值类型) 方法名; //无参的方法	 eg:-(void)method;
 
 b.-(返回值类型) 方法名:(参数类型)参数名;//有参的方法
 
 eg:-(void)method3:(int)num;
 
 c.-(返回值类型) 方法名:(参数1类型)参数名1 :(参数2类型)参数名2 :(参数n类型)参数名n;//多参的方法
 
 eg:-(void)method4:(int)arg1 :(int)arg2;
 
 注：":"符号也是方法名的一部分
 
 method、method3:、method4::。
 
 d.*-(返回值类型) 部分方法名:(参数1类型)参数名1
 
 部分方法名2:(参数2类型)参数名2
 
 部分方法名n:(参数n类型)参数名n;
 
 部分方法名起到提示作用，并不影响程序的执行
 
 
 eg:-(void)printInfoWithAge:(int)age
 
 andGender:(char)gender
 
 andSalary:	 (double)salary;
 
 三、实例变量
 
 1.一个对象会有自己独特的数据和别的对象不同，这些数据会保存在一些特殊的变量中，这种变量叫实例变量。类的每个实例(对象)都有一份。
 
 类                       对象(实例)(引用)
 
 内存中没有       内存中有
 
 成员变量           实例变量
 
 成员方法           实例方法
 
 2.用一个类，创建出一个对象，那么我们就说这个对象就是此类的实例，一个类可以有很多实例(对象)，每一个实例都拥有一个和其它实例不同的数据，这些数据保存在实例变量中。
 
 3.实例变量的声明，可以放在.h文件中，也可以放在.m文件，实例变量就变为私有的，只有当前对象才可以访问。
 
 方法也是一样，放在.h文件中声明，公有方法。
 
 方法在.h文件中没有声明，私有方法，是不合法的。
 
 四、属性
 
 1.在OC中，属性提供了setter和getter方法，本质上属性就是方法，属性的值是由实例变量来保存的。
 
 
 2.属性的本质
 
 一般三个部分组成
 
 a.保存属性值的实例变量 int _age;
 
 b.setter和getter方法的声明与实现
 
 1.)setter方法：方法名:“set”+属性名并首子母大写+“:”+和属性类型一样的参数，无返回值。age
 
 -(void)setAge:(int)newAge;
 
 2.)getter方法：方法名和属性名一样，没有参数，返回值类型和属性类型一样。
 
 -(int)age;
 
 c.setter方法和getter方法的实现
 
 setter方法的实现主要用来给属性赋值的
 
 getter方法的实现主要用来读取属性值的
 
 对象.属性 = 值;=>会自动调用setter方法
 
 变量 = 对象.属性;=>会自动调用getter方法
 
 stu.age = 18;//给属性赋值 setter
 
 NSLog(@“age:%d",stu.age);
 
 //取属性值 getter
 
 3.声明式属性
 
 a.定义实例变量
 
 b.声明式属性
 
 1).h文件中 int属性类型 age 属性名
 
 @property int age;
 
 自动生成了setter和getter
 
 2).将属性与实例变量关联在一起 .m文件中
 
 @synthesize age = _age;
 
 c.属性的使用
 
 引用.属性 = 值;=>会自动调用setter方法
 
 变量 = 引用.属性;=>会自动调用getter方法
 
 4.IOS5.0以后，属性的声明简化了
 
 a.省去了实例变量声明，会自动生成实例变量名为_属性名的实例变量
 
 b.声明式属性
 
 1).h文件中 int属性类型 age 属性名
 
 @property int age;
 
 自动生成了setter和getter
 
 2).将属性与实例变量关联在一起 .m文件中
 
 @synthesize age = _age;
 
 c.属性的使用
 
 引用.属性 = 值;=>会自动调用setter方法
 
 变量 = 引用.属性;=>会自动调用getter方法
 
 5.***IOS6.0开始，声明式属性又简化
 
 a.省
 
 b.
 
 1)保留 声明
 
 2)省 @synthesize age = _age;
 
 c.保留 点语法
 
 6.属性的演变过程，如果你不满意，可以自己重写。
 
 //总结属性的演变
 
 1.属性的本质
 
 a.实例变量 int _age;
 
 b.setter和getter方法的声明与实现
 
 c.setter方法和getter方法的实现
 
 对象.属性 = 值;=>会自动调用setter方法
 
 变量 = 对象.属性;=>会自动调用getter方法
 
 2.声明式属性
 
 a.定义实例变量
 
 b.声明式属性 自动生成setter/getter
 
 1).h文件中 int属性类型 age 属性名
 
 @property int age;
 
 2).将属性与实例变量关联在一起 .m文件中 
 
 @synthesize age = _age;
 
 c.属性的使用
 
 引用.属性 = 值;=>会自动调用setter方法
 
 变量 = 引用.属性;=>会自动调用getter方法
 
 3.IOS5.0以后，属性的声明简化了
 
 a.省去了实例变量声明
 
 b.声明式属性
 
 c.属性的使用*
 
 4.**IOS6.0开始，声明式属性又简化
 
 a.省
 
 b.
 
 1)保留 声明
 
 2)省 @synthesize age = _age;
 
 c.保留 点语法
 
 用来初始化对象的方法。
	1.初始化方法的规则：
 a.初始化方法都是以"init"开头的，无参的初始化方法叫"init"，有参的都以"initWith..."开头。
 b.初始化方法的返回值为"id"类型。(void*)
 c.初始化方法的一般格式
 super代表类的父类，[super init]是通知父类去做底层的初始化操作。
 self代表当前对象或当前类，self就是当前对象的引用。(地址)
 self = [super init];
 if(self){//初始化，不一定成功，不成功值就为nil(NULL)
 初始化对象的属性值...
 }
 return self;
 d.初始化方法可以有多个，有参（一个参数、多个参数）、无参的。
 e.执行无参的初始化方法
 [[Student alloc]init]与[Student new]是等价的。
 f.id类型
 id类型是一种特殊的指针类型，类似void*，id类型其实就是一个指针变量，指向任何对象，在使用前必须类型转换。
 Eg:
 Student* stu = [Student alloc];
 id stu2 = [stu init];
 Student* stu3 = (Student*)stu2;
 等价于:Student* stu =
 [[Student alloc]init];
 [stu3 study];
 二、实例方法和类方法
 1.只能通过实例调用的方法叫实例方法。"-"
 2.只能通过类调用的方法叫类方法。”+"
 3.实例方法与类方法区别
 a.实例方法与实例有关系的，所以实例方法可以调用、读取实例中的实例变量或属性。
 b.类方法与实例无关系的，所以类方法不可以调用、读取实例例中实例变量和属性。
 c.在类方法中可以创建对象，当然访问该对象的实例变量和属性。
 三、工厂方法
 生产(创建)对象的方法，叫工厂方法。
 类中经常会出现一些工厂方法，其目的是为了方便创建对象。
 规则：
 1.工厂方法一定是类方法
 2.工厂方法返回id类型，因为要返回一个刚创建好的对象，类似初始化方法。
 3.工厂方法的方法名一定以类名开头，注意去除了前缀和首字母要小写。
 
 OC继承的缺陷
 
 1.提高了程序的复杂度，维护性和扩展性降低
 
 2.破坏类的封装性
 
 二、为什么使用继承
 
 1.代码复用
 
 2.***制定规则
 
 3.***为了多态
 
 三、组合和*聚合
 
 复用代码更好的方法是组合和聚合，而不是继承。
 
 组合和聚合也是类与类之间的"has a"的关系。
 
 Computer has a cpu.
 
 cpu中有run方法
 
 computer中有powerOn和start方法
 
 
 
 a.继承 一个对象
 
 b.组合 代码书写习惯
 
 优点：保留了封装性、操作便利 缺点：灵活度不够。
 
 生命周期：Cpu和Computer封装性是独立的，
 
 生命周期是一致的，一起存在，一起销毁。
 
 高耦合(依赖)在一起。
 
 c.*聚合
 
 保留封装性
 
 优点：灵活度高 缺点：操作欠佳
 
 生命周期：Cpu和Computer生命周期不一致，
 
 低耦合，方便Cpu的替换。两个对象，各过各的。
 
 
 
 四、多态
 
 1.概念
 
 多种形态，引用的多种形态。
 
 对于一个引用变量，可以指向任何类的对象
 
 对于一个父类的引用(类与类之间有一种关系，继承关系)，可以指向子类，也可以向本类，指向的类型不同。当通过此引用向对象发送消息，调用的方法是不同的，此时方法的调用就是多态。
 
 
 a.类与类之间有关系，继承关系。
 
 b.父类的引用可以指向子类的引用，或者本类的引用。
 
 c.父类的引用指向子类的对象，发送消息，调用的是子类对象的方法。
 
 父类的引用指向本类的对象，发送消息，调用的是本类对象的方法。
 
 2.编译期类型和运行期类型
 
 a.在多态下，父类的引用可以指向子类的引用，当编译的时候，编译器无法确定指向的对象是什么类型，所以编译器会将引用当做父类类型引用编译检查。
 
 b.在调用方法时，却是子类对象。（子类类型创建的空间）。
 
 总结:TRAnimal* animal=[[TRDog alloc]init];
 
 编译时，把TRDog类型当成TRAnimal类型编译。
 
 [animal eat];
 
 运行时，调用的是TRDog类型的对象。
 
 3.多态可以用在参数，参数多态
 
 4.多态可以用在返回值类型，返回值多态 工厂方法
 
 5.多态也可以用在数组
 
 6.多态的好处
 
 可以让我们设计更合理的代码，使用代码更通用，使用程序的可维护性和可扩展性更强。
 
 7.多态特性的展现
 
 a.可以用在方法的参数
 
 b.可以用在方法的返回值类型
 
 c.可以用在数组和集合上
 
 OC分类
 
 1.什么是分类 类别Category
 
 分类就是类的补充和扩展部分
 
 补充和扩展的每个部分就是分类
 
 分类本质上是类的一部分
 
 分类是给特定类添加能力
 
 2.分类的定义
 
 分类也是以代码的形式保存在文件中
 
 分类文件命名 主类类名+分类类名
 
 分类文件也分为*.h文件和*.m文件
 
 *.h文件存放分类的声明部分内容
 
 @interface 主类类名(分类类名)
 
 //添加方法声明
 
 @end
 
 .m文件存放分类的实现部分内容
 
 @implementation 主类类名(分类类名)
 
 //添加方法实现
 
 @end
 
 分类中是不可以创建实例变量的，自然也不可以创建属性。
 
 在分类中是可以访问主类的属性，但不可以访问属性对应的实例变量。但可以访问主类中公有实例变量，但不可以访问主类中私有实例变量
 
 二、扩展(延展)
 
 1.概念
 
 扩展其实就是分类的一种特殊形式，扩展是没有名字的。
 
 2.使用方式
 
 a.扩展中可以声明实例变量，所以可以声明属性
 
 b.扩展通常定义在文件的.m中，不能分开。
 
 c.扩展是用来声明私有的属性和方法
 
 区别：
 
 分类：是不可以声明实例变量，通常是公开的，文件名通常为:"主类类名+分类类名.h"
 
 扩展：是可以声明实例变量，是私有的，文件名通常为:"主类类名_扩展标识.h"，注意扩展没有名的。
 
 三、协议
 
 1.概念
 
 协议就是规则，定义一个协议就相当于制定规则。
 
 OC中类可以遵守协议，遵守了一个协议的类相当于拥有了一种能力。
 
 2.语法
 
 @protocal 协议名
 
 @required 声明必须遵守的属性和方法
 
 @optional 声明可选(可以)遵守的属性和方法
 
 默认 @required
 
 @end
 
 3.一个类遵守一个协议
 
 a.@interface 类名(分类类名):父类名<协议名>
 
 b.实现协议中声明的方法
 
 3.一个类遵守一个协议
 
 a.@interface 类名(分类类名):父类名<协议名>
 
 b.实现协议中声明的方法
 
 4.使用协议类型的引用指向实现了协议或者遵守了协议的对象
 
 id<TRProtocol> p = [[MyClass]init];
 
 [p …];可以向协议的引用发送消息，只能发送协议要求的消息。
 
 5.协议的继承
 
 协议的继承相当于协议的合并。
 
 子协议      父协议
 
 @protocol TRTarena2 <TRTarena>
 
 -(void)learn;
 
 @end
 
 6.一个类可以同时遵守多个协议，协议之间使用","分隔符分开。
 
 @interface TRStudent : NSObject<TRTarena,TRTarena3>
 
 7.协议的使用和多态相类似，可以用于数组、参数、返回值类型，只不过多态返回的对象，一定要有继承关系，协议类型返回的对象，一定要有遵守协议或实现协议。
 
 四、内存管理ARC自动引用计数器管理
 
 1.ARC IOS5.0以后才支持，IOS7.0以后，强制使用ARC。
 
 2.ARC "Automatic" Refercences Counting
 
 3.原理
 
 依然使用引用计数器来管理内存，只是引用计数器的操作方式不同，由程序员发送消息转换为“编译器”帮我们自动发送消息，会在合适的位置自动加入retain、release、autorelease消息来进行计数器的管理，ARC是一种编译期语法。
 
 4.使用ARC
 
 a.在ARC中，程序中不能出现retain、release、autorelease…
 
 b.在ARC中，程序不能在dealloc方法中显示调用父类的dealloc方法，一切在MRC中和内存相关的操作，ARC中都不能使用。
 
 5.强引用
 
 a.在程序中定义的引用，默认为强引用，所谓的强引用指向一个对象时，对象的引用计数器会自动加1，当引用超出作用域"{}"，对象的引用计数器就会减1.
 
 b.定义强引用
 
 __strong TRStudent* student = [TRStudent alloc]init];
 
 c.当一个对象被强引用指向时，此对象会隐式的retain一次，当强引用超出作用域时，指向的对象会隐式的发送release消息一次。
 
 d.引用在使用的时候，会根据作用域的范围，自动做加1或减1的操作。
 
 6.弱引用
 
 a.定义弱引用
 
 __weak TRStudent* student;
 
 b.仅仅就是指向对象，但不会隐式的发送retain消息，出了作用域也不会发送realse消息。
 
 c.XXX当一个弱引用指向的对象，未销毁时，向对象发送消息，(此弱引用会自动的变为强引用。)(xcode4.x)版本
 
 d.当一个弱引用指向的对象被销毁时，弱引用本身会自动的赋值为空。(nil)
 
 zeroing weak reference
 
 7.定义属性的时候，内存管理的描述
 
 @property(nonatomic,strong)…;
 
 @property(nonatomic,weak)…;
 
 8.其它修饰关键字
 
 @property(nonatomic,unsafe_unretained)int age;
 
 a. unsafe_unretained等同于"assgin"，功能和__weak几乎一样，唯一不同，没有"zeroing weak reference"，通常使用在基本数据类型。
 
 b.__autoreleaseing 用在方法的返回值，将返回值的对象放入到自动释放池中。
 
 +(id)student{
 
 __autoreleaseing TRStudent* student = [[TRStudent alloc]init];
 
 return student;
 
 }
 
 1.NSObject、NSString、NSMutableString
 
 2.NSNumber、NSValue、NSDate、NSArray NSMutableArray
 
 3.NSArray的遍历、NSArray的新语法(IOS6)、NSArray Copy、NSArray排序
 
 4.NSSet、NSMutableSet、NSDictionary、NSMutableDictionary、Block代码段(函数指针)
 
 二、Api应用程序接口 文档(说明书)
 
 Application Program Interface
 
 三、Foundation简介
 
 Foundation Framework OSX IOS 基本框架
 
 类库(Class Library)
 
 *基础类：
 
 NSObject、NSString、NSMutableString
 
 NSNumber、NSValue、NSDate…
 
 *集合类：
 
 NSArray、NSSet、NSMutableSet、	   NSDictionary、NSMutableDictionary
 
 网络类：…
 
 文件类：...
 
 四、NSObject
 
 1.概述：所有类的父类，提供了系统运行时的一些基本功能。
 
 2.类的初始化
 
 a.类加载的时候，自动调用+load方法
 
 b.当第一次使用类时，自动调用+initialize方法
 
 c.类在使用之前会执行此方法，且只会执行一次
 
 3.对象的创建和释放
 
 alloc init dealloc new([[xxx alloc]init])
 
 4.-copy
 
 a.并不是所有对象都有copy方法，如果一个对象支持copy功能，首先要遵守协议NSCopying协议，必须实现copyWithZone方法。
 
 b.如果不但想复制对象，而且还要复制对象的值，一般还要重写有参的初始化方法。
 
 5.类对象
 
 a.类实例化变成对象，类的对象。(堆)
 
 b.类加载到内存中并创建类在内存中的对象(代码区)，类对象。
 
 c.普通的类不占堆内存空间，类对象是占代码区空间的。
 
 d.向类发送class消息，可以创建类对象。
 
 Class class = [TRStudent class];
 
 e.比较“类”信息的时候，需要使用类对象，判断一个类是否是另一个类的子类。
 
 [TRPerson isSubclassOfClass:[TRStudent class]]
 
 f.避免多态使用时的不安全性问题
 
 6.方法选择器 @selector
 
 a.和C语言中的函数指针相类似
 
 b.SEL就是方法的类型 sel方法变量
 
 SEL sel = @selector(study);
 
 c.某个类是否存在某个方法(消息)
 
 BOOL b = [TRStudent instancesRespondToSelector:@selector(study)]
 
 d.可以向对象发送任何消息，而不需要在编译的时候声明这些消息
 
 [stu2 performSelector:sel2];
 
 与普通向对象发送消息区别：编译器不会验证是否声明该方法，直接向对象发送消息，最好验证一下对像是否存在该消息，以保证代码的安全性。
 
 7.协议选择器
 
 a.协议的引用指向一个协议
 
 Protocol* p = @protocol(NSCopying);
 
 b.可以判断一个类是否遵守了某个协议
 
 BOOL b = [TRStudent conformsToProtocol:p];
 
 8.其它方法
 
 a.判断一个引用指向的对象是否是某种类型或子类型
 
 -(BOOL)isKindOfClass:(Class)c;
 
 b.判断一个引用(实例)指向的对象是否是某种类型
 
 -(BOOL)isMemberOfClass:(Class)c;
 
 c.比较类信息的时候，需要使用类对象，判断一个类是否是另一个类的子类
 
 +(BOOL)isSubclassOfClass:(Class)c;
 
 
 FD  NSArray 数组
 
 4.在原来数组上添加”一组对象”并创建新的数组
 
 NSArray* array4 = [array arrayByAddingObjectsFromArray:array2];
 
 5.在原来数组上添加”一个数组对象”并创建新的数组
 
 NSArray* array3 = [array arrayByAddingObject:array2];
 
 6.将数组中的元素按指定符号连接起来变为字符串。
 
 NSString* arrayStr = [array4 componentsJoinedByString:@":"];
 
 7.将字符串拆分成数组
 
 NSArray* stringArray = [arrayStr componentsSeparatedByString:@":"];
 
 8.判断数组中是否包含某个对象，返回值是布尔值类型
 
 BOOL b = [stringArray containsObject:@"5"];
 
 9.获取某个对象在数组的下标，如果数组中不存在该对象，则返回一个垃圾值下标
 
 NSUInteger index = [stringArray indexOfObject:@"5"];
 
 10.获取数组中最后一个元素
 
 NSString* lastObject = [stringArray lastObject];
 
 11.如果数组中保存某个对象，给数组中所有该对象发送一个消息，数组中的所有对象必须拥有该消息。
 
 存在安全性问题 慎用
 
 [students makeObjectsPerformSelector:@selector(study)];
 
 
 
 四、NSMutableArray(可变数组)
 
 1.初始化方法
 
 NSMutableArray* array = [NSMutableArray array];
 
 
 
 NSMutableArray* array2 = [NSMutableArray arrayWithObjects:@"one",@"two",@"three", nil];
 
 2.向数组中添加一个元素
 
 [array2 addObject:@"1"];
 
 3.向数组中添加一个元素在指定位置
 
 [array2 insertObject:@"2" atIndex:2];
 
 4.删除数组中指定下标元素
 
 [array2 removeObjectAtIndex:1];
 
 5.删除指定对象
 
 [array2 removeObject:@"1"];
 
 6.替换指定下标的元素
 
 参数1 下标 参数2 替换的内容
 
 [array2 replaceObjectAtIndex:1 withObject:@"two"];
 
 
 
 7.删除数组所有元素
 
 [array2 removeAllObjects];
 
 
 
 五、遍历(三种遍历)1.for循环遍历(老方式)
 
 2.***快速枚举 效率高
 
 for (NSString* str in array) {
 
 NSLog(@"str:%@",str);
 
 }
 
 3.迭代器遍历
 
 a.每个数组或集合都有一个自己的迭代器
 
 NSEnumerator* enumerator = [array objectEnumerator];
 
 b.每次迭代时要发送消息
 
 [enumerator nextObject])
 
 1)返回当前指向数组中的对象，并且自动向下移动一位
 
 2)如果没有对象时，则返回nil，并且终止迭代。
 
 while (obj = [enumerator nextObject])
 
 五、NSArray支持的新语法1.ios6.0及osx10.8之后，编译器LLVM支持
 
 2.初始化数据
 
 C:int array[]={1,2,3};
 
 OC:[NSArray arrayWithObjects:@"a",@"b",nil];
 
 OC新:NSArray* array = @[@”a”,@“b”];
 
 3.根据下标得到数组中的元素的值
 
 OC:[array objectAtIndex:0];
 
 OC新:array[0];
 
 六、数组复制（深拷贝(内容复制)、浅拷贝(引用复制)）	 1.复制对象：指针复制（浅拷贝）、内容复制（深拷贝
 
 2.数组中的元素，对象的引用。
 
 3.浅拷贝:新数组和原有数组共享内存中的对象。
 
 NSArray* array2 = [[NSArray alloc]initWithArray:array copyItems:NO];
 
 4.深拷贝:新数组和原有数组都有独享的对象。
 
 NSArray* array3 = [[NSArray alloc]initWithArray:array copyItems:YES];
 
 六、数组的排序
 
 1.可以让数组对象按着一定规则进行排序
 
 2.类必须实现compare方法(排序规则)
 
 3.规则原理：
 
 返回值有三种结果 NSComparetionResult
 
 NSOrderedSame 两者相等 0
 
 NSOrderedAscending后者比前者大 -1升序
 
 NSOrderedDecending前者比后者大 1降序
 
 4.发送排序的消息
 
 NSArray* array2 = [array sortedArrayUsingSelector:sel];
 
 
 FD NSSet集合
 
 1.概念
 
 NSSet是一个无序的，管理多个对象的集合类，最大特点是集合中不允许出现重复对象，和数学上的集合含义是一样的。
 
 除了无序、不许重复之外，其它功能和NSArray是一样的。
 
 2.重复
 
 什么叫重复(一样)?
 
 a.同一个对象
 
 b.两个对象信息值相同
 
 计算机认为的一样：同一个对象。
 
 3.对象的哈希值(hash)
 
 a.Set中确定对象是否是重复的？例如A对象和B对象，先调用A对象的hash方法得到一个整数，再调用B对象的hash方法得到一个整数，如果整数不相同，计算机就认为两个对象是不同的对象。(没有重复)
 
 b.重写hash方法，如果hash值相同，此时会再调用对象的isEqual方法，再次判断两个对象是否相同。
 
 1)对象类型
 
 //自反性
 
 if(self == object){
 
 return YES;
 
 //类型
 
 }else if (object isMemberOfClass:[TRStudent class]){
 
 ...//判断对象中的每一个属性的值
 
 }else{
 
 return NO;
 
 }
 
 2)对象中每一个属性
 
 //判断对象中每一个属性的值
 
 TRStudent* stu2 = object;
 
 if ([self.name isEqualToString:stu2.name]) {
 
 return YES;
 
 }
 
 4.遍历
 
 a.快速枚举
 
 for (TRPoint* point in points) {
 
 NSLog(@"point x:%d y:%d",point.x,point.y);
 
 }
 
 b.迭代器
 
 NSEnumerator* enumerator=[points objectEnumerator];
 
 TRPoint* obj;
 
 while (obj = [enumerator nextObject]) {
 
 NSLog(@"NSEnumerator point x:%d y:%d",obj.x,obj.y);
 
 }
 
 
 
 1.MRC
 
 @property(nonatomic,retain)TRBook* stu;
 
 //setter
 
 _stu = stu;            //地址传递
 
 _stu = [stu retain];//通知引用计数器加1
 
 @property(nonatomic,copy)NSString* name;
 
 //setter
 
 _name = name;
 
 _name = [name copy];//复制了参数对象
 
 @property(nonatomic,assign)int age;
 
 //setter
 
 _age = age;//值传递
 
 2.ARC
 
 retain
 
 @property(nonatomic,strong)TRBook* stu;
 
 //setter
 
 _stu = stu; //强引用指向对象时，会自动通知引用计数器加1
 
 assign
 
 @property(nonatomic,weak)TRBook* stu;
 
 //setter
 
 _stu = stu; //弱引用指向对象时，不会自动通知引用计数器加1
 
 @property(nonatomic,copy)NSString* name;
 
 //setter
 
 _name = [name copy];//复制了参数对象
 
 assgin
 
 @property(nonatomic,unretain__unsafe)int age;
 
 //setter
 
 _age = age;//值传递
 
 二、字典 NSDictionary NSMutableDictionary
 
 1.概念
 
 a.是由键-值对组成的集合，正如，我在查询字典的单词的定义一样。Key(单词)-value(详细)
 
 b.通过key(键)，相应的value(值)。通常来讲，key的值是字符串类型，value的值是任意对象类型。
 
 c.key值是不允许重复的，value的值是可以重复的。
 
 d.通来来讲key与value的值，不允许为空
 
 e.可以保存多条数据。
 
 2.集合的使用
 
 a.初始化
 
 NSDictionary* dic = [[NSDictionary alloc]init];
 
 初始化时，会依次添加元素的value和key
 
 NSDictionary* dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"4",@"four",@"3",@"three",@"2",@"two",@"1",@"one", nil];
 
 b.如果key重复，会舍掉后面的，编译不会报错
 
 3.向集合中添加元素 NSMutableDictionary
 
 添加一个元素
 
 [dic2 setValue:@"5" forKey:@"five"];
 
 4.查找集合中的元素
 
 NSString* value = [dic2 objectForKey:@"three"];
 
 5.得到所有key值
 
 NSArray* keys = [dic2 allKeys];
 
 6.遍历
 
 NSArray* keys = [dic2 allKeys];
 
 for (NSString* key in keys) {
 
 NSString* value = [dic2 objectForKey:key];
 
 NSLog(@"key:%@->value:%@",key,value);
 
 }
 
 三、Block代码块
 
 1.概念
 
 Block封装一段代码，可以在任何时候执行，Block可以做为函数参数或函数的返回值，而本身又可以带输入参数或返回值，它和传统的函数指针相类似。
 
 2.定义Block代码段
 
 a.定义方式1
 
 //定义一个Block 通常声明和实现是一起的
 
 ^代码定义的是Block
 
 Sum2是Block的变量名
 
 =^(int a,int b) Block的实现
 
 int(^Sum2)(int,int)=^(int a,int b)	{
 
 return a+b;
 
 };
 
 result = Sum2(a,b);
 
 b.定义方式2
 
 1)声明一个Block 函数外面
 
 typedef int(^Sum3)(int,int);
 
 2)定义 函数里面
 
 Sum3Block的类型 s3变量
 
 Sum3 s3=^(int a,int b){
 
 return a+b;
 
 };
 
 3)执行
 
 result = s3(a,b);
 
 区别：
 
 1.Block是OC中的语法
 
 2.Block的定义可以写在函数(方法)中
 
 3.使用起来更直接，耦合度更低
 
 4.直接用，不用声明
 
 
 
 
 
 
 
 
 
 
 
 学习建议：
 1.***原理
 2.操作步骤
 3.Demo
 4.整理 步骤 代码
 
 作业：500~1000行
 1.做
 2.坚持做
 3.模仿做
 XXX:copy
 
 写代码：
 1.注释
 2.查看Api
 3.笔记(案例)
 
 预习(学习新知识)：
 1.视频资源 参考
 WWDC 开者大会
 斯坦福大学ios7 网易公开课
 2.图书
	IOS核心技术
 
 一、第一个IOS程序(***步骤)
	1.项目创建
	2.目录结构
 3.程序执行顺序
 main()->UIApplicationMain()->TRAppDelegate->application(程序的入口)
 a.window屏幕的窗口对象 UIWindow
 b.makeKeyAndVisible 将屏幕窗口对象显示在硬件
	总结：
 A.创建标签对象(1.创建对象 2.设置属性 3.添加的子视图中)
 ->window对象的子视图中
 ***B.创建标签对象->视图控制器中(view)属性->
 添加到window对象的rootViewController中
 
 1.1 根据视图控制器(rootViewController)
 相当于window对象展示的第一个界面
 A.视图 显示数据
 B. 视图控制器 控制显示 显示什么数据
 C.一个界面有一个视图对应一个视图控制器
 D.控制台警告
 
 1)创建一个自定义视图控制器
 TRViewController:UIViewController
 2)viewDidLoad方法显示数据
 控制器创建的时候，会自动执行viewDidLoad方法。
 在添加显示数据之前，要调用 [super viewDidLoad]，显示时所需要的基础能力，其实是由父类解决的。
 创建要显示的数据:
 A.创建对象
 B.设置属性
 C.添加到子视图中
 3)将自定义控制器添加到window对象的根视图控制器中。
 2.window对象
	在一个iOS应用中，window对象一般只有一个，负责系统的一些功能，比如键盘的管理。一般不负责具体的页面显示（具体的界面显示交给了viewController视图控制器VC）。可以在一个应用中切换多个界面，我们不会直接在window中放置一些具体的控件(label)，而是应该给window对象设置一个根视图控制器，做为第一个显示的界面。
 程序员一般很少去频繁地操作window对象。
 
 3.视图控制器(ViewController)和视图(View)
	3.1具体功能
 视图(View): 就是我们看见的界面。
 视图是UIView类或子类的对象
 视图控制器(viewController，简称为VC)
 是控制视图如何显示视图
 视图控制器是UIViewController类或子类的对象
	3.2 之间关系
 视图是视图控制器的小跟班。
 一般情况下，视图控制器默认拥有一个视图。
 只在创建一个视图控制器对象(VC),此VC就拥有一个视图对象，做为VC的一个属性存在，self.view,如果将一个VC做为winow的根视图控制器，程序一起启动，我们就看见这个VC的小跟班。
	4.VC类中的viewDidLoad方法
 4.1 是什么
 是UIViewController类中定义的
 4.2 在什么时候调用
 当VC所控制的界面(View)第一次需要显示出来时，要先加载VC，等VC加载后，自动调用此方法。
 4.3 干什么
 在此方法中设置界面的初始显示
 4.4 注意
 一般在此方法的第一行会调用父类的该方法，上的是让父类中的设置也起作用。
 5 .frame属性
 label.frame = …
 5.1 是什么
 是CGRect结构类型的变量
 CGRect{
 CGPoint point;
 CGSize size;
 };
 CGPoint{
 CGFloat x;
 CGFloat y;
 };
 CGSize{
 CGFloat width;
 CGFloat Height;
 }
 CGRect frame = {x,y,width,height};
 CGRectMake() 结构体函数 解决结构体赋值
 ***CGRect frame =
 CGRectMake(x,y,width,height);
 CGRectPointMake(x,y);
 CGRectSize(width,height);
 5.2 干什么用
 设置视图占用“父视图”的位置和大小
 5.3 父视图的坐标和
 父视图的坐系原点(0,0)左上角
	
	6.控件(Contol)
 6.1什么是控件
 严格来说，凡是UIControl类及子类的对象，才叫控件，控件会触发事件。严格来说UIButton是控件，而UILabel不是。
 一般情况下，口头上经常将界面上能看见的东西叫控件。
 6.2 控件和视图的关系，控件也是视图。UIControl
 是UIView的子类。
	7.按钮控件(UIButton)
 7.1…
 
 7.4 添加事件(Event)
 addTarget:action:forControlEvents:
 target:目标
 当按钮触发了事件时，向哪个对象发送消息，					经常会用self，向当前对象发消息
 action:动作
 向target对象发什么消息
 events:事件
 当用户触发了按钮对象的哪种事件时，才向					target发送action消息
 *UIControlEventTouchUpInside
 手指在按钮上按下并抬起时触发此事件
 UIControlEventTouchDown
 手指在按钮上按下时触发此事件
 
 练习：
	“HelloWorld”->点击”变”->”label的内容改变”
	界面上再增加一个UILable对象，当用户按下按钮后，将Label的内容改变。
	label.text = @“label的内容改变”
 
 作业：
	1.可以试试其他的按钮类型
	2.尝试UILabel或UIButton的以下属性：
 .font
 .textColor
 .backgoundColor
 .tintColor
	
 
 UILabel* label=[[UILabel alloc]init];
 label.text=@"My name is Abby!";
 CGPoint point={80,150};
 CGSize size={180,60};
 CGRect rect={point,size};
 label.frame=rect;
 [self.window addSubview:label];
 
 
 
 
 
 
 ABAppDelegate.m
 
 ABViewController* viewController=[[ABViewController alloc]init];
 self.window.rootViewController=viewController;
 [self.window makeKeyAndVisible];
 ABViewController.m
 
 - (void)viewDidLoad{
 [super viewDidLoad];
 UILabel* label=[[UILabel alloc]init];
 label.text=@"My name is Abby";
 label.frame=CGRectMake(80, 150, 150, 150);
 [self.view addSubview:label];
 3.做一个小应用：
 界面上有一个按钮，每次按下按钮，界面上就多一个
 UILabel
	要求：
 1>Label之间间隔10个点的距离
 2>所有Label和屏幕左边距离20个点
 3>所有Label宽280，高20
 4>每个Label的内容需要叠加
 5>可以设置自己喜欢的颜色
 
 ABAppDelegate.m
 ABViewController* viewController=[[ABViewController alloc]init];
 self.window.rootViewController=viewController;
 
 ABViewController.m
 
 @interface ABViewController ()
 //全局变量
 @property(nonatomic)int abc;
 @end
 UIButton* button=[UIButton buttonWithType:UIButtonTypeSystem];
 
 button.frame=CGRectMake(280, 500, 30, 100);
 button.tintColor = [UIColor blueColor];
 button.backgroundColor = [UIColor redColor];
 button.frame=CGRectMake(20, 10+40*self.abc, 250, 30);
 [button setTitle:@"添加" forState:UIControlStateNormal];
 [self.view addSubview:button];
 NSLog(@"%f",button.center.x);
 
 [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
 }
 -(void)onClick{
 self.abc++;
 UILabel* label=[[UILabel alloc]init];
 [self.view addSubview:label];
 label.text = [NSString stringWithFormat:@"我是第%d个Label",self.abc ];
 
 label.backgroundColor = [UIColor yellowColor];
 label.frame=CGRectMake(20, 10+40*self.abc, 250, 30);
 label.textAlignment = NSTextAlignmentCenter;
 label.tintColor = [UIColor redColor];
 label.textColor=[UIColor blackColor];
 [self.view addSubview:label];
 
 //    CGRect end = label.frame;
 //    CGRect star = end;
 //    star.origin.x = -end.size.width;
 //    label.frame = star;
 //  [UIView animateWithDuration:2 animations:^{
 //   label.frame = end;
 // }];
 }
 - (void)didReceiveMemoryWarning
 {
 [super didReceiveMemoryWarning];
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
@end
