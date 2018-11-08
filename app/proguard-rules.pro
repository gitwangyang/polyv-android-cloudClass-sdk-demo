#-------------------------------------------�������ö�����--------------------------------------------
#---------------------------------����ָ����----------------------------------
-optimizationpasses 5       # ָ�������ѹ������
-dontusemixedcaseclassnames     # �Ƿ�ʹ�ô�Сд���
-dontskipnonpubliclibraryclasses        # ָ����ȥ���Էǹ����Ŀ���
-dontskipnonpubliclibraryclassmembers       # ָ����ȥ���԰��ɼ��Ŀ���ĳ�Ա
-dontpreverify      # ����ʱ�Ƿ���ԤУ��
-verbose        # ����ʱ�Ƿ��¼��־
-printmapping proguardMapping.txt
-optimizations !code/simplification/cast,!field/*,!class/merging/*      # ����ʱ�����õ��㷨
-keepattributes *Annotation*,InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
#----------------------------------------------------------------------------
-ignorewarnings     # �Ƿ���Լ�⣬���ǣ�
#---------------------------------Ĭ�ϱ�����---------------------------------
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.view.View
-keep public class com.android.vending.licensing.ILicensingService
-keep class android.support.** {*;}
#-ignorewarnings -keep class * { public private *; }

#���������v4�����������������
-keep class android.support.v4.** { *; }
-keep public class * extends android.support.v4.**
-keep public class * extends android.app.Fragment

-keepclasseswithmembernames class * {
    native <methods>;
}
-keepclassmembers class * extends android.app.Activity{
    public void *(android.view.View);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep public class * extends android.view.View{
    *** get*();
    void set*(***);
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
#��ʾ������R�ļ��е����о�̬�ֶ�
-keep class **.R$* {
    public static <fields>;
}
# ����ע�ⲻ������
-keep public @interface * {
    ** default (*);
}
-keepclassmembers class * {
    void *(**On*Event);
}
#----------------------------------------------------------------------------

#---------------------------------webview------------------------------------
-keepclassmembers class fqcn.of.javascript.interface.for.Webview {
   public *;
}
-keepclassmembers class * extends android.webkit.WebViewClient {
    public void *(android.webkit.WebView, java.lang.String, android.graphics.Bitmap);
    public boolean *(android.webkit.WebView, java.lang.String);
}
-keepclassmembers class * extends android.webkit.WebViewClient {
    public void *(android.webkit.WebView, jav.lang.String);
}
#----------------------------------------------------------------------------

-keep class com.easefun.polyv.cloudclass.config.PolyvLiveSDKClient {*;}
-keep class com.easefun.polyv.businesssdk.vodplayer.PolyvVodSDKClient {*;}
-keep class com.easefun.polyv.businesssdk.model.** {*;}
-keep class com.easefun.polyv.businesssdk.sub.danmaku.entity.** {*;}
-keep class com.easefun.polyv.businesssdk.vodplayer.question.model.** {*;}
-keep class com.easefun.polyv.cloudclass.chat.** {*;}
-keep class com.easefun.polyv.cloudclass.model.** {*;}
-keep class com.easefun.polyv.linkmic.model.** {*;}
-keep class tv.danmaku.** {*;}
-keep class io.agora.** {*;}