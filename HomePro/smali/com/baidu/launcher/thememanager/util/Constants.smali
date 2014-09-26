.class public Lcom/baidu/launcher/thememanager/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BITMAP_CACHE_SIZE:I = 0x400000

.field public static final COMPONENT_FONTS:Ljava/lang/String; = "fonts"

.field public static final COMPONENT_FREVIEW:Ljava/lang/String; = "preview"

.field public static final COMPONENT_FRMRES:Ljava/lang/String; = "framework-res"

.field public static final COMPONENT_HOME:Ljava/lang/String; = "com.baidu.home2"

.field public static final COMPONENT_ICONS:Ljava/lang/String; = "icons"

.field public static final COMPONENT_LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final COMPONENT_LOCKSCREENPAPER:Ljava/lang/String; = "lockwallpaper"

.field public static final COMPONENT_RINGTONES:Ljava/lang/String; = "ringtones"

.field public static final COMPONENT_STATUSBAR:Ljava/lang/String; = "com.android.systemui"

.field public static final COMPONENT_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final CURRENT_CATEGORY:Ljava/lang/String; = "currentCategory"

.field public static final CURRENT_INDEX:Ljava/lang/String; = "currentIndex"

.field public static final CURRENT_ITEM:Ljava/lang/String; = "currentItem"

.field public static final CURRENT_WALLPAPER_LIST:Ljava/lang/String; = "currentWallpaperList"

.field public static final DEFAULT_HOST_NAME:Ljava/lang/String; = "http://os.baidu.com/theme"

.field public static final DISK_CACHE_SIZE:I = 0xf00000

.field public static final FILE_AUTHORITY_CODE:I = 0x1ff

.field public static final FROM_ONLINE_DETAIL:I = 0x2

.field public static final FROM_ONLINE_FRAGMENT:I = 0x1

.field public static final INTENT_UPLOAD_FILE_PATH:Ljava/lang/String; = "filepath"

.field public static final MESSAGE_UPLOAD_NETWORK_UNAVAILABLE:I = 0x0

.field public static final MESSAGE_UPLOAD_START:I = 0x1

.field public static NOTIFYID:I = 0x0

.field public static final SERVICE_INTENT_DATA:Ljava/lang/String; = "data"

.field public static final SHOW_TAB:Ljava/lang/String; = "show_tab"

.field public static final SUFFIX:Ljava/lang/String; = "_title"

.field public static final THEMEDETAIL_RESULT_ID:I = 0x1

.field public static THEME_CACHE_DIR:Ljava/lang/String; = null

.field public static final UPLOAD_PROGRESS_INTERVAL:I = 0x3e8

.field public static final WALLPAPER_COUNT:Ljava/lang/String; = "wallpaperCount"

.field public static final WALLPAPER_LOCAL:Ljava/lang/String; = "local"

.field public static final sdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/launcher/thememanager/util/Constants;->NOTIFYID:I

    .line 41
    const-string v0, "/.BaiduLauncherTheme/"

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Constants;->THEME_CACHE_DIR:Ljava/lang/String;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/baidu/launcher/thememanager/util/Constants;->sdkVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
