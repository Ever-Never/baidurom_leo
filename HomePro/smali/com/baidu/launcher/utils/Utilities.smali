.class public final Lcom/baidu/launcher/utils/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final BULLETIN_SCREEN_COUNT:I = 0x1

.field public static DEFAULT_SCREEN:I = 0x0

.field private static final FOLDER_GAME:Ljava/lang/String; = "\u6e38\u620f"

.field private static final FOLDER_PLAYER:Ljava/lang/String; = "\u5f71\u97f3"

.field private static final FOLDER_SOCIAL:Ljava/lang/String; = "\u793e\u4ea4"

.field private static final FOLDER_TOOL:Ljava/lang/String; = "\u5de5\u5177"

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final ICON_BG_BG:I = 0x2

.field private static final ICON_BG_BOARD:I = 0x0

.field private static final ICON_BG_MASK:I = 0x1

.field private static ICON_L_PADDING:I = 0x0

.field private static ICON_L_SPACING:I = 0x0

.field private static final KEY_DEFAULT_SCREEN:Ljava/lang/String; = "default_screen"

.field private static final KEY_SCREEN_COUNT:Ljava/lang/String; = "screen_count"

.field public static final MAX_ICON:I = 0x4

.field private static final MULTI_THEME_FILE_PATH:Ljava/lang/String; = "/data/data/com.baidu.thememanager.ui/files/icons/"

.field private static final MULTI_THEME_ICONCACHE_FILE_PATH:Ljava/lang/String; = "/data/data/com.baidu.thememanager.ui/files/com.baidu.home2/res/"

.field public static NUMBER_CELLS_X:I = 0x0

.field public static NUMBER_CELLS_Y:I = 0x0

.field public static SCREEN_COUNT:I = 0x0

.field private static final TEXT_BURN:Z = false

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static disable:Landroid/graphics/drawable/Drawable;

.field private static errorBg:Landroid/graphics/drawable/Drawable;

.field private static folderHighlight:Landroid/graphics/drawable/Drawable;

.field private static hide:Landroid/graphics/drawable/Drawable;

.field private static iconBgType:I

.field private static mAccessoryBg:Landroid/graphics/drawable/Drawable;

.field private static mBg:Landroid/graphics/drawable/Drawable;

.field private static mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

.field private static mEmptyDockIcon:Landroid/graphics/Bitmap;

.field private static mFolderPic:Landroid/graphics/drawable/Drawable;

.field private static mMaskBg:Landroid/graphics/drawable/Drawable;

.field private static numberBg:Landroid/graphics/drawable/Drawable;

.field private static phoneDensity:I

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static sDockIconShadowGap:I

.field private static sDockIconShadowHeight:I

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconSystemSize:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;

.field private static smallAddBackground:Landroid/graphics/drawable/Drawable;

.field private static smallBackground:Landroid/graphics/drawable/Drawable;

.field public static useShadow:Z

.field private static widgetCell:Landroid/graphics/Bitmap;

.field private static widgetCellHighlight:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v3, -0x1

    .line 101
    sput v6, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    .line 102
    sput-boolean v5, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    .line 108
    sput v3, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowHeight:I

    .line 109
    sput v3, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowGap:I

    .line 110
    sput v3, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    .line 111
    sput v3, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    .line 112
    sput v3, Lcom/baidu/launcher/utils/Utilities;->sIconTextureWidth:I

    .line 113
    sput v3, Lcom/baidu/launcher/utils/Utilities;->sIconTextureHeight:I

    .line 114
    sput v3, Lcom/baidu/launcher/utils/Utilities;->sIconSystemSize:I

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 124
    new-instance v0, Lcom/baidu/launcher/utils/Matcher;

    invoke-direct {v0}, Lcom/baidu/launcher/utils/Matcher;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/Utilities;->mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

    .line 150
    sput v3, Lcom/baidu/launcher/utils/Utilities;->phoneDensity:I

    .line 152
    sget-object v0, Lcom/baidu/launcher/utils/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 710
    sput v3, Lcom/baidu/launcher/utils/Utilities;->ICON_L_PADDING:I

    .line 711
    sput v3, Lcom/baidu/launcher/utils/Utilities;->ICON_L_SPACING:I

    .line 864
    sput v4, Lcom/baidu/launcher/utils/Utilities;->SCREEN_COUNT:I

    .line 865
    sput v4, Lcom/baidu/launcher/utils/Utilities;->NUMBER_CELLS_X:I

    .line 866
    sput v4, Lcom/baidu/launcher/utils/Utilities;->NUMBER_CELLS_Y:I

    .line 867
    sput v5, Lcom/baidu/launcher/utils/Utilities;->DEFAULT_SCREEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlackEdgeForIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "icon"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 1006
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020217

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1007
    .local v0, blackEdge:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #blackEdge:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1008
    .local v3, shadowBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1009
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1010
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, p0, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1011
    return-object v3
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 934
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

    .line 935
    return-void
