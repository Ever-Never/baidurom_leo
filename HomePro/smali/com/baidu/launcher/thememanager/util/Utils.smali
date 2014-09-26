.class public Lcom/baidu/launcher/thememanager/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final BAIDU_SYSTEM_FLAG:Ljava/lang/String; = "ro.baidu.build.software"

.field public static final DOWNLOAD_BUTTON_LABEL_DETAIL:[I = null

.field public static final DOWNLOAD_BUTTON_LABEL_LIST:[I = null

.field public static final DOWNLOAD_BUTTON_STATE:[Z = null

.field private static final ENDHDR:I = 0x16

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final WALLPAPER_DOWNLOAD_BUTTON_LABEL_LIST:[I

.field public static final WALLPAPER_DOWNLOAD_BUTTON_STATE:[Z

.field public static cache_dir:Ljava/lang/String;

.field public static iconBeans:Ljava/util/HashMap;
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

.field private static mInstance:Lcom/baidu/launcher/thememanager/util/Utils;

.field private static mPaint:Landroid/graphics/Paint;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;

.field private static screen_ratio:F

.field private static screen_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x5

    .line 66
    sput v0, Lcom/baidu/launcher/thememanager/util/Utils;->sIconWidth:I

    .line 67
    sput v0, Lcom/baidu/launcher/thememanager/util/Utils;->sIconHeight:I

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->sPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->sBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->sOldBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->sCanvas:Landroid/graphics/Canvas;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->mPaint:Landroid/graphics/Paint;

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->DOWNLOAD_BUTTON_LABEL_DETAIL:[I

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->DOWNLOAD_BUTTON_LABEL_LIST:[I

    .line 84
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->DOWNLOAD_BUTTON_STATE:[Z

    .line 88
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->WALLPAPER_DOWNLOAD_BUTTON_LABEL_LIST:[I

    .line 90
    new-array v0, v2, [Z

    fill-array-data v0, :array_4

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->WALLPAPER_DOWNLOAD_BUTTON_STATE:[Z

    .line 99
    sget-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 955
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/thememanager/util/Utils;->screen_width:I

    .line 969
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/thememanager/util/Utils;->screen_ratio:F

    return-void

    .line 76
    :array_0
    .array-data 0x4
        0xc5t 0x0t 0xct 0x7ft
        0xc6t 0x0t 0xct 0x7ft
        0xb4t 0x0t 0xct 0x7ft
        0xbft 0x0t 0xct 0x7ft
        0xc0t 0x0t 0xct 0x7ft
    .end array-data

    .line 80
    :array_1
    .array-data 0x4
        0xbet 0x0t 0xct 0x7ft
        0xc6t 0x0t 0xct 0x7ft
        0xb7t 0x0t 0xct 0x7ft
        0xbft 0x0t 0xct 0x7ft
        0xc0t 0x0t 0xct 0x7ft
    .end array-data

    .line 84
    :array_2
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 88
    nop

    :array_3
    .array-data 0x4
        0x1dt 0x1t 0xct 0x7ft
        0x1et 0x1t 0xct 0x7ft
        0x1ft 0x1t 0xct 0x7ft
    .end array-data

    .line 90
    :array_4
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IconDrawableInterceptor(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "ctx"
    .parameter "componentName"

    .prologue
    const/4 v10, 0x0

    .line 791
    sget-object v11, Lcom/baidu/launcher/thememanager/util/Utils;->iconBeans:Ljava/util/HashMap;

    if-eqz v11, :cond_3

    sget-object v11, Lcom/baidu/launcher/thememanager/util/Utils;->iconBeans:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_3

    if-eqz p1, :cond_3

    .line 794
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->convertComponentName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    .line 795
    .local v6, packageName:Ljava/lang/String;
    sget-object v11, Lcom/baidu/launcher/thememanager/util/Utils;->iconBeans:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 796
    .local v9, targetName:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 799
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 806
    .local v8, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 808
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/Utils;->getIconSize(Landroid/content/Context;)I

    move-result v5

    .line 809
    .local v5, iconSize:I
    const-string v11, ".png"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 811
    .local v4, iconPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    .local v3, file:Ljava/io/File;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 814
    .local v7, real_path:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 815
    const-string v11, "android"

    const-string v12, "baidu"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 816
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 819
    const-string v11, "contacts\\.TwelveKeyDialer"

    const-string v12, "phone"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 820
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    .restart local v3       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 823
    const-string v11, "android"

    const-string v12, "baidu"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "browser"

    const-string v13, "browser\\.apps"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 825
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .restart local v3       #file:Ljava/io/File;
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 843
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #iconPath:Ljava/lang/String;
    .end local v5           #iconSize:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #real_path:Ljava/lang/String;
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .end local v9           #targetName:Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v10

    .line 833
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #iconPath:Ljava/lang/String;
    .restart local v5       #iconSize:I
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v7       #real_path:Ljava/lang/String;
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    .restart local v9       #targetName:Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 835
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v5}, Lcom/baidu/launcher/thememanager/util/Utils;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 837
    .local v1, bm1:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 838
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v2, v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 839
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eqz v2, :cond_3

    .line 840
    invoke-static {v2, p0, v10}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_0
.end method

.method public static IsNull(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "version"

    .prologue
    .line 931
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 934
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 144
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    return-void
.end method

.method public static changeWallpaperButtonState(Landroid/content/Context;Landroid/widget/Button;Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;I)V
    .locals 7
    .parameter "ctx"
    .parameter "button"
    .parameter "wallpaperOnlineItem"
    .parameter "progress"

    .prologue
    .line 1140
    if-nez p1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    const/4 v0, 0x0

    .line 1145
    .local v0, buttonState:I
    invoke-virtual {p2}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isWallpaperExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1146
    .local v3, result:Z
    if-eqz v3, :cond_4

    .line 1147
    const/4 v0, 0x2

    .line 1162
    :goto_1
    sget-object v5, Lcom/baidu/launcher/thememanager/util/Utils;->WALLPAPER_DOWNLOAD_BUTTON_LABEL_LIST:[I

    aget v5, v5, v0

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1163
    .local v2, label:Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 1164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1166
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1167
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    :cond_3
    sget-object v5, Lcom/baidu/launcher/thememanager/util/Utils;->WALLPAPER_DOWNLOAD_BUTTON_STATE:[Z

    aget-boolean v1, v5, v0

    .line 1171
    .local v1, enable:Z
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-eq v1, v5, :cond_0

    .line 1172
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1150
    .end local v1           #enable:Z
    .end local v2           #label:Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wallpaper"

    invoke-static {p0, v5, v6}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadStateByUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1151
    .local v4, status:I
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 1156
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1151
    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method public static checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "item"

    .prologue
    .line 492
    const-string v0, ""

    .line 493
    .local v0, reValue:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 500
    :cond_0
    return-object v0
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1178
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1181
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkThemeType(Ljava/lang/String;)I
    .locals 3
    .parameter "themePath"

    .prologue
    .line 1079
    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1080
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, themeName:Ljava/lang/String;
    const-string v1, "com.baidu.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    const/4 v1, 0x1

    .line 1091
    .end local v0           #themeName:Ljava/lang/String;
    :goto_0
    return v1

    .line 1084
    .restart local v0       #themeName:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/Utils;->isBaiduTheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    const/16 v1, 0x64

    goto :goto_0

    .line 1087
    :cond_1
    const/16 v1, 0x3e8

    goto :goto_0

    .line 1091
    .end local v0           #themeName:Ljava/lang/String;
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized constains(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "aPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1222
    .local p0, aWallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;>;"
    const-class v4, Lcom/baidu/launcher/thememanager/util/Utils;

    monitor-enter v4

    const/4 v2, 0x0

    .line 1223
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    .line 1224
    .local v1, item:Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmItemPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1226
    const/4 v2, 0x1

    .line 1230
    .end local v1           #item:Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    :cond_1
    monitor-exit v4

    return v2

    .line 1222
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static convertComponentName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "aComponentName"

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, packageName:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 907
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 251
    sget v7, Lcom/baidu/launcher/thememanager/util/Utils;->sIconWidth:I

    .line 252
    .local v7, width:I
    sget v3, Lcom/baidu/launcher/thememanager/util/Utils;->sIconHeight:I

    .line 254
    .local v3, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 255
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 257
    .local v0, bitmapHeight:I
    if-lez v7, :cond_2

    if-lez v3, :cond_2

    .line 258
    int-to-float v8, v1

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 260
    .local v5, ratio:F
    if-le v1, v0, :cond_1

    .line 261
    int-to-float v8, v7

    div-float/2addr v8, v5

    float-to-int v3, v8

    .line 266
    :cond_0
    :goto_0
    sget v8, Lcom/baidu/launcher/thememanager/util/Utils;->sIconWidth:I

    sget v9, Lcom/baidu/launcher/thememanager/util/Utils;->sIconHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 268
    .local v6, thumb:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/baidu/launcher/thememanager/util/Utils;->sCanvas:Landroid/graphics/Canvas;

    .line 269
    .local v2, canvas:Landroid/graphics/Canvas;
    sget-object v4, Lcom/baidu/launcher/thememanager/util/Utils;->sPaint:Landroid/graphics/Paint;

    .line 270
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 272
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 273
    sget-object v8, Lcom/baidu/launcher/thememanager/util/Utils;->sBounds:Landroid/graphics/Rect;

    sget v9, Lcom/baidu/launcher/thememanager/util/Utils;->sIconWidth:I

    sget v10, Lcom/baidu/launcher/thememanager/util/Utils;->sIconHeight:I

    invoke-virtual {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 274
    sget-object v8, Lcom/baidu/launcher/thememanager/util/Utils;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v11, v11, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    sget-object v8, Lcom/baidu/launcher/thememanager/util/Utils;->sOldBounds:Landroid/graphics/Rect;

    sget-object v9, Lcom/baidu/launcher/thememanager/util/Utils;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v8, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 279
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v4           #paint:Landroid/graphics/Paint;
    .end local v5           #ratio:F
    .end local v6           #thumb:Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 262
    .restart local v5       #ratio:F
    :cond_1
    if-le v0, v1, :cond_0

    .line 263
    int-to-float v8, v3

    mul-float/2addr v8, v5

    float-to-int v7, v8

    goto :goto_0

    .end local v5           #ratio:F
    :cond_2
    move-object v6, p0

    .line 279
    goto :goto_1
.end method

.method public static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 196
    sget v8, Lcom/baidu/launcher/thememanager/util/Utils;->sIconWidth:I

    .line 197
    .local v8, width:I
    sget v2, Lcom/baidu/launcher/thememanager/util/Utils;->sIconHeight:I

    .line 199
    .local v2, height:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 200
    .local v4, iconWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 202
    .local v3, iconHeight:I
    instance-of v9, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v9, :cond_0

    move-object v5, p0

    .line 203
    check-cast v5, Landroid/graphics/drawable/PaintDrawable;

    .line 204
    .local v5, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 205
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 208
    .end local v5           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v8, :cond_2

    if-lez v2, :cond_2

    .line 209
    int-to-float v9, v4

    int-to-float v10, v3

    div-float v6, v9, v10

    .line 211
    .local v6, ratio:F
    if-le v4, v3, :cond_3

    .line 212
    int-to-float v9, v8

    div-float/2addr v9, v6

    float-to-int v2, v9

    .line 217
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 219
    .local v0, c:Landroid/graphics/Bitmap$Config;
    :goto_1
    sget v9, Lcom/baidu/launcher/thememanager/util/Utils;->sIconWidth:I

    sget v10, Lcom/baidu/launcher/thememanager/util/Utils;->sIconHeight:I

    invoke-static {v9, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 220
    .local v7, thumb:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/baidu/launcher/thememanager/util/Utils;->sCanvas:Landroid/graphics/Canvas;

    .line 221
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    sget-object v9, Lcom/baidu/launcher/thememanager/util/Utils;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    sget v9, Lcom/baidu/launcher/thememanager/util/Utils;->sIconWidth:I

    sub-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    sget v10, Lcom/baidu/launcher/thememanager/util/Utils;->sIconHeight:I

    sub-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0, v9, v10, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    sget-object v9, Lcom/baidu/launcher/thememanager/util/Utils;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p0, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p0
    move-object v9, p0

    .line 232
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 235
    .end local v0           #c:Landroid/graphics/Bitmap$Config;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v6           #ratio:F
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    :cond_2
    return-object p0

    .line 213
    .restart local v6       #ratio:F
    :cond_3
    if-le v3, v4, :cond_1

    .line 214
    int-to-float v9, v2

    mul-float/2addr v9, v6

    float-to-int v8, v9

    goto :goto_0

    .line 217
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private static createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 848
    const/4 v4, 0x0

    .line 850
    .local v4, reValue:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 852
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 853
    .local v3, oldWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 855
    .local v2, oldHeight:I
    int-to-float v7, p1

    int-to-float v8, v3

    div-float v6, v7, v8

    .line 856
    .local v6, sw:F
    int-to-float v7, p2

    int-to-float v8, v2

    div-float v5, v7, v8

    .line 858
    .local v5, sh:F
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 860
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 862
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 864
    sget-object v7, Lcom/baidu/launcher/thememanager/util/Utils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v9, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 866
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 867
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 868
    const/4 p0, 0x0

    .line 873
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #newBitmap:Landroid/graphics/Bitmap;
    .end local v2           #oldHeight:I
    .end local v3           #oldWidth:I
    .end local v5           #sh:F
    .end local v6           #sw:F
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1054
    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sUnComponentMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1055
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sUnComponentMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1067
    :goto_0
    return-object v1

    .line 1058
    :cond_0
    const/4 v1, 0x0

    .line 1059
    .local v1, app:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1061
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1062
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1064
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static final getBitmapFromBytes([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 320
    if-nez p0, :cond_0

    .line 325
    :goto_0
    return-object v1

    .line 323
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getCurrentProcessFromName(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 5
    .parameter "ctx"
    .parameter "process"

    .prologue
    .line 999
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1001
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1002
    .local v2, processList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1003
    .local v3, rInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1006
    .end local v3           #rInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getIconSize(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 780
    const/16 v0, 0x52

    .line 781
    .local v0, reValue:I
    if-eqz p0, :cond_0

    .line 783
    sget v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 787
    :cond_0
    return v0
.end method

.method public static getPathFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 987
    const-string v0, ""

    .line 988
    .local v0, mFilePath:Ljava/lang/String;
    const-string v1, ".mtz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".btp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 994
    :goto_0
    return-object v0

    .line 991
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mtz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "roundPx"

    .prologue
    const/4 v9, 0x0

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 290
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 292
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 294
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 296
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 298
    .local v5, rectF:Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 300
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 302
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    invoke-virtual {v0, v5, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 306
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 308
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 310
    return-object v2
.end method

.method public static getScreenRatio(Landroid/content/Context;)F
    .locals 5
    .parameter "context"

    .prologue
    .line 973
    sget v3, Lcom/baidu/launcher/thememanager/util/Utils;->screen_ratio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 974
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 976
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 977
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 978
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 980
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sput v3, Lcom/baidu/launcher/thememanager/util/Utils;->screen_ratio:F

    .line 983
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    sget v3, Lcom/baidu/launcher/thememanager/util/Utils;->screen_ratio:F

    return v3
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 959
    sget v2, Lcom/baidu/launcher/thememanager/util/Utils;->screen_width:I

    if-nez v2, :cond_0

    .line 960
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 962
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 963
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/baidu/launcher/thememanager/util/Utils;->screen_width:I

    .line 966
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    sget v2, Lcom/baidu/launcher/thememanager/util/Utils;->screen_width:I

    return v2
.end method

.method public static illegalPathFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 164
    move-object v3, p0

    .line 165
    .local v3, reValue:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 167
    .local v2, illegalArray:[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "("

    aput-object v5, v2, v4

    .line 168
    const/4 v4, 0x1

    const-string v5, ")"

    aput-object v5, v2, v4

    .line 169
    const/4 v4, 0x2

    const-string v5, " "

    aput-object v5, v2, v4

    .line 171
    const-string v0, "\\"

    .line 172
    .local v0, filterCharater:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 173
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 174
    aget-object v4, v2, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v0           #filterCharater:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #illegalArray:[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static declared-synchronized indexof(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter "aPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1240
    .local p0, aWallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;>;"
    const-class v3, Lcom/baidu/launcher/thememanager/util/Utils;

    monitor-enter v3

    const/4 v1, -0x1

    .line 1241
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1242
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmItemPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1243
    move v1, v0

    .line 1247
    :cond_0
    monitor-exit v3

    return v1

    .line 1241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1240
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized instance()Lcom/baidu/launcher/thememanager/util/Utils;
    .locals 2

    .prologue
    .line 105
    const-class v1, Lcom/baidu/launcher/thememanager/util/Utils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->mInstance:Lcom/baidu/launcher/thememanager/util/Utils;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/baidu/launcher/thememanager/util/Utils;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/util/Utils;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->mInstance:Lcom/baidu/launcher/thememanager/util/Utils;

    .line 108
    :cond_0
    sget-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->mInstance:Lcom/baidu/launcher/thememanager/util/Utils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isBaiduTheme(Ljava/lang/String;)Z
    .locals 6
    .parameter "ThemeName"

    .prologue
    .line 1101
    const/4 v4, 0x0

    .line 1102
    .local v4, reValue:Z
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1103
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->BAIDU_THEME_NAME:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1104
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1105
    const/4 v4, 0x1

    .line 1110
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    return v4

    .line 1103
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isIncludeNotLauncher(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, reValue:Z
    if-eqz p0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 919
    const-string v1, "lockscreen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fonts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lockwallpaper"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtones"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    :cond_0
    const/4 v0, 0x1

    .line 927
    :cond_1
    return v0
.end method

.method public static isPic(Ljava/lang/String;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRunningForeground(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1120
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1121
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1122
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, currentPackageName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1128
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public static isZipFormat(Ljava/lang/String;)Z
    .locals 13
    .parameter "path"

    .prologue
    .line 357
    const/4 v3, 0x0

    .line 359
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v9

    if-nez v9, :cond_2

    .line 362
    :cond_0
    const/4 v9, 0x0

    .line 397
    if-eqz v3, :cond_1

    .line 398
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    .end local v2           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return v9

    .line 400
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 401
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v4, p0, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 366
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-wide v9

    const-wide/16 v11, 0x16

    sub-long v5, v9, v11

    .line 367
    .local v5, scanOffset:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gez v9, :cond_4

    .line 368
    const/4 v9, 0x0

    .line 397
    if-eqz v4, :cond_3

    .line 398
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    move-object v3, v4

    .line 402
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 400
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 401
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 371
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    const-wide/32 v9, 0x10000

    sub-long v7, v5, v9

    .line 372
    .local v7, stopOffset:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_5

    .line 373
    const-wide/16 v7, 0x0

    .line 376
    :cond_5
    const v0, 0x6054b50

    .line 378
    .local v0, ENDHEADERMAGIC:I
    :cond_6
    :try_start_5
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 379
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    move-result v9

    const v10, 0x6054b50

    if-ne v9, v10, :cond_8

    .line 397
    if-eqz v4, :cond_7

    .line 398
    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 404
    :cond_7
    :goto_2
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 383
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_8
    const-wide/16 v9, 0x1

    sub-long/2addr v5, v9

    .line 384
    cmp-long v9, v5, v7

    if-gez v9, :cond_6

    .line 385
    const/4 v9, 0x0

    .line 397
    if-eqz v4, :cond_9

    .line 398
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    :goto_3
    move-object v3, v4

    .line 402
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 400
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v1

    .line 401
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 400
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 401
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 389
    .end local v0           #ENDHEADERMAGIC:I
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #scanOffset:J
    .end local v7           #stopOffset:J
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    .line 390
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 391
    const/4 v9, 0x0

    .line 397
    if-eqz v3, :cond_1

    .line 398
    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    .line 400
    :catch_5
    move-exception v1

    .line 401
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 393
    .restart local v1       #e:Ljava/io/IOException;
    :goto_5
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 394
    const/4 v9, 0x0

    .line 397
    if-eqz v3, :cond_1

    .line 398
    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 400
    :catch_7
    move-exception v1

    .line 401
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 396
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 397
    :goto_6
    if-eqz v3, :cond_a

    .line 398
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 402
    :cond_a
    :goto_7
    throw v9

    .line 400
    :catch_8
    move-exception v1

    .line 401
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 396
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 392
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 389
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method public static joinStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "seperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, srcList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 342
    :cond_0
    const/4 v0, 0x0

    .line 353
    :cond_1
    return-object v0

    .line 345
    :cond_2
    const-string v0, ""

    .line 346
    .local v0, des:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    .local v2, src:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static launcherDrawableInterceptor(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 25
    .parameter "ctx"
    .parameter "resID"

    .prologue
    .line 645
    sget-object v22, Lcom/baidu/launcher/thememanager/util/Utils;->iconBeans:Ljava/util/HashMap;

    if-eqz v22, :cond_9

    sget-object v22, Lcom/baidu/launcher/thememanager/util/Utils;->iconBeans:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    if-lez v22, :cond_9

    if-lez p1, :cond_9

    .line 646
    const-string v11, ""

    .line 647
    .local v11, filedName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 648
    .local v16, isIcon:Z
    const/16 v18, 0x0

    .line 649
    .local v18, real_path:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 677
    :try_start_0
    const-class v5, Lcom/baidu/home2/R$drawable;

    .line 678
    .local v5, clazz:Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 680
    .local v9, fields:[Ljava/lang/reflect/Field;
    move-object v2, v9

    .local v2, arr$:[Ljava/lang/reflect/Field;
    array-length v0, v2

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    aget-object v8, v2, v13

    .line 681
    .local v8, field:Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "int"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 682
    const-class v22, Lcom/baidu/home2/R$drawable;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 683
    .local v12, i:I
    move/from16 v0, p1

    if-ne v12, v0, :cond_3

    .line 684
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 685
    .local v19, resName:Ljava/lang/String;
    move-object/from16 v11, v19

    .line 699
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v5           #clazz:Ljava/lang/Class;
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v9           #fields:[Ljava/lang/reflect/Field;
    .end local v12           #i:I
    .end local v13           #i$:I
    .end local v17           #len$:I
    .end local v19           #resName:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    .line 701
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/util/Utils;->getIconSize(Landroid/content/Context;)I

    move-result v15

    .line 702
    .local v15, iconSize:I
    const/16 v20, 0x0

    .line 703
    .local v20, sb:Ljava/lang/StringBuffer;
    if-nez v16, :cond_4

    .line 704
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "com.baidu.home2/res/drawable-hdpi/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    .line 707
    sget v22, Lcom/baidu/launcher/app/LauncherApplication;->densityDpi:I

    sparse-switch v22, :sswitch_data_1

    .line 721
    :goto_2
    :sswitch_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 723
    const-string v22, ".png"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 761
    :cond_1
    :goto_3
    if-eqz v18, :cond_9

    .line 762
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 763
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_7

    .line 764
    const/4 v6, 0x0

    .line 776
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #filedName:Ljava/lang/String;
    .end local v15           #iconSize:I
    .end local v16           #isIcon:Z
    .end local v18           #real_path:Ljava/lang/String;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    :cond_2
    :goto_4
    return-object v6

    .line 651
    .restart local v11       #filedName:Ljava/lang/String;
    .restart local v16       #isIcon:Z
    .restart local v18       #real_path:Ljava/lang/String;
    :sswitch_1
    const-string v11, "com.android.contacts/.activities.dialtactsactivity"

    .line 652
    const/16 v16, 0x1

    .line 653
    goto :goto_1

    .line 655
    :sswitch_2
    const-string v11, "com.android.mms/.ui.conversationlist"

    .line 656
    const/16 v16, 0x1

    .line 657
    goto :goto_1

    .line 659
    :sswitch_3
    const-string v11, "com.android.browser/.browseractivity"

    .line 660
    const/16 v16, 0x1

    .line 661
    goto :goto_1

    .line 663
    :sswitch_4
    const-string v11, "com.android.contacts/.activities.peopleactivity"

    .line 664
    const/16 v16, 0x1

    .line 665
    goto :goto_1

    .line 667
    :sswitch_5
    const-string v11, "bg_accessory"

    .line 668
    goto :goto_1

    .line 670
    :sswitch_6
    const-string v11, "bg_masks"

    .line 671
    goto :goto_1

    .line 673
    :sswitch_7
    const-string v11, "ic_launcher_folder"

    .line 674
    goto :goto_1

    .line 680
    .restart local v2       #arr$:[Ljava/lang/reflect/Field;
    .restart local v5       #clazz:Ljava/lang/Class;
    .restart local v8       #field:Ljava/lang/reflect/Field;
    .restart local v9       #fields:[Ljava/lang/reflect/Field;
    .restart local v13       #i$:I
    .restart local v17       #len$:I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 690
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v5           #clazz:Ljava/lang/Class;
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v9           #fields:[Ljava/lang/reflect/Field;
    .end local v13           #i$:I
    .end local v17           #len$:I
    :catch_0
    move-exception v7

    .line 691
    .local v7, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 692
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 693
    .local v7, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 709
    .end local v7           #e:Ljava/lang/IllegalAccessException;
    .restart local v6       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v15       #iconSize:I
    .restart local v20       #sb:Ljava/lang/StringBuffer;
    :sswitch_8
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "com.baidu.home2/res/drawable-xhdpi/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    .line 712
    goto :goto_2

    .line 727
    :cond_4
    sget-object v22, Lcom/baidu/launcher/thememanager/util/Utils;->iconBeans:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 728
    .local v21, targetName:Ljava/lang/String;
    const-string v22, "launcherDrawableInterceptor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "filedName: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " targetName: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    if-eqz v21, :cond_1

    .line 731
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    .line 741
    const-string v22, ".png"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 742
    .local v14, iconPath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 744
    .restart local v10       #file:Ljava/io/File;
    new-instance v18, Ljava/lang/String;

    .end local v18           #real_path:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v18       #real_path:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_5

    .line 746
    const-string v22, "android"

    const-string v23, "baidu"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 747
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 749
    .restart local v10       #file:Ljava/io/File;
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_6

    .line 750
    const-string v22, "contacts\\.TwelveKeyDialer"

    const-string v23, "phone"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 752
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .restart local v10       #file:Ljava/io/File;
    :cond_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_1

    .line 755
    const-string v22, "android"

    const-string v23, "baidu"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "browser"

    const-string v24, "browser\\.apps"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 767
    .end local v14           #iconPath:Ljava/lang/String;
    .end local v21           #targetName:Ljava/lang/String;
    :cond_7
    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 769
    .local v3, bm:Landroid/graphics/Bitmap;
    invoke-static {v3, v15, v15}, Lcom/baidu/launcher/thememanager/util/Utils;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 770
    .local v4, bm1:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_8

    .line 771
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 772
    .restart local v6       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_8
    if-nez v6, :cond_2

    .line 776
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v4           #bm1:Landroid/graphics/Bitmap;
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #filedName:Ljava/lang/String;
    .end local v15           #iconSize:I
    .end local v16           #isIcon:Z
    .end local v18           #real_path:Ljava/lang/String;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 649
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f02003c -> :sswitch_5
        0x7f020043 -> :sswitch_6
        0x7f0200d7 -> :sswitch_3
        0x7f0200dc -> :sswitch_1
        0x7f0200de -> :sswitch_4
        0x7f0200e3 -> :sswitch_2
        0x7f0201f4 -> :sswitch_7
    .end sparse-switch

    .line 707
    :sswitch_data_1
    .sparse-switch
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_8
    .end sparse-switch
.end method

.method public static loadIconConfig(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    const/4 v3, 0x0

    .line 603
    .local v3, iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 607
    const v0, 0x7f050009

    .line 609
    .local v0, configID:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 611
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .local v2, eventCode:I
    move-object v4, v3

    .line 613
    .end local v3           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    .line 614
    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v3, v4

    .line 631
    .end local v4           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move-object v4, v3

    .end local v3           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 616
    :pswitch_1
    if-nez v4, :cond_0

    .line 617
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .end local v4           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 621
    .end local v3           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    const-string v6, "icon"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 623
    const/4 v6, 0x0

    const-string v7, "packageName"

    invoke-interface {v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "targetName"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .end local v4           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .end local v3           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v3, v4

    .line 641
    .end local v0           #configID:I
    .end local v2           #eventCode:I
    .end local v4           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .restart local v3       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_2
    return-object v3

    .line 635
    .restart local v0       #configID:I
    :catch_0
    move-exception v1

    .line 636
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 637
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 638
    .local v1, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 637
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #eventCode:I
    .restart local v4       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #parser:Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .line 635
    .end local v3           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "aInput"

    .prologue
    .line 120
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 122
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 125
    .local v2, messageDigest:[B
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/util/Utils;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 130
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #messageDigest:[B
    :goto_0
    return-object v3

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 130
    const-string v3, "NUHC"

    goto :goto_0
.end method

.method public static notifyFileScanner(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "filePath"

    .prologue
    .line 1210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1211
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1212
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1213
    return-void
.end method

.method private static obtainComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 878
    if-eqz p0, :cond_2

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 879
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 881
    .local v3, pos:I
    if-lez v3, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, pack:Ljava/lang/String;
    :goto_0
    const-string v6, ""

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 885
    .local v4, tmp:Ljava/lang/String;
    const/4 v2, 0x0

    .line 886
    .local v2, packAndActivity:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 888
    const-string v6, "/"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 893
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 894
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    .end local v1           #pack:Ljava/lang/String;
    .end local v2           #packAndActivity:Ljava/lang/String;
    .end local v3           #pos:I
    .end local v4           #tmp:Ljava/lang/String;
    :goto_2
    return-object v0

    .restart local v3       #pos:I
    :cond_0
    move-object v1, v5

    .line 881
    goto :goto_0

    .line 890
    .restart local v1       #pack:Ljava/lang/String;
    .restart local v2       #packAndActivity:Ljava/lang/String;
    .restart local v4       #tmp:Ljava/lang/String;
    :cond_1
    move-object v2, v4

    goto :goto_1

    .end local v1           #pack:Ljava/lang/String;
    .end local v2           #packAndActivity:Ljava/lang/String;
    .end local v3           #pos:I
    .end local v4           #tmp:Ljava/lang/String;
    :cond_2
    move-object v0, v5

    .line 898
    goto :goto_2
.end method

.method public static parameterFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "param"

    .prologue
    .line 510
    move-object v2, p0

    .line 511
    .local v2, reValue:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, ":"

    const-string v5, ":"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v4, "?"

    const-string v5, "?"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v4, "*"

    const-string v5, "*"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v4, "\""

    const-string v5, "\""

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v4, "\\"

    const-string v5, "\\"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v4, "/"

    const-string v5, "/"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v4, "|"

    const-string v5, "|"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v4, "<"

    const-string v5, "<"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v4, ">"

    const-string v5, ">"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 524
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 525
    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 529
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static releaseBitmap(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V
    .locals 3
    .parameter "bitmapDrawable"
    .parameter "key"

    .prologue
    .line 938
    if-nez p1, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getDefaultBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getDefaultBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static revertStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "src"

    .prologue
    .line 330
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, p0

    .line 337
    :cond_1
    return-object v0

    .line 333
    :cond_2
    const-string v0, ""

    .line 334
    .local v0, des:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, index:I
    :goto_0
    if-ltz v1, :cond_1

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static safePositiveInteger(Ljava/lang/String;)I
    .locals 2
    .parameter "intValue"

    .prologue
    .line 1018
    const/4 v1, 0x0

    .line 1020
    .local v1, value:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1021
    if-gez v1, :cond_0

    .line 1022
    const/4 v1, 0x0

    .line 1028
    :cond_0
    :goto_0
    return v1

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1026
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static safePositiveLong(Ljava/lang/String;)J
    .locals 5
    .parameter "longValue"

    .prologue
    .line 1039
    const-wide/16 v1, 0x0

    .line 1041
    .local v1, value:J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1042
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1043
    const-wide/16 v1, 0x0

    .line 1049
    :cond_0
    :goto_0
    return-wide v1

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1047
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "action"

    .prologue
    .line 483
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setButton(Landroid/content/Context;Landroid/widget/Button;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "aContext"
    .parameter "aButton"
    .parameter "aState"
    .parameter "title"
    .parameter "version"
    .parameter "aType"
    .parameter "aPercent"

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 425
    .local v0, buttonState:I
    invoke-static {p0, p3, p4}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->checkThemeExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 426
    .local v1, count:I
    if-lez v1, :cond_1

    .line 427
    const/4 v0, 0x4

    .line 441
    :goto_1
    invoke-static {p0, p1, v0, p5, p6}, Lcom/baidu/launcher/thememanager/util/Utils;->setButtonState(Landroid/content/Context;Landroid/widget/Button;III)V

    goto :goto_0

    .line 429
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    .line 431
    :sswitch_0
    const/4 v0, 0x3

    .line 432
    goto :goto_1

    .line 434
    :sswitch_1
    const/4 v0, 0x2

    .line 435
    goto :goto_1

    .line 437
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_2
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method public static setButtonState(Landroid/content/Context;Landroid/widget/Button;III)V
    .locals 4
    .parameter "aContext"
    .parameter "aButton"
    .parameter "aState"
    .parameter "aType"
    .parameter "aPercent"

    .prologue
    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, label:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v2, p3, :cond_3

    .line 456
    sget-object v2, Lcom/baidu/launcher/thememanager/util/Utils;->DOWNLOAD_BUTTON_LABEL_DETAIL:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    :goto_0
    sget-object v2, Lcom/baidu/launcher/thememanager/util/Utils;->DOWNLOAD_BUTTON_STATE:[Z

    aget-boolean v0, v2, p2

    .line 462
    .local v0, enable:Z
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 471
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 473
    :cond_2
    return-void

    .line 458
    .end local v0           #enable:Z
    :cond_3
    sget-object v2, Lcom/baidu/launcher/thememanager/util/Utils;->DOWNLOAD_BUTTON_LABEL_LIST:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setWallpaperFromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "ctx"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1192
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 1193
    .local v5, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1195
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1196
    .local v3, maxDim:I
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1197
    .local v4, minDim:I
    mul-int/lit8 v2, v4, 0x2

    .line 1198
    .local v2, mWallpaperWidth:I
    move v1, v3

    .line 1199
    .local v1, mWallpaperHeight:I
    invoke-virtual {v5, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 1200
    invoke-static {p0, p1}, Lcom/baidu/launcher/utils/Utilities;->rescaleBitmapForWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1202
    return-void
.end method

.method public static themeInit(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->cache_dir:Ljava/lang/String;

    .line 597
    sget-object v0, Lcom/baidu/launcher/thememanager/util/Utils;->cache_dir:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->init(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public static themeInit_iconBean(Landroid/content/Context;)I
    .locals 18
    .parameter "ctx"

    .prologue
    .line 535
    const/4 v13, 0x0

    .line 536
    .local v13, isApply:I
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/util/Utils;->loadIconConfig(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/thememanager/util/Utils;->iconBeans:Ljava/util/HashMap;

    .line 538
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 539
    .local v16, pref:Landroid/content/SharedPreferences;
    const-string v1, "first_launch"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 540
    .local v10, first_launcher:Z
    if-eqz v10, :cond_0

    .line 550
    const/4 v13, 0x1

    .line 551
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 552
    .local v9, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "first_launch"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v15

    .line 555
    .local v15, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 556
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 558
    .local v14, p:Landroid/content/pm/PackageInfo;
    iget-object v1, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.baidu.launcher.theme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 559
    const/16 v17, 0x0

    .line 560
    .local v17, start_apply:I
    const/4 v7, 0x0

    .line 562
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 565
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 567
    const-string v1, "FileProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start_apply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_1

    .line 570
    const/4 v13, -0x1

    .line 575
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 576
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.thememanager.ui.open_apply"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-class v1, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 578
    const-string v1, "data"

    iget-object v2, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    if-eqz v7, :cond_0

    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 593
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v11           #i:I
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #p:Landroid/content/pm/PackageInfo;
    .end local v15           #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v17           #start_apply:I
    :cond_0
    return v13

    .line 586
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v11       #i:I
    .restart local v14       #p:Landroid/content/pm/PackageInfo;
    .restart local v15       #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17       #start_apply:I
    :cond_1
    if-eqz v7, :cond_2

    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 555
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v17           #start_apply:I
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 583
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v17       #start_apply:I
    :catch_0
    move-exception v8

    .line 584
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    if-eqz v7, :cond_2

    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 586
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static themeScannerTrigger(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.baidu.theme.app.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-class v1, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 480
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 3
    .parameter "buf"

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    const-string v2, ""

    .line 140
    :goto_0
    return-object v2

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 137
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 138
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Utils;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
