# MusicPlaying
滚动图片播放音乐出现的问题
2017年2月24日14:08:22

————问题：360无法执行transform:scale(1)操作。
	现象：点击图片后360无法放大图片。
	发现：看源码，发现google和火狐会自动给<img>标签里面增加transform:scale(1)属性，360中没有。手动把transform:scale(1)加入到代码中，在360中仍然无法读取。
	猜测：transform:scale(1)是CSS3的新增属性，估计是360在这方面没做完善。
未解决===========================


————问题：修改代码保存后，在火狐里面显示的还是没有修改前的代码。
	现象：原来的背景图片已经注释掉了，但是后来打开后，仍然无法显示。
	发现：看源码后，发现页面代码根本没有改变
	猜测：是浏览器的缓存问题，页面一直读取的是浏览器缓存中的数据。
	解决方法：清除浏览器缓存。
================================已解决========================================


————问题：只在CSS中设置了样式，结果在javascript代码中无法修改
	现象：代码没问题，javascript事件能发生，但是涉及到设置元素属性的时候就不行了。
	发现：如果把CSS中的样式设置到元素里面，javascript中改变元素属性的代码就起作用了。
	猜测：可能每次事件发生后，CSS都会快速的重新加载，导致改变的元素又回到了原来的样子。
未解决===========================

————问题：LINK,VISITED对图片元素不起作用
	现象：在CSS中对图片的样式设置了LINK,VISITED,HOVER,ACTIVE的值，但是运行到页面后，LINK,VISITED不起作用。
	发现：查看开发文档，发现LINK,VISITED,HOVER,ACTIVE这四个值只对<a>标签起作用。开发文档原文：Sets the style of an a element when the link is engaged or active.
================================已解决========================================

2017年2月25日10:24:42

————问题：屏幕分辨率改变后，样式变乱。
	现象：每当改变屏幕的分辨率后，页面上的整体格式都变乱。
	发现：在代码中，将全部固定的宽，高，边距等值都改换成固定的百分之多少，无论怎么改变分辨率，最终效果都一样。
================================已解决========================================

2017年2月26日10:06:23
————问题播放音乐的时候遇到的问题：
	代码：<embed src="music/howthis.mp3" width="300px" height="100px">

（MyEclipse Tomcat）
	现象：（Google Chrome）Failed to load resource: the server responded with a status of 400 (No Host matches server name hasee-pc)
	      （火狐）	提示需要下载插件，不播放音乐
	发现：不要用MyEclipse自带的Tomcat 用自己电脑上下载的。
	
（MyEclipse Tomcat7）（自己电脑上安装的）
	现象：（Google Chrome）Resource interpreted as Document but transferred with MIME type audio/mpeg: "http://hasee-pc:8080/hyunA/music/howthis.mp3".

favicon.ico:1 GET http://hasee-pc:8080/favicon.ico 404 (Not Found)
	      （火狐）可以正常使用，音乐课播放并且不报error/warring
	发现：音乐都可以播放，但是控制台有信息提示（不是错误不是警告）。
	
	想法：使用<audio src="music/howthis.mp3" hidden="hidden" autoplay="autoplay" controls>Sorry,your browser doesn't support></audio> 用于谷歌和火狐，
		IE还是使用<bgSound src="music/howthis.mp3"></bgSound >
未解决==========================