.end method

.method public static canDelete(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 4
    .parameter "context"
    .parameter "dragInfo"

    .prologue
    const/4 v3, 0x0

    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, pkgName:Ljava/lang/String;
    instance-of v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 689
    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v2, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 696
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 690
    .restart local p1
    :cond_1
    check-cast p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p1
    iget-object v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 691
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 696
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    :goto_1
    invoke-static {p0, v1}, Lcom/baidu/launcher/utils/Utilities;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move v3, v2

    goto :goto_0

    .line 693
    .restart local p1
    :cond_3
    instance-of v2, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_2

    .line 694
    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p1
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 696
    goto :goto_2
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 33
    .parameter "icon"
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 161
    sget-object v27, Lcom/baidu/launcher/utils/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v27

    .line 162
    :try_start_0
    sget v26, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    const/16 v28, -0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 163
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/utils/Utilities;->initStatics(Landroid/content/Context;)V

    .line 165
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 166
    .local v19, res:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 167
    .local v9, drawBg:Z
    sget v25, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    .line 168
    .local v25, width:I
    sget v10, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    .line 170
    .local v10, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    .line 171
    .local v21, sourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    .line 193
    .local v20, sourceHeight:I
    if-lez v20, :cond_1

    if-gtz v20, :cond_2

    .line 194
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v28, 0x7f020108

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 203
    :cond_2
    sget v26, Lcom/baidu/launcher/utils/Utilities;->phoneDensity:I

    const/16 v28, -0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 204
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getPhoneDensityDpi(Landroid/content/Context;)I

    move-result v26

    sput v26, Lcom/baidu/launcher/utils/Utilities;->phoneDensity:I

    .line 206
    :cond_3
    const-string v26, "/data/data/com.baidu.thememanager.ui/files/icons/"

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/StorageUtil;->isDirExists(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_10

    if-eqz p2, :cond_10

    .line 207
    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 208
    const/4 v14, 0x0

    .line 209
    .local v14, multiThemeIconCachePath:Ljava/lang/String;
    sget v26, Lcom/baidu/launcher/utils/Utilities;->phoneDensity:I

    sparse-switch v26, :sswitch_data_0

    .line 231
    new-instance v14, Ljava/lang/String;

    .end local v14           #multiThemeIconCachePath:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.baidu.thememanager.ui/files/com.baidu.home2/res/drawable/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ".png"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v14       #multiThemeIconCachePath:Ljava/lang/String;
    :goto_0
    invoke-static {v14}, Lcom/baidu/launcher/utils/StorageUtil;->isPathExists(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 236
    add-int/lit8 v26, v21, 0x1

    sget v28, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    add-int/lit8 v26, v20, 0x1

    sget v28, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 237
    :cond_4
    sget v21, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v25, v21

    .line 238
    sget v20, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    move/from16 v10, v20

    .line 242
    :goto_1
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    .line 270
    .end local v14           #multiThemeIconCachePath:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v26, v0

    if-eqz v26, :cond_14

    .line 271
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object/from16 v16, v0

    .line 272
    .local v16, painter:Landroid/graphics/drawable/PaintDrawable;
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 273
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 283
    .end local v16           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_6
    :goto_3
    if-lez v21, :cond_8

    if-lez v20, :cond_8

    .line 285
    move/from16 v0, v25

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    move/from16 v0, v20

    if-ge v10, v0, :cond_8

    .line 287
    :cond_7
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v17, v26, v28

    .line 288
    .local v17, ratio:F
    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_15

    .line 289
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v17

    move/from16 v0, v26

    float-to-int v10, v0

    .line 310
    .end local v17           #ratio:F
    :cond_8
    :goto_4
    sget v23, Lcom/baidu/launcher/utils/Utilities;->sIconTextureWidth:I

    .line 311
    .local v23, textureWidth:I
    sget v22, Lcom/baidu/launcher/utils/Utilities;->sIconTextureHeight:I

    .line 313
    .local v22, textureHeight:I
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 315
    .local v6, bitmap:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/baidu/launcher/utils/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 316
    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    if-eqz v9, :cond_9

    .line 319
    new-instance v18, Landroid/graphics/Rect;

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 320
    .local v18, rect:Landroid/graphics/Rect;
    sget v26, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    const/16 v28, 0x2

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 321
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    if-nez v26, :cond_16

    const v26, 0x7f020034

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    :goto_5
    sput-object v26, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    .line 322
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 323
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 353
    .end local v18           #rect:Landroid/graphics/Rect;
    :cond_9
    :goto_6
    sub-int v26, v23, v25

    div-int/lit8 v11, v26, 0x2

    .line 354
    .local v11, left:I
    sub-int v26, v22, v10

    div-int/lit8 v24, v26, 0x2

    .line 365
    .local v24, top:I
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 366
    if-eqz v9, :cond_a

    .line 367
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Paint;->reset()V

    .line 368
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    new-instance v28, Landroid/graphics/PorterDuffXfermode;

    sget-object v29, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v28 .. v29}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 370
    const/16 v26, 0x0

    sget-object v28, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    const/16 v29, 0x1f

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 373
    :cond_a
    if-eqz v9, :cond_1c

    sget v26, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_1c

    sget v26, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    const/16 v28, 0x52

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_1c

    .line 374
    add-int/lit8 v26, v11, -0x4

    add-int/lit8 v28, v24, -0x4

    add-int v29, v11, v25

    add-int/lit8 v29, v29, 0x4

    add-int v30, v24, v10

    add-int/lit8 v30, v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    if-eqz v9, :cond_b

    .line 381
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 382
    sget v26, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 383
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    if-nez v26, :cond_1d

    const v26, 0x7f02003c

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    :goto_8
    sput-object v26, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    .line 384
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    new-instance v28, Landroid/graphics/Rect;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 385
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 389
    :cond_b
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 391
    monitor-exit v27

    return-object v6

    .line 211
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v11           #left:I
    .end local v22           #textureHeight:I
    .end local v23           #textureWidth:I
    .end local v24           #top:I
    .restart local v14       #multiThemeIconCachePath:Ljava/lang/String;
    :sswitch_0
    new-instance v14, Ljava/lang/String;

    .end local v14           #multiThemeIconCachePath:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.baidu.thememanager.ui/files/com.baidu.home2/res/drawable-ldpi/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ".png"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v14       #multiThemeIconCachePath:Ljava/lang/String;
    goto/16 :goto_0

    .line 215
    :sswitch_1
    new-instance v14, Ljava/lang/String;

    .end local v14           #multiThemeIconCachePath:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.baidu.thememanager.ui/files/com.baidu.home2/res/drawable-mdpi/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ".png"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v14       #multiThemeIconCachePath:Ljava/lang/String;
    goto/16 :goto_0

    .line 219
    :sswitch_2
    new-instance v14, Ljava/lang/String;

    .end local v14           #multiThemeIconCachePath:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.baidu.thememanager.ui/files/com.baidu.home2/res/drawable-hdpi/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ".png"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v14       #multiThemeIconCachePath:Ljava/lang/String;
    goto/16 :goto_0

    .line 223
    :sswitch_3
    new-instance v14, Ljava/lang/String;

    .end local v14           #multiThemeIconCachePath:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.baidu.thememanager.ui/files/com.baidu.home2/res/drawable-xhdpi/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ".png"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v14       #multiThemeIconCachePath:Ljava/lang/String;
    goto/16 :goto_0

    .line 227
    :sswitch_4
    new-instance v14, Ljava/lang/String;

    .end local v14           #multiThemeIconCachePath:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.baidu.thememanager.ui/files/com.baidu.home2/res/drawable-xxhdpi/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ".png"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v14       #multiThemeIconCachePath:Ljava/lang/String;
    goto/16 :goto_0

    .line 240
    :cond_c
    sget v10, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v25, v10

    goto/16 :goto_1

    .line 245
    .end local v14           #multiThemeIconCachePath:Ljava/lang/String;
    :cond_d
    new-instance v15, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.baidu.thememanager.ui/files/icons/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ".png"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 247
    .local v15, multiThemeIconPath:Ljava/lang/String;
    invoke-static {v15}, Lcom/baidu/launcher/utils/StorageUtil;->isPathExists(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "com.android.calendar"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 248
    add-int/lit8 v26, v21, 0x1

    sget v28, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    add-int/lit8 v26, v20, 0x1

    sget v28, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 249
    :cond_e
    sget v21, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v25, v21

    .line 250
    sget v20, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    move/from16 v10, v20

    .line 254
    :goto_9
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    goto/16 :goto_2

    .line 252
    :cond_f
    sget v10, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v25, v10

    goto :goto_9

    .line 258
    .end local v15           #multiThemeIconPath:Ljava/lang/String;
    :cond_10
    sget v26, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    sget v28, Lcom/baidu/launcher/utils/Utilities;->sIconSystemSize:I

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    sget v26, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    sget v26, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 259
    :cond_11
    add-int/lit8 v26, v21, 0x1

    sget v28, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_12

    add-int/lit8 v26, v20, 0x1

    sget v28, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 260
    :cond_12
    sget v21, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v25, v21

    .line 261
    sget v20, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    move/from16 v10, v20

    .line 265
    :goto_a
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    goto/16 :goto_2

    .line 263
    :cond_13
    sget v10, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v25, v10

    goto :goto_a

    .line 274
    :cond_14
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 276
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v0

    .line 277
    .local v7, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 278
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v26

    if-nez v26, :cond_6

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_3

    .line 392
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #drawBg:Z
    .end local v10           #height:I
    .end local v19           #res:Landroid/content/res/Resources;
    .end local v20           #sourceHeight:I
    .end local v21           #sourceWidth:I
    .end local v25           #width:I
    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 290
    .restart local v9       #drawBg:Z
    .restart local v10       #height:I
    .restart local v17       #ratio:F
    .restart local v19       #res:Landroid/content/res/Resources;
    .restart local v20       #sourceHeight:I
    .restart local v21       #sourceWidth:I
    .restart local v25       #width:I
    :cond_15
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 291
    int-to-float v0, v10

    move/from16 v26, v0

    mul-float v26, v26, v17

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    goto/16 :goto_4

    .line 321
    .end local v17           #ratio:F
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    .restart local v18       #rect:Landroid/graphics/Rect;
    .restart local v22       #textureHeight:I
    .restart local v23       #textureWidth:I
    :cond_16
    :try_start_1
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 324
    :cond_17
    sget v26, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 325
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    if-nez v26, :cond_18

    const v26, 0x7f020043

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    :goto_b
    sput-object v26, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    .line 326
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 327
    .local v13, maskW:I
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 328
    .local v12, maskH:I
    sub-int v26, v23, v13

    div-int/lit8 v11, v26, 0x2

    .line 329
    .restart local v11       #left:I
    sub-int v26, v22, v12

    div-int/lit8 v24, v26, 0x2

    .line 330
    .restart local v24       #top:I
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Paint;->reset()V

    .line 332
    sget v26, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    const/16 v28, 0x52

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_19

    .line 333
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    new-instance v28, Landroid/graphics/Rect;

    add-int/lit8 v29, v11, -0x4

    add-int/lit8 v30, v24, -0x4

    add-int v31, v11, v13

    add-int/lit8 v31, v31, 0x4

    add-int v32, v24, v12

    add-int/lit8 v32, v32, 0x4

    invoke-direct/range {v28 .. v32}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 337
    :goto_c
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 325
    .end local v11           #left:I
    .end local v12           #maskH:I
    .end local v13           #maskW:I
    .end local v24           #top:I
    :cond_18
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    .line 335
    .restart local v11       #left:I
    .restart local v12       #maskH:I
    .restart local v13       #maskW:I
    .restart local v24       #top:I
    :cond_19
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    new-instance v28, Landroid/graphics/Rect;

    add-int v29, v11, v13

    add-int v30, v24, v12

    move-object/from16 v0, v28

    move/from16 v1, v24

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_c

    .line 340
    .end local v11           #left:I
    .end local v12           #maskH:I
    .end local v13           #maskW:I
    .end local v24           #top:I
    :cond_1a
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/utils/Matcher;->getMatchedBitmapByEdge(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 342
    .local v5, bg:Landroid/graphics/Bitmap;
    if-nez v5, :cond_1b

    .line 343
    const v26, 0x7f020048

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    check-cast v26, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 345
    :cond_1b
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Paint;->reset()V

    .line 346
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 347
    const/16 v26, 0x0

    sget-object v28, Lcom/baidu/launcher/utils/Utilities;->sPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-virtual {v8, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 348
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 376
    .end local v5           #bg:Landroid/graphics/Bitmap;
    .end local v18           #rect:Landroid/graphics/Rect;
    .restart local v11       #left:I
    .restart local v24       #top:I
    :cond_1c
    add-int v26, v11, v25

    add-int v28, v24, v10

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_7

    .line 383
    :cond_1d
    sget-object v26, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method public static createReflectedBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "bm"
    .parameter "context"

    .prologue
    .line 590
    sget v2, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowHeight:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 591
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/utils/Utilities;->initStatics(Landroid/content/Context;)V

    .line 593
    :cond_0
    sget v6, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowHeight:I

    .line 595
    .local v6, reflectionHeight:I
    sget v20, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowGap:I

    .line 597
    .local v20, reflectionGap:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 598
    .local v5, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 600
    .local v18, height:I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 601
    .local v7, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 604
    const/4 v3, 0x0

    sub-int v4, v18, v6

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 608
    .local v21, reflectionImage:Landroid/graphics/Bitmap;
    add-int v2, v18, v6

    add-int v2, v2, v20

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 613
    .local v16, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 615
    .local v17, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 620
    const/4 v2, 0x0

    add-int v3, v18, v20

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 623
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 624
    .local v19, paint:Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v10, v2

    const/4 v11, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v20

    int-to-float v12, v2

    const v13, 0x70ffffff

    const v14, 0xffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 628
    .local v8, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 630
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 632
    const/4 v10, 0x0

    add-int v2, v18, v20

    int-to-float v11, v2

    int-to-float v12, v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v13, v2

    move-object/from16 v9, v17

    move-object/from16 v14, v19

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 634
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 635
    return-object v16
.end method

.method public static createReflectedBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bm"
    .parameter "context"
    .parameter "b"

    .prologue
    const/4 v8, 0x0

    .line 638
    sget v6, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 639
    invoke-static {p1}, Lcom/baidu/launcher/utils/Utilities;->initStatics(Landroid/content/Context;)V

    .line 641
    :cond_0
    sget v4, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowHeight:I

    .line 643
    .local v4, reflectionHeight:I
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowGap:I

    .line 645
    .local v3, reflectionGap:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 646
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 656
    .local v2, height:I
    add-int v6, v2, v4

    add-int/2addr v6, v3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 661
    .local v0, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 663
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v1, p0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 683
    return-object v0
.end method

.method public static getAppIconSize()I
    .locals 1

    .prologue
    .line 583
    sget v0, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    return v0
.end method

.method public static getApplistBG(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "aFileName"

    .prologue
    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system/etc/baidu/BaiduLauncher/configuration/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 969
    return-object v0
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 984
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 985
    .local v2, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 986
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 987
    .local v3, text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 988
    const-string v4, "Hardware"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1002
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #text:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 997
    :catch_0
    move-exception v1

    .line 998
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1002
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 999
    :catch_1
    move-exception v1

    .line 1000
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCurrentDay()I
    .locals 4

    .prologue
    .line 973
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 974
    .local v0, t:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 975
    const/4 v1, 0x1

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getDisableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 539
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->disable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 541
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->disable:Landroid/graphics/drawable/Drawable;

    .line 543
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->disable:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public static getEventErrorBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 574
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->errorBg:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 576
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->errorBg:Landroid/graphics/drawable/Drawable;

    .line 577
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->errorBg:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 579
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->errorBg:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public static getEventNumberBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 565
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->numberBg:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 567
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->numberBg:Landroid/graphics/drawable/Drawable;

    .line 568
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->numberBg:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 570
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->numberBg:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public static getFolderHighlight(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 524
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->folderHighlight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 526
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->folderHighlight:Landroid/graphics/drawable/Drawable;

    .line 528
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->folderHighlight:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public static getFolderPicture(Landroid/content/Context;Lcom/baidu/launcher/data/item/IFolderInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "folderInfo"
    .parameter "highlight"

    .prologue
    .line 717
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/launcher/utils/Utilities;->getFolderScalePicture(Landroid/content/Context;Lcom/baidu/launcher/data/item/IFolderInfo;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderScalePicture(Landroid/content/Context;Lcom/baidu/launcher/data/item/IFolderInfo;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 46
    .parameter "context"
    .parameter "folderInfo"
    .parameter "highlight"
    .parameter "scale"

    .prologue
    .line 721
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 722
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/utils/Utilities;->initStatics(Landroid/content/Context;)V

    .line 724
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 725
    .local v36, res:Landroid/content/res/Resources;
    invoke-interface/range {p1 .. p1}, Lcom/baidu/launcher/data/item/IFolderInfo;->getSize()I

    move-result v42

    .line 726
    .local v42, size:I
    sget-object v3, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 727
    const v3, 0x7f0201f4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    .line 730
    :cond_1
    sget-object v3, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 731
    sget-object v3, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v35

    .line 732
    .local v35, picWidth:I
    sget-object v3, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v34

    .line 733
    .local v34, picHeight:I
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    sget v4, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 734
    .local v22, folderPic:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 735
    .local v18, canvas:Landroid/graphics/Canvas;
    if-nez p2, :cond_4

    .line 736
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->save()I

    .line 737
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_2

    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    move/from16 v0, v34

    if-eq v3, v0, :cond_3

    .line 738
    :cond_2
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    int-to-float v3, v3

    move/from16 v0, v35

    int-to-float v4, v0

    div-float/2addr v3, v4

    sget v4, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    int-to-float v4, v4

    move/from16 v0, v34

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 740
    :cond_3
    sget-object v3, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 741
    sget-object v3, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 742
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->restore()V

    .line 744
    :cond_4
    const/16 v38, 0x3

    .line 745
    .local v38, row_num:I
    sget v27, Lcom/baidu/launcher/utils/Utilities;->ICON_L_PADDING:I

    .line 746
    .local v27, folder_icon_x:I
    sget v28, Lcom/baidu/launcher/utils/Utilities;->ICON_L_PADDING:I

    .line 747
    .local v28, folder_icon_y:I
    sget v23, Lcom/baidu/launcher/utils/Utilities;->ICON_L_SPACING:I

    .line 748
    .local v23, folder_icon_h:I
    sget v26, Lcom/baidu/launcher/utils/Utilities;->ICON_L_SPACING:I

    .line 749
    .local v26, folder_icon_v:I
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    sget v4, Lcom/baidu/launcher/utils/Utilities;->ICON_L_SPACING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    sub-int v3, v3, v27

    div-int v24, v3, v38

    .line 751
    .local v24, folder_icon_size:I
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    mul-int v4, v24, v38

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v23, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v27, v3, 0x2

    .line 752
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    mul-int v4, v24, v38

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v26, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v28, v3, 0x2

    .line 754
    add-int v3, v24, v23

    mul-int/lit8 v3, v3, 0x2

    add-int v44, v27, v3

    .line 755
    .local v44, x:I
    move/from16 v45, v28

    .line 756
    .local v45, y:I
    sget v3, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    sub-int v3, v3, v27

    div-int/lit8 v20, v3, 0x9

    .line 757
    .local v20, delta:I
    move/from16 v16, v44

    .local v16, baseX:I
    move/from16 v17, v45

    .line 758
    .local v17, baseY:I
    add-int/lit8 v30, v42, -0x1

    .local v30, i:I
    :goto_0
    if-ltz v30, :cond_8

    .line 759
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/baidu/launcher/data/item/IFolderInfo;->get(I)Lcom/baidu/launcher/data/item/BaseItemInfo;

    move-result-object v32

    .line 760
    .local v32, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    const/4 v3, 0x4

    move/from16 v0, v30

    if-lt v0, v3, :cond_5

    .line 758
    .end local v32           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :goto_1
    add-int/lit8 v30, v30, -0x1

    goto :goto_0

    .line 762
    .restart local v32       #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_5
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 763
    .local v6, originW:I
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 764
    .local v7, originH:I
    rsub-int/lit8 v3, v30, 0x4

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v20

    add-int v3, v3, v24

    int-to-float v0, v3

    move/from16 v25, v0

    .line 765
    .local v25, folder_icon_size_scaled:F
    int-to-float v3, v6

    div-float v41, v25, v3

    .line 766
    .local v41, scaleW:F
    int-to-float v3, v7

    div-float v40, v25, v3

    .line 767
    .local v40, scaleH:F
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 768
    .local v8, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 770
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 773
    .local v39, s:Landroid/graphics/Bitmap;
    rsub-int/lit8 v3, v30, 0x4

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    mul-int v3, v3, v20

    sub-int v44, v16, v3

    .line 774
    rsub-int/lit8 v3, v30, 0x4

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v20

    add-int v45, v17, v3

    .line 776
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    move-object/from16 v0, v32

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_6

    move-object/from16 v3, v32

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-boolean v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-nez v3, :cond_6

    .line 778
    new-instance v33, Landroid/graphics/Paint;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Paint;-><init>()V

    .line 779
    .local v33, paint:Landroid/graphics/Paint;
    const/16 v3, 0xff

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 780
    move/from16 v0, v44

    int-to-float v3, v0

    move/from16 v0, v45

    int-to-float v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 783
    .local v37, res1:Landroid/content/res/Resources;
    const v3, 0x7f02025e

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 784
    .local v9, bmp:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 785
    .local v29, hideEye:Landroid/graphics/Bitmap;
    move/from16 v0, v44

    int-to-float v3, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v6, v4

    int-to-float v4, v4

    mul-float v4, v4, v41

    add-float/2addr v3, v4

    move/from16 v0, v45

    int-to-float v4, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v7, v5

    int-to-float v5, v5

    mul-float v5, v5, v40

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 786
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 787
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->recycle()V

    .line 803
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v29           #hideEye:Landroid/graphics/Bitmap;
    .end local v32           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .end local v33           #paint:Landroid/graphics/Paint;
    .end local v37           #res1:Landroid/content/res/Resources;
    :goto_2
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 788
    .restart local v32       #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_6
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    move-object/from16 v0, v32

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_7

    check-cast v32, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local v32           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    if-eqz v3, :cond_7

    .line 790
    new-instance v33, Landroid/graphics/Paint;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Paint;-><init>()V

    .line 791
    .restart local v33       #paint:Landroid/graphics/Paint;
    const/16 v3, 0xff

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 792
    move/from16 v0, v44

    int-to-float v3, v0

    move/from16 v0, v45

    int-to-float v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 794
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 795
    .restart local v37       #res1:Landroid/content/res/Resources;
    const v3, 0x7f02025d

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 796
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 797
    .local v21, disableIcon:Landroid/graphics/Bitmap;
    move/from16 v0, v44

    int-to-float v3, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v6, v4

    int-to-float v4, v4

    mul-float v4, v4, v41

    add-float/2addr v3, v4

    move/from16 v0, v45

    int-to-float v4, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v7, v5

    int-to-float v5, v5

    mul-float v5, v5, v40

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 798
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 799
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 801
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v21           #disableIcon:Landroid/graphics/Bitmap;
    .end local v33           #paint:Landroid/graphics/Paint;
    .end local v37           #res1:Landroid/content/res/Resources;
    :cond_7
    move/from16 v0, v44

    int-to-float v3, v0

    move/from16 v0, v45

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 805
    .end local v6           #originW:I
    .end local v7           #originH:I
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v25           #folder_icon_size_scaled:F
    .end local v39           #s:Landroid/graphics/Bitmap;
    .end local v40           #scaleH:F
    .end local v41           #scaleW:F
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/baidu/launcher/data/item/IFolderInfo;->isPreset()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 806
    invoke-interface/range {p1 .. p1}, Lcom/baidu/launcher/data/item/IFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v43

    .line 808
    .local v43, title:Ljava/lang/String;
    const-string v3, "\u5de5\u5177"

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 809
    const v3, 0x7f020157

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 819
    .local v31, indicator:Landroid/graphics/drawable/Drawable;
    :goto_3
    if-eqz v31, :cond_9

    .line 820
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 821
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 825
    .end local v31           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v43           #title:Ljava/lang/String;
    :cond_9
    if-eqz p3, :cond_e

    .line 826
    new-instance v19, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    .line 831
    .local v19, d:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    :goto_4
    return-object v19

    .line 810
    .end local v19           #d:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    .restart local v43       #title:Ljava/lang/String;
    :cond_a
    const-string v3, "\u6e38\u620f"

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 811
    const v3, 0x7f020153

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .restart local v31       #indicator:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 812
    .end local v31           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_b
    const-string v3, "\u793e\u4ea4"

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 813
    const v3, 0x7f020156

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .restart local v31       #indicator:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 814
    .end local v31           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_c
    const-string v3, "\u5f71\u97f3"

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 815
    const v3, 0x7f020154

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .restart local v31       #indicator:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 817
    .end local v31           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_d
    const v3, 0x7f02014e

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .restart local v31       #indicator:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 828
    .end local v31           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v43           #title:Ljava/lang/String;
    :cond_e
    new-instance v19, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v19       #d:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    goto :goto_4
.end method

.method public static getHideIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 532
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->hide:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 534
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->hide:Landroid/graphics/drawable/Drawable;

    .line 536
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->hide:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private static getIconCellX(II)I
    .locals 1
    .parameter "x"
    .parameter "size"

    .prologue
    .line 836
    rem-int v0, p0, p1

    return v0
.end method

.method private static getIconCellY(II)I
    .locals 1
    .parameter "x"
    .parameter "size"

    .prologue
    .line 840
    div-int v0, p0, p1

    return v0
.end method

.method public static getSmallAddBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 556
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->smallAddBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 558
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->smallAddBackground:Landroid/graphics/drawable/Drawable;

    .line 559
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->smallAddBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 561
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->smallAddBackground:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public static getSmallBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 547
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->smallBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 548
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 549
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->smallBackground:Landroid/graphics/drawable/Drawable;

    .line 550
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->smallBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 552
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->smallBackground:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public static getwidgetCell(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"

    .prologue
    .line 848
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->widgetCell:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 849
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 850
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0202c7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->widgetCell:Landroid/graphics/Bitmap;

    .line 852
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->widgetCell:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public static getwidgetCellHighlight(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"

    .prologue
    .line 856
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->widgetCellHighlight:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 857
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 858
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0202c8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/Utilities;->widgetCellHighlight:Landroid/graphics/Bitmap;

    .line 860
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/utils/Utilities;->widgetCellHighlight:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 397
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 398
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 400
    .local v1, density:F
    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowHeight:I

    .line 401
    const v4, 0x7f0b0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/baidu/launcher/utils/Utilities;->sDockIconShadowGap:I

    .line 404
    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/baidu/launcher/utils/Utilities;->sIconHeight:I

    sput v4, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    .line 406
    sget v4, Lcom/baidu/launcher/utils/Utilities;->sIconWidth:I

    sput v4, Lcom/baidu/launcher/utils/Utilities;->sIconTextureHeight:I

    sput v4, Lcom/baidu/launcher/utils/Utilities;->sIconTextureWidth:I

    .line 407
    const v4, 0x7f0b002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    add-double/2addr v4, v6

    double-to-int v4, v4

    sput v4, Lcom/baidu/launcher/utils/Utilities;->sIconSystemSize:I

    .line 409
    const v4, 0x7f0b0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/baidu/launcher/utils/Utilities;->ICON_L_PADDING:I

    .line 410
    const v4, 0x7f0b0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/baidu/launcher/utils/Utilities;->ICON_L_SPACING:I

    .line 412
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 413
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 415
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 418
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 419
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 420
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 421
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 423
    invoke-static {p0}, Lcom/baidu/launcher/utils/Utilities;->resetCachedIcons(Landroid/content/Context;)V

    .line 424
    return-void
.end method

.method public static isChinese(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 952
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 954
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 960
    :cond_0
    const/4 v1, 0x1

    .line 963
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 902
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageInsalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 938
    if-nez p1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v3

    .line 940
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 941
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 942
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 943
    const/4 v3, 0x1

    goto :goto_0

    .line 945
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 946
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v2, 0x1

    .line 701
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 703
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 705
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 703
    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 704
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 705
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isTopActivity(Landroid/content/Context;Lcom/baidu/launcher/data/item/ListAppInfo;)Z
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 1016
    const/4 v3, 0x0

    .line 1017
    .local v3, topActivityClassName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1018
    .local v1, f:Landroid/content/ComponentName;
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object v0, v4

    check-cast v0, Landroid/app/ActivityManager;

    .line 1020
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1021
    .local v2, runningTaskInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    .line 1022
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1023
    iget-object v4, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1025
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 908
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 910
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 911
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 913
    .local v2, messageDigest:[B
    invoke-static {v2}, Lcom/baidu/launcher/utils/Utilities;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 918
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #messageDigest:[B
    :goto_0
    return-object v3

    .line 914
    :catch_0
    move-exception v1

    .line 915
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 918
    const-string v3, "NUHC"

    goto :goto_0
.end method

.method public static rescaleBitmapForWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 897
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rescaleBitmapForWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 875
    return-object p1
.end method

.method public static resetCachedIcons(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 428
    .local v1, resources:Landroid/content/res/Resources;
    const/high16 v6, 0x7f0e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 429
    .local v2, useAccessory:Z
    const v6, 0x7f0e0001

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 430
    .local v3, useBg:Z
    if-eqz v2, :cond_1

    move v0, v4

    .line 432
    .local v0, newType:I
    :goto_0
    if-nez v0, :cond_3

    sget v6, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    if-ne v0, v6, :cond_3

    .line 433
    sput-boolean v4, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    .line 521
    :cond_0
    :goto_1
    return-void

    .line 430
    .end local v0           #newType:I
    :cond_1
    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    .line 436
    .restart local v0       #newType:I
    :cond_3
    sget-object v6, Lcom/baidu/launcher/utils/Utilities;->mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

    invoke-virtual {v6}, Lcom/baidu/launcher/utils/Matcher;->clear()V

    .line 437
    sput v0, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    .line 462
    sput-boolean v5, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    .line 463
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 464
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 465
    sput-object v7, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    .line 467
    :cond_4
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 468
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 469
    sput-object v7, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    .line 471
    :cond_5
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    .line 472
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 473
    sput-object v7, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    .line 476
    :cond_6
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 477
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 478
    sput-object v7, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    .line 481
    :cond_7
    sput v0, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    .line 482
    sget v5, Lcom/baidu/launcher/utils/Utilities;->iconBgType:I

    packed-switch v5, :pswitch_data_0

    .line 518
    :cond_8
    :goto_2
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 519
    const v4, 0x7f0201f4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/baidu/launcher/utils/Utilities;->mFolderPic:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 484
    :pswitch_0
    sput-boolean v4, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    .line 485
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

    const v4, 0x7f02003e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/launcher/utils/Matcher;->addBitmapSample(Landroid/graphics/Bitmap;)V

    .line 487
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

    const v4, 0x7f020048

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/launcher/utils/Matcher;->addBitmapSample(Landroid/graphics/Bitmap;)V

    .line 489
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

    const v4, 0x7f020049

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/launcher/utils/Matcher;->addBitmapSample(Landroid/graphics/Bitmap;)V

    .line 491
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

    const v4, 0x7f020041

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/launcher/utils/Matcher;->addBitmapSample(Landroid/graphics/Bitmap;)V

    .line 493
    sget-object v5, Lcom/baidu/launcher/utils/Utilities;->mColorMatcher:Lcom/baidu/launcher/utils/Matcher;

    const v4, 0x7f02003f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/launcher/utils/Matcher;->addBitmapSample(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 500
    :pswitch_1
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_9

    .line 501
    const v4, 0x7f02003c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/baidu/launcher/utils/Utilities;->mAccessoryBg:Landroid/graphics/drawable/Drawable;

    .line 504
    :cond_9
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    .line 505
    const v4, 0x7f020043

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/baidu/launcher/utils/Utilities;->mMaskBg:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 511
    :pswitch_2
    sget-object v4, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    .line 512
    const v4, 0x7f020034

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/baidu/launcher/utils/Utilities;->mBg:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .parameter "buf"

    .prologue
    .line 922
    if-nez p0, :cond_0

    .line 923
    const-string v2, ""

    .line 928
    :goto_0
    return-object v2

    .line 924
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 925
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 926
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/Utilities;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 928
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static trimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 979
    const-string v0, "\u00a0"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateOldVersionToBulletin(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 880
    const-string v4, "preference_screen"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 881
    .local v3, preference:Landroid/content/SharedPreferences;
    const-string v4, "screen_count"

    sget v5, Lcom/baidu/launcher/utils/Utilities;->SCREEN_COUNT:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 882
    .local v2, oldScreenCount:I
    const-string v4, "default_screen"

    sget v5, Lcom/baidu/launcher/utils/Utilities;->DEFAULT_SCREEN:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 883
    .local v1, oldDefaultCount:I
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 884
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/baidu/launcher/utils/Utilities;->SCREEN_COUNT:I

    .line 885
    add-int/lit8 v4, v1, 0x1

    sput v4, Lcom/baidu/launcher/utils/Utilities;->DEFAULT_SCREEN:I

    .line 886
    const-string v4, "screen_count"

    sget v5, Lcom/baidu/launcher/utils/Utilities;->SCREEN_COUNT:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 887
    const-string v4, "default_screen"

    sget v5, Lcom/baidu/launcher/utils/Utilities;->DEFAULT_SCREEN:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 888
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 889
    return-void
.end method
