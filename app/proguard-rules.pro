# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/dao/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html
#
# Add any project specific keep options here:
#
# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
#
##指定代码的压缩级别
#    -optimizationpasses 5
#
#    #包明不混合大小写
#    -dontusemixedcaseclassnames
#
#    #不去忽略非公共的库类
#    -dontskipnonpubliclibraryclasses
#
#     #优化  不优化输入的类文件
#    -dontoptimize
#
#     #预校验
#    -dontpreverify
#
#     #混淆时是否记录日志
#    -verbose
#
#     # 混淆时所采用的算法
#    -optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
#
#    #保护注解
#    -keepattributes *Annotation*
#
#    # 保持哪些类不被混淆
#    -keep public class * extends android.app.Fragment
#    -keep public class * extends android.app.Activity
#    -keep public class * extends android.app.Application
#    -keep public class * extends android.app.Service
#    -keep public class * extends android.content.BroadcastReceiver
#    -keep public class * extends android.content.ContentProvider
#    -keep public class * extends android.app.backup.BackupAgentHelper
#    -keep public class * extends android.preference.Preference
#    -keep public class com.android.vending.licensing.ILicensingService
#    #如果有引用v4包可以添加下面这行
#    -keep public class * extends android.support.v4.app.Fragment
#
#
#
#    #忽略警告
#    -ignorewarning
#
#    ##记录生成的日志数据,gradle build时在本项目根目录输出##
#
#    #apk 包内所有 class 的内部结构
#    -dump class_files.txt
#    #未混淆的类和成员
#    -printseeds seeds.txt
#    #列出从 apk 中删除的代码
#    -printusage unused.txt
#    #混淆前后的映射
#    -printmapping mapping.txt
#
##开普广告
#-keep public class cn.waps.** {*;}
#-keep public interface cn.waps.** {*;}
##对亍使用 4.0.3 以上 android-sdk 进行顷目编译时产生异常癿情况时,加入以下内容：
#-dontwarn cn.waps.**
#
##    # for DexGuard only
##    -keepresourcexmlelements manifest/application/meta-data@value=GlideModule
#
#     #retrofit2
#    # Platform calls Class.forName on types which do not exist on Android to determine platform.
#    -dontnote retrofit2.Platform
#    # Platform used when running on RoboVM on iOS. Will not be used at runtime.
#    -dontnote retrofit2.Platform$IOS$MainThreadExecutor
#    # Platform used when running on Java 8 VMs. Will not be used at runtime.
#    -dontwarn retrofit2.Platform$Java8
#    # Retain generic type information for use by reflection by converters and adapters.
#    -keepattributes Signature
#    # Retain declared checked exceptions for use by a Proxy instance.
#    -keepattributes Exceptions
#
#    #okhttp3
#    -dontwarn okhttp3.**
#
#        #如果用用到Gson解析包的，直接添加下面这几行就能成功混淆，不然会报错。
#        #gson
#        #-libraryjars libs/gson-2.2.2.jar
#        -keepattributes Signature
#        # Gson specific classes
#        -keep class sun.misc.Unsafe { *; }
#        # Application classes that will be serialized/deserialized over Gson
#        -keep class com.google.gson.examples.android.model.** { *; }
#
#
#        #glide
#        -keep public class * implements com.bumptech.glide.module.GlideModule
#        -keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
#          **[] $VALUES;
#          public *;
#        }
#
#     -keepclassmembers class * {
#            public void *ButtonClicked(android.view.View);
#        }
#
#        #不混淆资源类
#        -keepclassmembers class **.R$* {
#            public static <fields>;
#        }
#
#
#        #如果不想混淆 keep 掉
#        -keep class com.lippi.recorder.iirfilterdesigner.** {*; }
#        #友盟
#        -keep class com.umeng.**{*;}
#        #项目特殊处理代码
#
#        #忽略警告
#        -dontwarn com.lippi.recorder.utils**
#        #保留一个完整的包
#        -keep class com.lippi.recorder.utils.** {
#            *;
#         }
#
#        -keep class  com.lippi.recorder.utils.AudioRecorder{*;}
#
#
#        #如果引用了v4或者v7包
#        -dontwarn android.support.**
#
#        ####混淆保护自己项目的部分代码以及引用的第三方jar包library-end####
#
#        -keep public class * extends android.view.View {
#            public <init>(android.content.Context);
#            public <init>(android.content.Context, android.util.AttributeSet);
#            public <init>(android.content.Context, android.util.AttributeSet, int);
#            public void set*(...);
#        }
#
#        #保持 native 方法不被混淆
#        -keepclasseswithmembernames class * {
#            native <methods>;
#        }
#
#        #保持自定义控件类不被混淆
#        -keepclasseswithmembers class * {
#            public <init>(android.content.Context, android.util.AttributeSet);
#        }
#
#        #保持自定义控件类不被混淆
#        -keepclassmembers class * extends android.app.Activity {
#           public void *(android.view.View);
#        }
#
#        #保持 Parcelable 不被混淆
#        -keep class * implements android.os.Parcelable {
#          public static final android.os.Parcelable$Creator *;
#        }
#
#        #保持 Serializable 不被混淆
#        -keepnames class * implements java.io.Serializable
#
#        #保持 Serializable 不被混淆并且enum 类也不被混淆
#        -keepclassmembers class * implements java.io.Serializable {
#            static final long serialVersionUID;
#            private static final java.io.ObjectStreamField[] serialPersistentFields;
#            !static !transient <fields>;
#            !private <fields>;
#            !private <methods>;
#            private void writeObject(java.io.ObjectOutputStream);
#            private void readObject(java.io.ObjectInputStream);
#            java.lang.Object writeReplace();
#            java.lang.Object readResolve();
#        }

   -keep class com.baidu.appsearch.patchupdate.**{*;}
   -keep class com.baidu.android.common.**{*;}
   -keep class com.baidu.autoupdatesdk.**{*;}