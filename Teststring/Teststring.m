//
//  Teststring.m
//  Teststring
//
//  Created by wanglin on 14-12-25.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import "Teststring.h"

@implementation Teststring
/*
 一、IOS6声明式属性的使用
 
 注：声明式属性默认情况下，并没有解决内存问题，
 
 当使用@property(retain) 引用数据类型 …，帮我们解决了，setter使用中的内存问题，但dealloc中的release操作，我们自己来做。
 
 1.语法格式
 
 @property(参数1,参数2) 属性类型* 属性名；
 
 eg:@property(nonatomic,retain)TRStudent* stu;
 
 2.参数2
 
 retain 如果属性是对象(引用数据类型)，就会使用此关键字，解决内存问题。
 
 assign 如果属性是基本数据类型，默认值就是assign，不会解决内存问题。
 
 copy 一些特殊对象类型，如果不希望和别人共享一个对象，用copy会自动创建一个新的对象。
 
 NSString … 只读
 
 readonly 只读，去掉setter，只保留getter
 
 2.参数2
 
 retain与copy的区别：
 
 retain相当于引用复制(浅拷贝)
 
 copy相当于内容复制(深拷贝)
 
 3.参数1
 
 a.nonatomic 非原子性操作 安全性低，效率高。
 
 b.atomic 原子性操作，在多线程使用的时候，一般来防止写未完成的时候，被另一个线程读取，造成数据安全性问题，这种操作是耗费资源的。
 
 
 
 三、面向对象的三大特征：	封装、继承、多态
 
 1.封装
 
 封装属性和方法放在一个对象中，只给外界公开访问的接口，而且把具体实现隐藏起来。主要目的增加可读性、可维护性、可扩展性。
 
 在OC中，把需要公开的属性、方法定义在声明中，.h文件中interface部分，而把不需要公开的属性、方法定义在.m文件中implementation部分，隐藏起来。
 
 封装的好处：
 
 1)代码结构更清晰
 
 2)可以和第三方合作，但又保护了源代码，避免泄漏。
 
 2.OC中实例变量的处理：
 
 一般情况下，实例变量是不能公开的，所以实例变量应用定义在implementation部分(私有的)，除非你需要直接在子类中访问，可以定义在interface部分，可以使用以下语法声明实例变量，来控制实例变量的访问范围。
 
 a.变量的访问范围：
 
 @public 可以在任意位置访问
 
 @package 可以在包内部访问，一个项目一定是在同一个包下。
 
 @protected 可以在本类内部和子类内部访问
 
 @private 只可以在本类的内部分访问
 
 b.默认实例变量修饰符:@protected
 
 c.可以通过"->"可以访问实例变量(但不推荐)，通过.语法(属性)来访问实例变量。
 
 3.封装中的方法
 
 a.如果.h文件中，未声明方法，此方法就是私有的，MRC在其它文件中访问该方法是不合法的(ARC必须不能访问)。
 
 b.如果.h文件中，声明方法，此方法就是公有的，在其它文件中可以访问该方法的。
 
 4.继承
 
 a.概念
 
 继承是一种代码复用技术，是类与类之间的一种关系。
 
 A类继承B类，A类中就直接拥有B类中的属性和方法。我们就把A类叫B类的子类（派生类），把B类叫做A类的父类(基类)。
 
 4.继承
 
 b.继承方式
 
 单继承
 
 一个类只能继承一个父类。 爷<-爸<-你
 
 OC Java C#
 
 多继承
 
 一个类可以有多个父类
 
 C++
 
 4.继承
 
 c.继承的语法
 
 @interface 类:父类
 
 (所有类都继承于NSObject)
 
 @end
 
 d.继承是一种关系
 
 继承是类与类之间的关系，是一种"is a"关系。
 
 狗是动物 狗:动物
 
 e.方法的覆盖(重写)
 
 子类对父类继承的方法不满意，可以在子类中重写父类的方法
 
 1)方法名相同
 
 2)参数类型相同
 
 3)返回值类型相同
 
 f.如果重写父类的方法，优先调用子类的方法，如果子类没有重写父类的方法，则调用父类的方法。
 
 
 
 UIK storyboard 图形化创建多MVC程序
 
 一.storyboard 图形化创建多MVC程序
 
 代码方式	                         图形化方式
 
 代码的形式ViewController   Xib的形式创建ViewController
 
 NavigationContoller          storyboard
 
 1.是什么
 
 通过图形化界面方式，创建管理多MVC程序，类拟我们之前的xib操作方式，storyborad是包含xib功能的。
 
 2.使用
 
 a.创建storyborad文件
 
 b.拖拽了一个UINavigationController和两个UIViewcontroller，并且完成相应控件，我之前xib文件形式完全相似，使用鼠标右键连线。
 
 c.界面与界面的跳转关系，也是通过图形化界面形式完成，navi一定要有一个根视图控制器。
 
 d.如果使用stotryBoard，TRAppDelegate中的application方法中，不允许创建window对象并显示，然后在Main Interface中选择相应的storyboard。
 
 二、图像
 
 1.基本概念
 
 NSString -> UILabel
 
 UIImage -> UIImageView
 
 2.在界面显示图像
 
 a.创建一个UIImage对象(指定图片资源)
 
 b.[[UIImageView alloc]initWithImage:UIIage];
 
 c.放到父视图中 [self.view addSubViews:…]
 
 d.默认情况下UIImageView的frame与图片大小相同。
 
 3.手机屏幕320*480 retina 640*960 View
 
 4. contentMode属性
 
 显示图片时的模式
 
 将图片塞到容器中，图片就变形了
 
 a.UIViewContentModeScaleToFill //默认值，拉伸
 
 可以将图片完全显示，但会出现白边
 
 b.UIViewContentModeScaleAspectFit //保持宽高比，显示完整图片，保持等比显示
 
 保持图片的原比例，只能显示图片一部分
 
 c.UIViewContentModeScaleAspectFill //保持宽高比，不留边，不保证显示完整图片
 
 5.UIScrollView
 
 a.作用
 
 在有限的区域中显示较大的数据(图片，文字)
 
 b.本质
 
 是一个view的view
 
 用来管理其他视图
 
 c.如何使用
 
 将其他的视图放入ScrollView，设置相关属性即可
 
 d.关键属性
 
 .frame //scrollView有多大
 
 .contentSize //scrollView中的内容的大小
 
 e.让scrollView进行缩放功能
 
 1)设置相关属性
 
 //比原来缩小多少位
 
 .minimumZoomScale ＝ 0.2 不能小于原来图片的20%
 
 .maximumZoomScale = 1.0 不能比图片的本身大
 
 2)给scrollView指定delegate对象	 <UIScrollViewDelegate>
 
 //实现协议中要示的方法scrollView哪个视图需要缩放。
 
 viewForZoomingInScrollView return self.imageView;
 
 3)设置scrollView的代理对象
 
 scrollView.delegate = self;
 
 三、UIPageControl 页面指示控件
 
 1.重要的属性
 
 currentPage 当前页号
 
 numberOfPages 得到总页数
 
 pageIndicatorTintColor  未选中页面的颜色
 
 currentPageIndicatorTintColor 当前页面颜色
 
 2.ScrollView配合
 
 
 
 总结：
 
 1.创建UIPageControl对象
 
 2.设置该对象的相关属性
 
 3.将该对象放到view父视图中 可以显示分页标识
 
 4.根据ScrollView滑动的偏移量(1.遵守协议 2.实现方法 3.设置被委托对象) 算出当前页面的位置。
 
 5.添加一个按钮在最后页面，添加触摸事件。
 
 
 
 代码调试：
 
 1.红色错误
 
 a.语法错误
 
 b.连接错误
 
 2.编译错误
 
 a.保存文件
 
 b.Build项目(command+b)
 
 c.清理代码(shift+Command+k clear)
 
 d.检查语法，拼写…
 
 e.代码缩进，检查{} [] ()的配对
 
 f.还原模拟器
 
 g.Xcode退出再进
 
 3.Xcode工具的调试功能进行断点调试，在代码中设置断点(BreakPoint)，精确排查错误在哪
 
 A.调式的模式Debug和发布模式Release
 
 Debug:更多调试信息(程序员)
 
 Release:发布更快(客户)
 
 B.确认属性和方法 查Api
 
 C.日志 输出结果 在控制台查看
 
 D.调用Iphone程序
 
 <1>程序中的错误 双击点XX查看错误
 
 <2>断点调式
 
 (1)左上方是调用栈
 
 (2)在下方是调试窗口 
 
 查看程序执行过程中，变量的值。
 
 (3)step over:执行下行码。
 
 step info:进入到方法里面
 
 step out:跳出当前方法，即执行到当前方法	       的末尾。
 
 continue:继续执行当前代码，如果有下个断	   点，则到下一断点。
 
 UIK tableView中添加数据
 
 1.向tableView中添加数据
 
 1)增加时跳转到一个新的VC，等待用户输入
 
 2)用户输入完成后，点确定按钮，返回前一个界面中的tableView。
 
 3)传值(反向传值)
 
 4)更新页面/刷页面
 
 a.[tableView reloadData] 全部更新
 
 b.创建一个数据的路径，根据路径更新tableView中的数据（插入的数据）。
 
 NSIndexPath* ip = [NSIndexPath indexPathForRow:self.datas.count-1 inSection:0];
 
 [self.tableView insertRowsAtIndexPaths:@[ip] withRowAnimation:UITableViewRowAnimationAutomatic];
 
 
 
 2.TableView的编辑模式
 
 1) 是什么
 
 可以被插入、删除、移动Cell的一种状态。
 
 2) 如果进行编辑模式
 
 a.UITableView有个属性editing(BOOL)，将其设置为YES会进行编辑模式，NO退出编辑模式。
 
 3）如果用继承的方式创建TableViewController时，Xcode会在viewDidLoad方法中加入一句:
 
 self.navigationItem.rightBarButtonItem = self.editButtonItem;
 
 3.如何删除和插入行
 
 两问一响应：
 
 两问：
 
 a.哪些行可以进入编辑模式(默认是所有行)
 
 -(BOOL)tableView:canEditRowAtIndexPath:
 
 b.进行编辑模式后的样式是什么:(默认是删除样式)
 
 tableView:editingStyleForRowIndexPath:
 
 响应：tableView:commitEditngStyle...
 
 a.添加
 
 1)添加的数据(model层)
 
 创建一个对象
 
 2)再向tableView增加行
 
 将对象添加到视图中
 
 b.删除
 
 1)删除的数据(model层)
 
 2)再删除tableView对应的行
 
 4.移动行
 
 一问一响应(在编辑状态下 按住移动)
 
 一问：哪些行可以移动(默认所有行可以移动)
 
 -(BOOL)tableView:canMoveRowAtIndex…
 
 一响应：-当用户进行移动时，调用哪个方法处理数据
 
 -(void)tableView:moveRowAtIndexPath:toIndexPath:
 
 IndexPath:原来行路径
 
 toIndexPath:移动后的路径
 
 
 5.UITableViewCell高级
 
 1)是什么
 
 是视图，是UIView的子类
 
 2)组成
 
 两大视图：
 
 +contentView:View 内容视图
 
 +textLabel:UILabel
 
 +detailLabel:UILabel
 
 +imageView:UIImageview
 
 +accessoryView:UIView 辅助视图
 
 默认情况下:accessoryView是nil
 
 编辑模式下：accessoryView是会隐藏起来的
 
 
 3) 辅助视图(accessoryView)
 
 a.是UIView类型的属性，可以指向任何类型的视图
 
 b.系统提供了4种已经定义的辅助视图
 
 系统提供属性视图通过属性accessoryType来指定
 
 c.除了系统提供的外，我们还可以自定义辅助视图。
 
 自定的辅助视图能过属性accessoryView直接赋值的方式来指定。
 
 d.当Cell进入编辑模式，辅助视图会自动隐藏起来。
 
 4) 系统提供了4种辅助视图
 
 由一个枚举类型区分：
 
 UITAbleViewCellAccessoryType:
 
 DisclosureIndicator
 
 :一个“>”号，提示用户点击此Cell有更详细的信息。
 
 DetailDisclosureButton
 
 :一个”i”按钮+”>”，提示用户，点击此按钮而不是Cell会有更详细的信息，调用一个方法来展示详细信息
 
 -(void)tableview:accessorButtonTappedForRowWithIndexPah:
 
 Checkmark
 
 :一个”√”，相当于打个标记
 
 DetailButton
 
 :一个”i”按钮，提示用户，点击此按钮会调用一个方法
 
 -(void)tableview:accessorButtonTappedForRowWithIndexPah:
 
 5）自定义accessoryView
 
 cell.accessoryView = …(任意视图，开关。。。)
 
 6)自定义contentView
 
 contentView中的子视图.textLabel
 
 detailTextLabel,imageView如果不赋值，而是自定义一些视图addSubView到contentView，那么contentView中的内容就完全成自定义的
 
 
 
 UIK TabelView中的自定义Cell
 
 1.TabelView中的自定义Cell
 
 1)基本原理
 
 UITableViewCell类是TableView的标准Cell类
 
 自定义Cell就是自己写一个Cell类，然后在三问
 
 的最后一个问题“每一行的Cell”回答时，创建自己
 
 定义的Cell类的对象并返回。
 
 2)如何实现
 
 借助xib文件的功能，创建自定义Cell的界面，然后和自定义Cell类进行绑定即可。(xib+class)
 
 Demo1:
 
 a.创建自定义的Cell类，继承UITableViewCell
 
 b.创建自定义的Cell的xib文件
 
 c.在xib中的Cell，在检查器3中绑定类
 
 d.将xib中的界面控件连线到类中的公开属性上
 
 e.使用Cell     TRMyTableViewCell
 
 2.静态(static)的TableView
 
 1)什么是 （系统中的设置）
 
 程序员直接写死Tableview中有多少分区，多少行，及每行的内容。(写死)
 
 前面一直在使用动态的TableView，动态(Dynamic)的TableView，指定的多少分区，多少行，及每行的内容根据数据模型来确定的，(而不是写死)。
 
 2)如何创建静态的tableView，硬代码直接回答所有问题。
 
 可能会使用大量的if else语句 或switch语句
 
 在一些系统设置当中，我们经常会使用靜态的tableView，因为系统设置的tableView不会经常变化。
 
 应用广泛，各种设置界面，展示一个对象的信息，静态的TableView并不意味着Cell中内容不会变化。
 
 
 
 3.使用xib文件创建表态的TableView
 
 1)一个xib文件中，除了可以创建一个VC的V部分，还可以创建任何View对象，比如一个UITableViewCell对象。
 
 2)一般一个xib文件只会有一个根对象，但其实可以有多个根对象。(属性、多属性)
 
 3)每一个根对象，在控制器被加载的时候创建(ViewDidLoad)方法调用时已经创建好了。
 
 4）一般情况，多个根对象，其中只有一个对象是和控制器类绑定在一起的，其它的根对象，一般会做为控制器的属性存在。
 
 
 
 a.拖拽一个tabelViewCell控件到controller对应的view的 xib文件中。
 
 b.将tabelViewCell控件连线到controller的属性中
 
 c.加载控制器的时候，自己创建控制器的属性
 
 d.当使用、创建cell的时候，就不需要自己创建了，直接使用属性就可以了。cellForRowAtIndexPath
 
 if (indexPath.section==0&&indexPath.row==0) {
 
 return self.cell1;
 
 }else{
 
 return self.cell2;
 
 }
 
 
 
 4.代码方式+xib的方式(灵活TableView)
 
 Xib方式：
 
 a.从对象中拖拽一个TableView到任意视图控制中
 
 b.然后TableView，在第6个检查器中指定DataSource和Delegate。(注：三条线，tableView作为VC的属性与Datasource,delegate)
 
 c.在TableView的DataSource和Delegate类(一般会是当前的VC)中遵守相关协议(UITableViewDataSource，UITableViewDelegate)并实现应该有的方法。
 
 code方法：
 
 a.viewDidLoad用代码的方式创建了TableView
 
 MyTableView要继承UITableView
 
 b.要指定位置frame属性值
 
 c.指定被代理对象(可以共用代理对象)
 
 遵守协议，实现方法。
 
 被代理对象，如果是自己创建的，一定要提升生命周期（属性）。
 
 重用Cell对象，Xcode中的新的方法重用Cell是有问题，使用原有的Cell重用方式(重用方式1).
 
 ？指定CellStyle并且Identifer;
 
 共用被代理对象，根据不同的tableView做不同的处理。
 
 //通过方法的参数 确定具体是哪一个tableView
 
 if (tableView == self.tableView) {
 
 return 1;
 
 }else{
 
 return 2;
 
 }
 
 
 
 5.UITarBarController(标签控制器)
 
 1)是什么
 
 类似于UINavigationControll，也是一个控制器的控制器。
 
 经常看见的UITabBarController表现为UITabBar。
 
 2)如何使用
 
 创建UITabBarController设置属性.viewControllers=@[vc1,vc2,vc3,vc4];
 
 3)重要属性
 
 设置VC的属性，.title .tabBarItem，来显示TabBar上不同的内容。
 
 注：属性值要在初始化方法中赋值。
 
 4)Navigation和TabBar一起工作
 
 此时，UITabBarController是window的根视图控制器
 
 UITableViewController包含NavigationController，有可能会包含多个UINavigationController对象，每一个具体的VC就是每个NavigationControll的根视图控制器
 
 window->TabBar->Navigation->VC
 

 
 UIK Contro&Controller
 
 控件          控制器
 
 控件：界面里显示的元素。
 
 控制器：
 
 控制控件的显示(1.属性 2.协议(DataSource))
 
 控制控件所触发的事件(1.Target-Action 2.协议(Delegate))
 
 一个控制器通常至少有一个控件(属性)。MVC
 
 实现方式：
 
 1.xib 图形化界面的形式
 
 2.code 代码形式
 
 设计模式：MVC、委托。
 
 
 
 练习：自己学习新控件，IOS8多新控件。
 
 
 
 1.Controller:
 
 UICollectionViewController(IOS6)
 
 UITabbarViewController
 
 UITableViewController
 
 tableView视图
 
 tableViewCell单元格(内容)
 
 UIViewController
 
 view视图
 
 1.干什么
 
 Collection集合 加强的数组 有一组控件 api
 
 2.不同点
 
 1)CollectionView是多行多列
 
 2)CollectionView中的Cell，一般需要自定义
 
 .backgroudColor
 
 UICollectionViewCell中都没有定义.textLabel .detailTextLabel .imageView等属性，所以一般情况下，Cell需要自定义(与tableViewCell相似)。
 
 3)也有xib创建的方式和code创建的方式，还可以自定义一个layout对象。
 
 注:Cell对象只能用重用方式2的方式
 
 4)CollectionViewController 样式
 
 a)在xib操作方式下 能过检查器修改CollectionView的样式
 
 b)在code创建一个样式对象，来确定自定义的样式
 
 继承UICollectionViewFlowLayout
 
 1)创建样式对象
 
 2)创建CollectionView可以指定样式对象的
 
 3.自定义CollectionView中item，和tableView是相似的。（自定义Cell类+自定义Cell.xib文件）
 
 创建的CollectionViewCell与TableViewCell对象的属性是不一样的。
 
 
 
 2.Control 控件
 
 Segmented //分段按钮
 
 TextField //文本控件
 
 Activity Indicator //活动指示器
 
 Progress View //进度条
 
 TextView //多行文本框
 
 DatePicker //日期选择器
 
 PickerView //数据选择器
 
 
 WebView //显示网页控件
 
 SearchBar //查询控件
 
 
 1.2 MotionEffects
 
 可以让视图具有移动特效，视图会随着设备的动作而自动出现移动特效。
 
 1>  创建MotionEffect对象，找UIMotionEffect的子类
 
 2>  设置相关属性
 
 3>  加入到需要这种特效的视图对象上：
 
 [view addMotionEffect:xxx];
 
 1.3 模糊效果
 
 也叫毛玻璃效果，iOS7非常流行
 
 
 Quartz2D Programming Guide
 
 
 
 2. Dynamic 和  CollectionView布局
 
 2.1 UICollectionView布局
 
 回顾[Demo1]
 
 2.2 自定义UICollectionView的布局
 
 
 contentOffset
 
 bounds
 
 contentSize
 
 
 2.3 使用UIKit Dynamics技术对UICollectionView进行布局
 
 可以做出弹簧效果的CollectionView
 
 郭镫(deng)鸿
 
 guodh@tarena.com.cn
 
 新浪微博:  @郭镫鸿
 
 18610092852
 
 
 
 Storyboard + 视图层
 
 
 
 绘制
 
 贴图与美化
 
 手势
 
 变形
 
 布局
 
 动画与动力
 
 特效
 
 …
 
 
 
 今天 ：  Storyboard(故事板)
 
 
 
 1. 是什么
 
 是将很多的xib文件集中到一个文件中，这一个文件就是Storyboard
 
 iOS5开始就支持
 
 场景（Scene） 代替了xib
 
 
 
 2. 能干什么
 
 替代xib文件
 
 负责创建和管理所有的界面(VC, Scene)及跳转， 及其他事情
 
 使用方式和xib基本相同，只是会少写一些代码
 
 
 
 3. 怎么用
 
 [Demo1]
 
 3.1 基本用法    IBOutlet, IBCollectionOutlet, IBAction
 
 xib ==>  scene
 
 VC对象是由Storyboard自动创建的,不需要用代码来创建
 
 3.2 创建新地VC并跳转
 
 1> 从对象库中拖拽一个VC的小黄球到Storyboard
 
 2> 从第一个VC中的按钮上接线到第二个VC上
 
 3> 在出现的菜单中选择Modal模式
 
 即可实现从第一VC跳转到第二个
 
 4> 从第二个VC中返回到第一个VC呢
 
 1>创建一个VC类， 注意不要选中xib
 
 2> Storyboard中选中第二VC，第3个检查器中修改类名，绑定自已经的类
 
 3> 打开拆分视图， 给第二VC中的按钮连线一个方法，方法中dismiss即可
 
 
 注意事项:
 
 1> 返回到主界面时，不要使用继续连线的方式，否则会创建新的VC而不是返回到原来的VC
 
 2> 如果VC不需要执行一些自已经定义的代码时，可以不用创建类。否则就需要创建类，并且将Storyboard中的VC和我们的类绑定(检查器3中改类名)
 
 
 上面用的跳转是Modal模式，因为没有用Navigation
 
 
 
 3.3 segue
 
 将从一个场景跳转到另一个场景的连线叫Segue
 
 其实是Storyboard中的一个对象，可以在第4个检查中设置属性:
 
 Style :   Push/Modal
 
 Transition:  动画
 
 Identifier:  起名字
 
 
 
 3.4 Push模式跳转
 
 必须基于Navigation
 
 1> 确保你的VC被navi包含， 如果没有:
 
 从对象库中拖拽一个NavigationController的小黄球到storyboard
 
 删除掉多余的根VC
 
 从 navi 上连线到我们的VC， 选择root view
 
 将初始场景的剪头拖到navi上
 
 
 
 更简单的做法是:
 
 选中我们的VC，然后:
 
 Editor—>Embed In—>Navigation Controller
 
 自动创建navi, 并包含VC，自动设置初始场景
 
 2> 连线按钮到新的VC， 选择push模式
 
 
 
 3.5 storybard和NavigaionController
 
 1> title
 
 直接在目标VC的NavigationBar中间猛击，修改标题
 
 2> 左右按钮
 
 一个按钮:
 
 从对象库中拖拽一个UIBarButtonItem 到NavigationBar上即可
 
 多个按钮:
 
 和xib时一样，写代码：
 
 self.navigationItem.rightBarButtonItems = @[]
 
 按钮也可以直接segue到另外一个VC上
 
 3> ToolBar
 
 1. 设置显示
 
 1.1 选中navigationController
 
 1.2 检查器4中选中shows ToolBar
 
 2. 在具体的VC中向ToolBar添加按钮
 
 直接从对象库中拖拽UIBarButtonItem对象到ToolBar
 
 3. 如果不希望显示ToolBar
 
 选中具体的VC， 检查器4中选中Hide Bottom Bar On Push
 
 如果不能如意，用代码方式来控制也可以(和以前一样):
 
 self.navigationController.toolbarHidden = YES
 
 4. 有时，可以直接从对象库中拖拽一个ToolBar对象到VC中
 
 
 
 4>自定义的头视图、左右视图
 
 NavigationBar的中间，左边，右边其实都是视图对象
 
 所以，可以从对象库中拖拽任意类型的视图到NavigationBar的中间(头视图)， 左边，右边
 
 用代码方式也可以实现:
 
 self.navigationItem.titleView = …;//头视图
 
 self.navigationItem.left/rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:xxx];
 
 
 3.6 UITabBarController
 
 1> 从对象库中拖拽一个UITabBarController的小黄球到Storyboard
 
 2> 从TabBarController中连线到VC(NavigationVC), 选择view controllers
 
 3> 在具体的VC上选中tabBar上的Item， 检查器4中设置属性：
 
 Title, Image
 
 
 
 
 
 另外一种做法更直接方便:
 
 选中要包含的VC, 然后:
 
 Editor—>Embed In—>Tab Bar Controller
 
 
 
 4. 跳转时传值
 
 4.1 正向传值
 
 1>  准备了两VC（A, B)
 
 从A跳转到B， A向B传值(正向)
 
 2>  从A连线segue到B
 
 3>  接收参数的B上定义一个公开的属性，用来接收参数
 
 覆盖了viewWillAppear方法，方法中将参数的值显示到Label上
 
 4> 跳转时传值
 
 在A(源VC )上，覆盖了方法:
 
 -(void)prepareForSegue:sender:
 
 会在跳转前自动调用 ，所以在此方法中完成传值
 
 
 
 segue.destinationViewController属性获取目标VC对象。
 
 给目标VC对象的属性赋值，达到传值的目的。
 
 
 注意，一般情况下，segue需要一个名字：选中segue, 第4检查器， identifier中起个名字，名字可以有空格，注意可读性即可。
 
 如果一个VC中有多个segue, 那么一定要给segue起名字，以便于在prepareForSegue方法中区分他们。
 
 
 4.2 反向传值
 
 反向传值和以前xib时完全一样， 用委托方式
 
 
 
 5. 各种跳转方式
 
 5.1 segue跳转
 
 Push/Modal
 
 优势：  自动的， 推荐使用
 
 
 
 5.2 手动跳转(用代码跳转)
 
 5.2.1 目标VC由Storyboard创建
 
 1> 拖拽一个目标VC到storyboard
 
 2> 选中此VC， 检查器3中给VC起名字(Storyboard ID)
 
 3> 跳转
 
 在源VC的跳转方法(可能是按钮的方法)中， 先获取storyboard对象， 再从storyboard对象中获取到目标VC对象，再代码跳转:
 
 targetVC ＝ [self.storyboard instantiateViewControllerWithIdentifier:@“xxx”];
 
 然后就push或present目标targetVC
 
 
 
 5.2.2 目标VC是一个xib
 
 做法和以前一样
 
 
 6. TableView
 
 [Demo2]
 
 6.1 分类
 
 静态的TableView(Static Cells)
 
 动态的TableView(Dynamic Prototypes)
 
 6.2 静态的TableView
 
 超好用
 
 1> 选中TableView, 检查器4，Content属性选择Static Cells
 
 2>  Section可以直接在storyboard中增加，删除，修改Header， Footer
 
 3> Cell可以直接增加，删除，修改文字， 修改辅助视图， 还可以复制粘贴Cell
 
 4> 自定义AccessoryView
 
 1> 拖拽一个需要的控件到VC下面的黑条上
 
 2> 选中Cell， 检查器6， 连线accessoryView的Outlet到黑条上的控件对象
 
 5> 头视图也可以直接拖拽
 
 6> 自定义Cell
 
 1>  拖拽一个Cell到TableView
 
 2>  检查器4 Style 选择Custom
 
 3>  拖拽想要的控件或视图到Cell中
 
 4>  可以任意修改Cell的高度
 
 7> 可以调整整个TableView的高度
 
 1> 选中整个场景(VC), 检查器4， size—>freeform
 
 2> 左侧选中TableView， 修改Height属性
 
 8> 增加要执行的代码
 
 1> 添加一个继承自UITableViewController的类
 
 2> 点击场景，检查器3， 绑定类
 
 3> 删除掉类中的所有方法(尤其是三问方法)
 
 4> 写需要的代码
 
 9) 跳转
 
 不同的Cell跳转到不同的VC上
 
 直接用Segue连线的方式进行跳转，不需要写代码
 
 注意Cell的Segue跳转有两种，一种是普通的，一种是AccessoryView的跳转,连线时可以选择Selection Segue还是Accessory Action
 
 
 
 6.3 动态TableView
 
 6.3.1 系统原型(System Prototype)
 
 1> 拖拽一个TableViewController的小黄球到Storyboard
 
 2> 检查器4， content 选中Dynamic Prototypes
 
 3> 选中其中的Cell原型(如果没有，从对象库中拖拽一个进来), 选中Cell的Style(Basic, Left Detail, RightDetail, Subtitle)
 
 4> 给Cell起名字，identifier中设置一个标识
 
 5> 创建一个UITableViewController类的子类， 不要使用xib
 
 6> 选中TableViewController的场景，检查3中绑定类
 
 7> 在类中回答问题(三问或加一响应等…)
 
 注意，在代码中dequeue我们的Cell对象时,确保dequeue方法中传的标识符参数和Cell的标识符一致。
 
 
 6.3.2 自定义原型(Custom Prototype)
 
 Cell的原型的Style不是Basic,LeftDetail,RightDetail,Subtitle,而是Custom.
 
 6.3.3 混合使用
 
 
 1. 动态TableView
 
 1.1 系统原型(Cell的风格是Basic, LeftDetail, RightDetail, Subtitle之一)
 
 1.2 自定义原型(Cell是Custom)
 
 相当于以前xib中的自定义Cell
 
 1> Cell原型选择Custom
 
 2> 拖拽需要的控件到Cell
 
 3> 创建UITableViewCell的子类
 
 4> 绑定Cell类
 
 5> 连线控件到类的.h文件上，形成IBOutlet属性
 
 6> 一定要给Cell原型起名字(identifier), 相当于注册
 
 7> 创建UITableViewController的子类，并绑定场景
 
 8> 回答三个问题， cell直接从tableView中dequeue, 不需要创建， cell类型使用自定义的类。
 
 
 注意: 如果需要定义一个非常通用的自定义cell， 建议使用xib而不是storyboard，原因是，storyboard中的自定义cell只能用在当前场景中，如果想要在其他场景中也使用，只能复制粘贴。
 
 
 1.3 混合原型
 
 在动态TableView中，可以同时创建多个Cell原型，这些原型的Style可以不同，有些可以是系统原型，有些可以是自定义原型，在回答三个问题时，根据数据模型的要求从TableView中dequeue不同的Cell并设置返回。
 
 
 1.4 动态TableView中从Cell跳转
 
 1> 创建目标VC
 
 2> 从TableView的Cell原型上连线到目标VC，创建 Segue
 
 3> 跳转时如何获取用户选中的Cell是哪一个:
 
 1> 在TableViewController的类中覆盖prepareForSegue方法
 
 2> 在此方法中，其第二个参数sender就是用户选中的那个cell对象
 
 3> 向TableView询问此cell的indexPath是多少即可:
 
 NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
 
 
 
 2. 视图层
 
 提供界面显示和用户交互功能
 
 绘制，贴图，手势，变形，布局，动画，动力，特效等
 
 
 
 3. 绘制
 
 3.1 基本概念
 
 1> 图型图像和显示器(屏幕)
 
 显示器有很多的显示晶体，每个显示晶体都能发三种颜色的光
 
 三种基本色： 红绿蓝
 
 1920x1080
 
 2> 图像和像素
 
 图片有多少个像素点
 
 
 
 保存一张图片其实是将图片中的所有像素点的值保存起来。
 
 5120x2880
 
 3> 图像的保存
 
 内存中保存一张图片有两种方式:
 
 1. 位图(点阵图)
 
 RGB图
 
 图片，照片等都是用位图保存。
 
 2. 矢量图
 
 保存不是点阵的数据，而是一些数学公式，函数等。
 
 点，线，几何形状，阴影等可以计算得出的图形
 
 放大，缩小时不会失真。
 
 3.2 绘制图形
 
 可以绘制矢量图，也可以绘制点阵图
 
 3.2.1 绘制API
 
 UIKit Framework              OC语言API   *
 
 +   Core Animation     C语言API
 
 +   Core  Graphics   C语言API   *
 
 3.2.2 在哪儿绘制
 
 在自定义的视图类中写绘制代码
 
 覆盖方法: drawRect:(CGRect) frame;
 
 在此方法中写绘制代码
 
 因为当视图对象需要显示时，自动调用drawRect方法来绘制自己。
 
 注意：
 
 drawRect方法不可以主动调用,由框架自动调用。
 
 3.2.3 如何绘制
 
 1> 自定义一个视图类， 继承自UIView
 
 2> 覆盖drawRect方法
 
 3> 写绘制代码
 
 [Demo2]
 
 
 描边和填充(stroke, fill)
 
 保存上下文状态和恢复上下文状态
 
 
 
 4. UIBezierPath类
 
 4.1 是什么
 
 对底层Core Graphics的一部分用常用的绘制功能进行了封装
 
 4.2 能干什么
 
 让我们按照面向对象的方式编程，绘制各种图形
 
 直线，曲线，圆，扇形，矩形，圆角矩形，多边型等
 
 4.3 如何用
 
 [Demo3]
 
 4.4 相关属性:
 
 lineWidth  线宽
 
 lineCapStyle   线头风格
 
 lineJoinStyle  连接风格
 
 4.5 画圆
 
 [Demo4]
 
 [UIBezierPath bezierPathWithArcCenter: radius: startAngle: endAngle: clockwise:]
 
 [path addArcWithCenter: radius: startAngle: endAngle: clockwise:]
 
 练习: 画扇形， 用红色描边，绿色填充
 
 
 
 4.6 定制视图
 
 类似于一个进度条的东西，可以标记下载文件的进度等。
 
 AppStore 下载进度标记视图
 
 [Demo5]
 
 frame    指视图占父视图多大的空间
 
 bounds  指视图本身的大小
 
 
 
 1>  创建一个视图类(TRDownloadIndicator)
 
 2>  定义一个分开的属性value, 用于表示下载的进度(0~1)
 
 3>  覆盖drawRect方法， 方法中画圆弧
 
 开始位置 M_PI_2 * 3  最上方
 
 结束位置计算得出: self.value * M_PI * 2 + M_PI_2 * 3
 
 4> 重写value属性的setValue方法，在此方法中:
 
 先做set方法应该做的事:  _value = value;
 
 然后再向当前视图发消息:  setNeedsDisplay
 
 此消息会确保，当value属性被改变时，drawRect方法被重新调用
 
 5>  使用这个视图类:
 
 从对象库中拖拽一个UIView, 检查器3，改为TRDownloadIndicator类
 
 当下载文件时，根据实现的下载进度，修改此对象的value属性，就可以达到标记下载进度的目的。
 
 
 用Tap手势在屏幕上点了一下，如何得知此点的坐标位置？
 
 -(CGPoint)locationInView:
 
 
 今天:
 
 1. 手势
 
 1.1  UIRotationGestureRecognizer
 
 [Demo1]
 
 1.2 手势的状态
 
 手势对象的属性.state来获取
 
 Began  开始，手势刚刚被识别成功
 
 Change  手势处于变化中，一般只有连续性手势才会经常处于变化中
 
 Ended 手势结束，用户的手指离开屏幕
 
 
 
 1.3 多手势的同时识别
 
 默认情况下，一个视图同时只能识别出一种手势，如果需要一个视图同时能识别出多种手势，那么，这些手势对象之间就需要沟通。
 
 如何沟通:   委托
 
 多个手势对象要向委托对象(delegate)发消息，来确认他们之间是否可以同时工作。
 
 1> 一般情况下，会先将当前的VC对象做为手势的delegate
 
 2> 当前的VC要遵守协议:UIGestureRecognizerDelegate
 
 3> 实现协议中需要的方法:
 
 Simultaneously  同时
 
 1.4  在xib或storyboard中用拖拽的方式创建手势对象
 
 [Demo5]
 
 
 
 
 
 2. 变形(Transform)
 
 2.1 什么是
 
 可以让一个视图进行旋转、缩放、位移的变化叫变形
 
 2.2 如何实现
 
 每一个视图对象都有一个属性叫.transform, 改变这个属性的值就可以达到变形(旋转、缩放或位移)的效果。
 
 2.3 .transform属性
 
 .transform属性的类型是CGAffineTransform, 是一个结构体
 
 这个结构体中的6个成员，加了3个固定的值，构成了一个3x3的矩阵
 
 要实现变现，只要修改视图对象的.transform属性的这6个成员的值即可。
 
 理论上，修改这6个值就可以达到变形的效果，但实际上，这6个值很难计算，所以框架提供了一些API帮我们计算这6个值
 
 2.4 重要注意事项：
 
 变形(transform)和自动布局技术(AutoLayout)天生有冲突，不能一起使用。如果要使用变形，只能将视图的自动布局功能关闭。如果一起使用，效果无法预知。
 
 检查1， 在AutoLayout前去掉勾
 
 
 
 3. 具体的变形
 
 
 
 3.0 任何变形
 
 CGAffineTransformMake函数可以通过6个参数产生一个trasform属性，但6个参数很难计算，一般会用下面的具体API
 
 3.1 旋转（Rotation）
 
 [Demo1]
 
 CGAffineTransformMakeRotation函数，创建一个CGAffineTransform的变量，其实包含了已经计算好的6个值
 
 CGAffineTransformRotate函数，在一个已有的transform的基础上再创建transform, 使用:
 
 1> 先拿出来transform
 
 CGAffineTransform transform = self.xxxView.transform;
 
 2> 在原来的基本上叠加旋转的度数:
 
 transform = CGAffineTransformRotate(transform, rotation);
 
 3> 放回去
 
 self.xxxView.transform = transform;
 
 最后，需要注意， 手势的rotation置0， 以便继续叠加：
 
 gr.rotation = 0;
 
 3.2 缩放(Scale)
 
 [Demo2]
 
 CGAffineTransformMakeScale
 
 CGAffineTransformScale
 
 需要注意，在原来的基础上进行Scale时，每次手势的scale值在置1:   gr.scale = 1;
 
 3.3 位移(Translation)
 
 [Demo3]
 
 CGAffineTransformMakeTranslation
 
 CGAffineTransformTranslate
 
 在原来基础上进行Translate, 每次手势后需要将手势的值置为初始值:
 
 [gr setTranslation:CGPointZero inView:self.view];
 
 
 注意:
 
 两种办法都可以实现位移:
 
 1>  修改center的值， 一般会获取当前手指的位置来修改center：
 
 [gr locationInView:self.view];
 
 2> 用变形translation
 
 建议，如果需要位移，尽量用修改.center属性来达到，而不是修改.transform
 
 实现开发中，变形尽量会少用，只有需要实现一些特殊效果时，才会用变形。
 
 
 
 3.4 CGAffineTransformIdentity
 
 是一个CGAffineTransform类型的常量值,表示所有视图对象.transform属性的初始值
 
 
 1. 坐标系 和 变态4人组(.frame .bounds, .transform, .center)
 
 1.1 .frame属性
 
 1> 是什么
 
 是一个CGRect类型的结构体, {x,y,width,height}
 
 一个视图的.frame属性描述的是此视图在父视图中的位置和占用父视图空间的大小。
 
 button.frame = {10,20,30,40}
 
 button的左上角在父视图的10,20的位置，button占了父视图宽30，高40的空间。
 
 2> 什么时候使用.frame
 
 将一个视图加入到父视图中时，设置视图的.frame属性(初始化视图在父视图中的位置和大小)
 
 当不使用transform/AutoLayout时，可以用修改.frame属性的方式改变视图的位置和大小
 
 3> .frame和其他三个之间的关系
 
 1>  .frame ==> .center
 
 直接修改.frame属性会导致.center属性发生变化
 
 2>  .frame ==>  .bounds
 
 直接修改.frame属性会导致.bounds属性发生变化
 
 3>  .frame ==> .transform
 
 会
 
 4> 一般情况下，.frame和.bounds保持一致
 
 
 1.2  .bounds
 
 1> 是什么
 
 也是CGRect类型的结构体，和.frame的类型一样
 
 描述视图自身的大小，其值和父视图无关。
 
 由于其值与父视图无关，所以x和y值一般情况是保持为0
 
 2> 什么时候用
 
 当计算子视图的相关数据时，如果需要知道父视图有多宽多高，此时获取父视图的.bounds属性。
 
 当写一个自定义的View时(或自定义Cell), 视图的大小由外部决定。视图内部在计算宽高时，使用视图的bounds属性
 
 3> 和其他的关系
 
 1> .bounds ==>  .frame
 
 修改.bounds会导致.frame联动
 
 2> .bounds ==> .frame ==>  .center
 
 3> .bounds ==> .transform ?  NO
 
 1.3 .transform属性
 
 1> 是什么
 
 是CGAffineTransform类型的结构体
 
 描述的是一个3x3的矩阵，此矩阵中的值发生变化时，会导致视图发生变形(旋转，缩放，位移)
 
 2> 什么时候用
 
 当需要变形时用
 
 视图处于AutoLayout的管理下时，不能很好使用
 
 3> 和其他的关系
 
 .transform  ==>   .frame
 
 当视图的.transform发生变化时，.frame属性会随之改变
 
 .transform ==> .bounds //NO
 
 改变一个视图的.transform属性， 不会导致.bounds属性发生变化(特别注意)
 
 
 1.4 .center
 
 是一个视图的中心点
 
 .center ==> .frame
 
 .center ==> .bounds//NO
 
 
 特别注意:
 
 只有主动直接修改.frame的值时,  .bounds的值才会跟着改变。但是，如果是.transform导致的.frame发生变化，是不会导致.bounds发生的变化的
 
 1. 绘制图形的布局问题
 
 drawRect方法中绘制的图形，在视图大小发生变化时，如果不是自动布局，图形会失真。
 
 [Demo1]
 
 解决的办法就是，当视图大小发生变化时，让图形重绘。将视图的contentMode(storyboard中Mode)属性设置成Redraw
 
 self.subview.contentMode = …;
 
 contentMode:
 
 ScaleToFill  （默认值） 拉伸填充
 
 ScaleAspectFit    保持宽高比    会留边
 
 ScaleAspectFill    保持宽高比，并填充满    会截图
 
 Redraw  专门用于绘制图形，当视图大小变化时，重绘
 
 2. 视图自身的布局
 
 2.1 是什么
 
 VC中的方法viewDidLayoutSubviews专门用于对视图进行布局，但是视图自身也可以对自己的子视图进行布局，布局的方法是:
 
 -(void)layoutSubviews;
 
 经常用于自定义视图内部自身布局。
 
 
 2.2 视图布局和视图控制器布局
 
 VC：
 
 - (void)viewWillLayoutSubviews;
 
 - (void)viewDidLayoutSubviews;
 
 View:
 
 - (void)layoutSubviews;
 
 比如，自定义了一个TableViewCell视图类，cell中有很多子视图，这些子视图的位置和大小就应该由TableViewCell类中的layoutSubviews方法进行布局。
 
 [Demo3]
 
 
 
 3. Autoresizing布局
 
 3.1 是什么
 
 是旧版的自动布局，现在还在用
 
 3.2怎么用
 
 1> 首先要关闭AutoLayout
 
 2> 选中需要布局的子视图
 
 3> 检查器5，Autoresizing设置布局
 
 4> 点亮需要的红线
 
 [Demo4]
 
 
 Autosizing:
 
 外框(4个) 红线负责子视图到父视图的边距
 
 内框(2个)红线负责五视图是否可以左右、上下拉伸
 
 
 
 
 
 练习: 使用Autoresizing
 
 1. 两个等宽的按钮， 高40点，有背景色
 
 ———————————————
 
 |             20                     20              |
 
 |-20-[button1]-10-[button2]-20-|
 
 
 
 2. 在1的基础上加一个大小会变化的ImageView(内有图片)
 
 imageView离屏幕的上、下、左、右分别是70,50,20,20
 
 3. 在2的基础上增加三个按钮(20x20), 永远排在屏幕的右下角:
 
 [b1]-10-[b2]-10-[b3]-20-|
 
 20          20           20        |
 
 ———————————
 
 
 
 3.3 代码方式使用Autoresizing
 
 当子视图是直接由代码创建时，无法在storyboard或xib中进行Autoresizing, 此时可以用代码方式使用Autoresizing
 
 [Demo5]
 
 
 4. AutoLayout（自动布局）
 
 4.1 是什么
 
 是从iOS6开始的一种新的布局技术
 
 功能强大，操作复杂  基本不用写代码
 
 Xcode5开始已经很好用了
 
 4.2 原理
 
 1> 通过一系列的约束(Constraint)来完成布局
 
 2> 什么是约束:
 
 约束是一个条件
 
 是一个对象
 
 3> 如何使用约束:
 
 会将很多的约束加入到父视图中，每一个约束都是对某个子视图的一个条件描述，父视图根据这些约束自动计算子视图的位置和大小
 
 4> 如何创建约束
 
 在Storyboard中创建
 
 用代码创建
 
 4.3 使用AutoLayout
 
 1> 打开视图的AutoLayout
 
 检查器1中的 Use AutoLayout前打勾
 
 2> 选中要布局的子视图
 
 3> 创建约束
 
 [Demo6]
 
 
 4.4 约束的两大原则
 
 
 
 描述清楚  (如果不清楚， 橙色)
 
 互不冲突  (如果有冲突， 红色)
 
 
 
 4.5 使用细节
 
 边距约束
 
 自身大小
 
 很多控件都有最佳大小，如果不设置控件的大小约束，认识应该是最佳大小
 
 
 
 5. 代码方式实现自动布局
 
 5.1 为什么用代码
 
 如果一个视图是用代码创建的，只能用代码的方式布局
 
 5.2 如何做
 
 创建约束对象，然后加入到父视图中
 
 5.3 创建约束对象的API：
 
 约束对象的类型:  NSLayoutConstraint
 
 //一次创建一个约束对象
 
 万能公式:所有的约束都可以用此公式来描述
 
 //view1.attr1 = view2.attr2 * multiplier + constant
 
 button1.left = self.view.width * 1 + (-100)
 
 
 
 +(id)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;
 
 
 
 //一次创建多个约束对象
 
 + (NSArray *)constraintsWithVisualFormat:(NSString *)format options:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views;
 
 
 [Demo7]
 
 
 
 5.4 VFL (VisualFormatLanguage)
 
 NSLayoutConstraint
 
 
 
 一次创建一个约束:
 
 万能公式:   view1.attr1 = (>=, <=) view2.attr2 * mult + const
 
 
 
 button.right = self.view.right * 1 + (-20)
 
 button.top = self.view.top * 1 + 20
 
 button.width = self.view.width * 0 + 100
 
 label.right = self.view.right * 1 + (-20)
 
 label.bottom = self.view.bottom * 1 + (-20)
 
 label.width = button.width * 1 + 0
 
 
 
 一次创建多个约束:
 
 VFL  (Visual Format Language)
 
 是一个具有一定格式的字符串
 
 
 
 |   代表父视图的边
 
 H:|   代表左边
 
 V:|   代表上边
 
 []    代表一个对象
 
 ()    代表一个条件(==, >=, <=)
 
 ==  可以省略不写
 
 -    代表两个对象之间是标准间距
 
 -xx-   代表两个对象之间的间距是多少
 
 
 metrics:
 
 指定VFL字符串中可以替换的值
 
 是一个字典
 
 NSDictionaryOfVariableBindings()函数
 
 根据对象引用的名字生成字典
 
 适合于对象名和VFL中描述对象的名字一致的情况
 
 
 Auto Layout代码方式需要注意:
 
 1. 约束一般要加到父视图中才可以
 
 2. 子视图的Autoresizing的翻译一般情况下需要关闭，否则可能会导致冲突。
 
 
 今天:   动画(Animation)
 
 
 1. 动画
 
 1.1 什么是动画
 
 
 帧动画
 
 由一帧一帧静态的图片快速切换达到的动画效果
 
 
 
 渲染(Rendering)
 
 
 
 帧率  FPS
 
 
 
 1.2 iOS动画
 
 UIImage类 直接支持动画
 
 NSTimer类手工实现动画
 
 UIView类实现动画(最常用)
 
 
 Core Animation 底层API实现动画
 
 iOS7新增:
 
 UIView动画有些加强
 
 UIKit Dynamic  动力
 
 Sprite Kit  (2D游戏引擎)
 
 
 
 iOS8 新增:
 
 Sprite Kit3D
 
 其他游戏引擎…
 
 2. UIImage动画
 
 最简单的动画
 
 使用UIImage对象快速切换图片形成动画
 
 做一些简单的，小动画时可以用
 
 [Demo1]
 
 
 
 
 
 3. NSTimer制作动画
 
 3.1 NSTimer是什么
 
 是一个计时器类
 
 3.2 如何创建计时器对象
 
 工厂方法:
 
 scheduled开头的两个
 
 创建完计时器对象后，马上自动开始时时
 
 用这种方式创建的Timer对象会被自动加入到当前的NSRunLoop循环中，由RunLoop保持此对象
 
 
 
 timer开头的两个
 
 仅仅创建的计时器对象，需要手工启动计时
 
 如何启动计时，需要将计时器加入到当前的事件循环中
 
 NSRunLoop
 
 初始化方法，功能和timer开头的工厂方法一样
 
 3.3 具体的用法
 
 [Demo2]
 
 
 3.4 匀速动画
 
 当前值＝开始值+当前的帧数*(结束值-开始值)/(帧率*时长）
 
 [Demo3]
 
 匀速的改变视图的一些值，就可以达到匀速的动画效果
 
 .frame
 
 .center
 
 .transform
 
 .alpha
 
 .color
 
 3.5 变速动画
 
 由快到慢   由慢到快   由慢到快再到慢
 
 
 
 当前值 ＝ 上一次的值 + (目标值 - 上一次值) * 渐近因子
 
 [Demo4]
 
 
 
 4. UIView动画
 
 4.1 是什么
 
 是UIKit专门制作动画的一组API， 其实对更底层的CoreAnimation的封装
 
 可以轻松的实现需要的动画效果，不需要计算
 
 4.2 如何做
 
 1> 设置需要动画的视图的初始属性值。
 
 2> 给UIView类发消息， 告诉系统需要什么样的动画
 
 3> 发消息的同时，将动画结束时的状态(属性值)写入到指定的Block中。
 
 [Demo5]
 
 
 4.3 动画的高级选项
 
 UIViewAnimationOptionCurveEaseInOut  先慢再快再慢
 
 UIViewAnimationOptionCurveEaseIn     越来越快
 
 UIViewAnimationOptionCurveEaseOut    越来越慢
 
 UIViewAnimationOptionCurveEaseLinear 匀速
 
 
 UIViewAnimationOptionAllowUserInteraction  动画期间允许用户交互
 
 UIViewAnimationOptionRepeat    重复动画
 
 UIViewAnimationOptionAutoreverse   和Repeat结合使用， 反向动画
 
 UIViewAnimationOptionBeginFromCurrentState  从当前状态开始动画
 
 …
 
 
 5. Core Animation
 
 5.1 是什么
 
 是一个图形渲染和动画的底层基础框架。用于iOS和 Mac OS
 
 5.2 能干什么
 
 提供更强大的图形渲染(Rendering, 显示)效果
 
 提供专业级的动画效果
 
 是高层图形技术的基础，有更强大的图形API
 
 5.3 如何使用Core Animation
 
 经常获取一个视图的.layer属性(类型是CALayer), 对此属性进行相关操作，来达到我们需要的效果(动画，渲染)
 
 任何一个视图对象都有.layer属性
 
 
 
 5.4 CALayer(层)
 
 
 UIView
 
 .layer  —————>  CALayer
 
 .frame                                    .frame
 
 .transform (3x3)                   .transform : CATransform3D(4x4)
 
 .center	             .position
 
 .alpha                                    .opacity
 
 .autoresizing                         .autoresizing
 
 
 - addSubView:   	             - addSubLayer:
 
 
 
 5.5 CALayer的简单应用
 
 [Demo9]
 
 
 1. Core Animation动画
 
 CAAnimation <— CAPropertyAnimation
 
 <— CAKeyframeAnimation(关键帧动画)
 
 <— CABasicAnimation(基本动画)
 
 <— CAAnimationGroup (组动画，将多个动画合并)
 
 
 1.1 KeyframeAnimation
 
 经常用来给一个视图指定的一运动的路径，进行动画。
 
 
 1>创建对象:
 
 [CAKeyframeAnimation animationWithKeyPath:xx];
 
 参数一定是CALayer类中的属性名,经常是:
 
 position   :   位置
 
 transform   :   变形
 
 opacity  :   透明度
 
 2>设置相关属性
 
 .path  可以指定运动的路径
 
 .duration  指定动画的时长
 
 .removeOnCompletion = YES  动画结束后将其从层中删除
 
 3>将动画对象加入到需要动画的层，此层对象就会立即执行动画
 
 self.imageView.layer addAnimation:xx
 
 
 
 [Demo1]
 
 
 
 1.2 CABasicAnimation
 
 与KeyframeAnimation不同的是，BasicAnimation无法指定运动的path路径, 也就是说没有.path属性。
 
 经常用来做旋转，缩放，透明度的动画
 
 
 1.3CATransform3D
 
 1> 是什么
 
 是一个结构体， 代表一个4x4的矩阵， 其中的值发生变化会导致层对象发生变形(旋转，缩放，位移)
 
 这个变形会有3D效果，包括x,y,z三个轴的变形
 
 2> 创建此结构体
 
 CATransform3DMakeRotation
 
 MakeScale
 
 MakeTranslation
 
 MakeAffineTransform //用以前变形创建现在的
 
 在已有的基础上创建：
 
 CATransform3D/Translate/Rotate/Scale
 
 初始值常量：
 
 CATransform3DIdentity  任何一个layer对象的初始tramsform属性的值
 
 
 
 CAAnimationGroup
 
 
 
 TableView的Cell上使用动画
 
 [Demo2]
 
 
 
 
 
 2. UIKit Dynamics （动力， 动力系统， 动态）
 
 2.1 是什么
 
 iOS7新增的新技术
 
 其实就是UIKit的一套动画和交互体系。
 
 UIKit Dynamics最大的特点是将现实世界中的动力驱动的动画引用到UIKit中， 比如重力，连接， 碰撞， 附着
 
 总之， 将2D物理引擎引入到UIKit中的一个技术。
 
 2.2 设计架构
 
 设计非常好，组件可以任意组合，可重用，声明式等。
 
 
 UIDynamicAnimator(核心类)  —> Reference View(引用视图)
 
 引用视图给Dynamic提供参考坐标系。
 
 
 
 UIDynamicBehavior (行为类) —>  View
 
 行为对象一向和一个视图绑定，让此视图具有某种行为。
 
 比如将一个重力行为对象绑定给一个图片视图对象后，图片视图就具有重力的行为特征。
 
 
 具体的行为类(UIDynamicBehavior的子类):
 
 UIGravityBehavior   重力行为
 
 UICollisionBehavior  碰撞行为
 
 UIAttachmentBehavior  附着行为
 
 UISnapBehavior  闪烁行为
 
 UIPushBehavior  推(拍)
 
 UIDynamicItemBehavior   其他行为: 密度，摩擦力等
 
 

 
 iOS6开始：
 
 
 
 [NSArray arrayWithObjects: @"1", @"2", @"3", nil];
 
 @[@"1", @"2", @"3"];
 
 @{@"1": @"abc", @"2":@"def"};
 
 @"abc";
 
 @1; //[NSNumber numberWithInt:1];
 
 @3.14; // [NSNumber numberWithFloat:3.14];
 
 
 
 
 
 
 
 block中如果使用self, 会导致循环引用
 
 
 
 Views  11通知(Notification)
 回顾:
 
 MotionEffect
 
 UIImage+Blur
 
 CollectionViewLayout
 
 自定义Layout
 
 Dynamic + CollectionViewLayout
 
 
 
 今天:
 
 通知(Notification)
 
 
 1. 通知(Notification)
 
 1.1 是什么
 
 是一种观察模式的具体体现
 
 23设计模式  4人帮
 
 MVC， 工厂模式， 单例模式，装饰模式， 组合模式， 观察者模式。。。
 
 
 
 A对象想知道B对象的状态是否发生了变化，如果发生了变化，那么A对象就要做出相应的反应。
 
 
 广播模式：
 
 类似生活中的广播，当一个对象的状态发生了变化，发出一个广播， 需要这条消息的对象会做出响应。
 
 iOS中的通知，其实就是广播模式的具体实现。
 
 1.2 有什么用
 
 一个对象不用知道消息的接收者是谁， 就可以将一条消息发送给需要的接收者。
 
 有时，发送消息的对象无法知道接收消息的对象是谁。
 
 有时，发消息的对象离接收消息的对象距离太远。
 
 
 
 1.3 具体做法：
 
 1> 接收者， 打开收音机，到某个频道， 收听广播
 
 找到一个通知中心    NSNotificationCenter
 
 注册 收听哪个具体的频道   addObsever:…
 
 2> 发送者
 
 找到通知中心  NSNotificationCenter(单例)
 
 创建通知对象  NSNotification
 
 发送    postNotification…
 
 3>  接收者
 
 收到消息， 调用一个方法处理此消息4	·····················
 
 4>  停止收听
 
 找到通知中心，删除注册。
 
 
 
 1.4 关键类
 
 NSNotificationCenter  通知中心类
 
 单例类，只有一个对象 ，获取方法是 + defaultCenter
 
 NSNotification 通知类
 
 封装了通知的内容
 
 
 
 自定义通知
 
 [Demo1]
 
 
 
 系统通知
 
 [Demo2]
 
 
 
 2. TextKit
 
 2.1 属性字符串
 
 是基于TextKit来构建字符串对象，类型NSAttributeString, NSMutableAttributeString.
 
 2.2 使用带属性的字符串
 
 
 
 
 
 
 
 
 
    

*/
@end
