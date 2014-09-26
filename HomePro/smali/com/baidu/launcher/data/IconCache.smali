.class public Lcom/baidu/launcher/data/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/data/IconCache$1;,
        Lcom/baidu/launcher/data/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field public static final calendarComponent:Landroid/content/ComponentName;

.field private static iconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/baidu/launcher/data/IconCache;

.field public static final sReplaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/baidu/launcher/data/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.calendar"

    const-string v2, "com.android.calendar.AllInOneActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    .line 66
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox.MainActivity"

    const-string v2, "baidusearch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.baidumaps.WelcomeScreen"

    const-string v2, "baidumap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.browser.apps.BrowserActivity"

    const-string v2, "baidubrowser"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.appsearch.LauncherActivity"

    const-string v2, "baidumarket"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.chaozh.iReader.ui.activity.WelcomeActivity"

    const-string v2, "baidureader"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.security.ui.MainSecurityActivity"

    const-string v2, "ic_launcher_security"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.baiyi_mobile.gamecenter.ui.MainActivity"

    const-string v2, "ic_launcher_baidugamecenter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.chaozh.iReaderFree"

    const-string v2, "baidureader"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.qihoo360.launcher"

    const-string v2, "ic_launcher_360launcher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.qihoo360.mobilesafe_mtk6573"

    const-string v2, "ic_launcher_360"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.alibaba.mobileim"

    const-string v2, "ic_launcher_aliwangwang"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.cleanmaster.mguard_cn"

    const-string v2, "ic_launcher_cleanmaster"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "cn.etouch.ecalendar"

    const-string v2, "ic_launcher_etouch_ecalendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.huluxia.gametools"

    const-string v2, "ic_launcher_huluxia_gametools"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.chaozh.iReaderFree"

    const-string v2, "ic_launcher_ireader"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.kugou.android"

    const-string v2, "ic_launcher_kugou_music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.player"

    const-string v2, "ic_launcher_kuwo_player"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.moji.mjweather"

    const-string v2, "ic_launcher_moji_weather"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.immomo.momo"

    const-string v2, "ic_launcher_momo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.pplive.androidphone"

    const-string v2, "ic_launcher_pplive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    const-string v2, "ic_launcher_qqmusic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "ic_launcher_qq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.qvod.player"

    const-string v2, "ic_launcher_qvodplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.qzone"

    const-string v2, "ic_launcher_qzone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.renren.mobile.android"

    const-string v2, "ic_launcher_renren"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.shuqi.controller"

    const-string v2, "ic_launcher_shuqi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.mediatek.StkSelection"

    const-string v2, "ic_launcher_sim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "ic_launcher_sogou_input"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.taobao.taobao"

    const-string v2, "ic_launcher_taobao"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.news"

    const-string v2, "ic_launcher_tencent_news"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqlive"

    const-string v2, "ic_launcher_tencent_qqlive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.UCMobile"

    const-string v2, "ic_launcher_ucmobile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.wandoujia.phoenix2"

    const-string v2, "ic_launcher_wandoujia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    const-string v2, "ic_launcher_wechat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.sina.weibo"

    const-string v2, "ic_launcher_weibo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.snda.wifilocating"

    const-string v2, "ic_launcher_wifiwnys"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "im.yixin"

    const-string v2, "ic_launcher_yixin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.youdao.dict"

    const-string v2, "ic_launcher_youdao"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.youku.phone"

    const-string v2, "ic_launcher_youku"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "ic_launcher_zhifubao"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.security"

    const-string v2, "ic_launcher_security"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    const-string v1, "com.dolby.ds1appUI"

    const-string v2, "ic_launcher_dolby"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/IconCache;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 134
    const-string v0, "linguang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPackageManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/data/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/baidu/launcher/data/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 136
    invoke-static {p1}, Lcom/baidu/launcher/data/IconCache;->replaceTitle(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/baidu/launcher/data/IconCache$CacheEntry;
    .locals 8
    .parameter "componentName"
    .parameter "info"

    .prologue
    .line 224
    iget-object v5, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;

    .line 225
    .local v1, entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    if-nez v1, :cond_5

    .line 226
    new-instance v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;

    .end local v1           #entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/baidu/launcher/data/IconCache$CacheEntry;-><init>(Lcom/baidu/launcher/data/IconCache$1;)V

    .line 227
    .restart local v1       #entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, packageName:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v5, p0, Lcom/baidu/launcher/data/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 231
    iget-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 232
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 241
    :cond_0
    iget-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 242
    iget-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->title:Ljava/lang/String;

    invoke-static {v5}, Lcom/baidu/launcher/utils/Utilities;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 256
    :cond_1
    sget-boolean v5, Lcom/baidu/launcher/app/LauncherApplication;->IS_BAIDU_SYSTEM:Z

    if-nez v5, :cond_2

    .line 257
    iget-object v5, p0, Lcom/baidu/launcher/data/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/baidu/launcher/thememanager/util/Utils;->IconDrawableInterceptor(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 285
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/data/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 286
    .local v4, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 287
    .local v3, res:I
    sget-object v5, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getCurrentDay()I

    move-result v0

    .line 289
    .local v0, day:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ic_launcher_calendar_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/baidu/launcher/data/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 291
    if-lez v3, :cond_3

    .line 292
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/data/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 306
    .end local v0           #day:I
    :cond_3
    iget-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 307
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/baidu/launcher/data/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/data/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 312
    :cond_4
    iget-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    .line 313
    iget-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/baidu/launcher/data/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/Utilities;->addBlackEdgeForIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 316
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #res:I
    .end local v4           #resources:Landroid/content/res/Resources;
    :cond_5
    return-object v1
.end method

.method public static getIconMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->iconMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/IconCache;
    .locals 2
    .parameter "context"

    .prologue
    .line 120
    const-class v1, Lcom/baidu/launcher/data/IconCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->mInstance:Lcom/baidu/launcher/data/IconCache;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/baidu/launcher/data/IconCache;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/data/IconCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/data/IconCache;->mInstance:Lcom/baidu/launcher/data/IconCache;

    .line 123
    :cond_0
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->mInstance:Lcom/baidu/launcher/data/IconCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 140
    iget-object v3, p0, Lcom/baidu/launcher/data/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 141
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    return-object v0
.end method

.method public static replaceTitle(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 327
    sget-object v8, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 328
    sget-object v8, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 333
    :cond_0
    const v8, 0x7f0c02a3

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, replace_browser_key:Ljava/lang/String;
    const v8, 0x7f0c02a4

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, replace_browser_value:Ljava/lang/String;
    const v8, 0x7f0c02a9

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, replace_market_key:Ljava/lang/String;
    const v8, 0x7f0c02aa

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, replace_market_value:Ljava/lang/String;
    const v8, 0x7f0c02ad

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, replace_reader_key:Ljava/lang/String;
    const v8, 0x7f0c02ae

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, replace_reader_value:Ljava/lang/String;
    const v8, 0x7f0c02af

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, replace_bbs_key:Ljava/lang/String;
    const v8, 0x7f0c02b0

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, replace_bbs_value:Ljava/lang/String;
    sget-object v8, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v8, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v8, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v8, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFastIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"

    .prologue
    .line 210
    iget-object v2, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/IconCache$CacheEntry;

    .line 212
    .local v0, entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, v0, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v2

    .line 215
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 216
    .end local v0           #entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 200
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 201
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 205
    :goto_0
    return-object v1

    .line 204
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/data/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/baidu/launcher/data/IconCache$CacheEntry;

    move-result-object v0

    .line 205
    .local v0, entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 206
    .end local v0           #entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "intent"

    .prologue
    .line 182
    iget-object v4, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 183
    if-nez p1, :cond_0

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/data/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    .line 194
    :goto_0
    return-object v3

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/data/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 187
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 189
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/data/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    goto :goto_0

    .line 195
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 193
    .restart local v0       #component:Landroid/content/ComponentName;
    .restart local v2       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/baidu/launcher/data/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/baidu/launcher/data/IconCache$CacheEntry;

    move-result-object v1

    .line 194
    .local v1, entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    iget-object v3, v1, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getTitleAndIcon(Lcom/baidu/launcher/data/item/ListAppInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "application"
    .parameter "info"

    .prologue
    .line 171
    iget-object v2, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v1, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 173
    monitor-exit v2

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, p2}, Lcom/baidu/launcher/data/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/baidu/launcher/data/IconCache$CacheEntry;

    move-result-object v0

    .line 176
    .local v0, entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/baidu/launcher/data/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    .line 177
    iget-object v1, v0, Lcom/baidu/launcher/data/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 178
    monitor-exit v2

    goto :goto_0

    .end local v0           #entry:Lcom/baidu/launcher/data/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/baidu/launcher/data/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadCalendarIcon(I)V
    .locals 2
    .parameter "day"

    .prologue
    .line 321
    sget-object v1, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/data/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/data/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    .line 325
    return-void
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/data/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
