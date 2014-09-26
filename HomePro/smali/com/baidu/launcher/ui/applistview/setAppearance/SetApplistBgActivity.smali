.class public Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;
.super Landroid/app/Activity;
.source "SetApplistBgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CROPIMAGE_TAG:I = 0x2

.field private static final GALARY_TAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SetApplistBgActivity"


# instance fields
.field private mAlphaText:Landroid/widget/TextView;

.field private mBgPreview:Landroid/widget/ImageView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mPreference:Landroid/content/SharedPreferences;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    .line 57
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mAlphaText:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 59
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->updateAlpha(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mAlphaText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->gotoGallary()V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->setBackgroundPreview()V

    return-void
.end method

.method private gotoGallary()V
    .locals 3

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method

.method private selectBgDialog()V
    .locals 5

    .prologue
    .line 226
    const/4 v0, 0x1

    .line 227
    .local v0, checkedId:I
    sget-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    if-eqz v2, :cond_1

    .line 228
    const/4 v0, 0x0

    .line 232
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x1030132

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0c0257

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070003

    new-instance v4, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$4;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$4;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00b7

    new-instance v4, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$3;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$3;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 260
    .local v1, selectImageDlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f020424

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 261
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 262
    return-void

    .line 229
    .end local v1           #selectImageDlg:Landroid/app/AlertDialog;
    :cond_1
    sget-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    if-eqz v2, :cond_0

    .line 230
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setBackgroundPreview()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 103
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    if-eqz v9, :cond_1

    .line 104
    sget-object v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->applistBackground:Ljava/lang/String;

    invoke-static {v9}, Lcom/baidu/launcher/utils/Utilities;->getApplistBG(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 105
    .local v3, bgDrawble:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 106
    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    mul-int/lit16 v9, v9, 0xff

    div-int/lit8 v6, v9, 0x64

    .line 107
    .local v6, color:I
    rsub-int v9, v6, 0xff

    invoke-static {v9, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 108
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .end local v3           #bgDrawble:Landroid/graphics/drawable/Drawable;
    .end local v6           #color:I
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    if-eqz v9, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 112
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 113
    .local v7, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v1, 0x0

    .line 115
    .local v1, bg:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 121
    .local v2, bgBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 122
    .local v5, bw:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 123
    .local v4, bh:I
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v9, v5, v9

    div-int/lit8 v8, v9, 0x2

    .line 124
    .local v8, left:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v8, v12, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 126
    .end local v1           #bg:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #bgBitmap:Landroid/graphics/Bitmap;
    .end local v4           #bh:I
    .end local v5           #bw:I
    .end local v7           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v8           #left:I
    :cond_2
    iget-object v9, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->getApplistBackgroudDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->APPLISTBG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 116
    .restart local v1       #bg:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7       #displayMetrics:Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private setPicToView(Landroid/content/Intent;)V
    .locals 8
    .parameter "picdata"

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 285
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 286
    .local v3, target:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 288
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    if-eqz v2, :cond_0

    .line 294
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 295
    const/4 v4, 0x0

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    .line 296
    const/4 v4, 0x0

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    .line 297
    const/4 v4, 0x1

    sput-boolean v4, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    .line 298
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "applist_background"

    sget-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "defalut_applist_background"

    sget-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 289
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #target:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 290
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 294
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 295
    const/4 v5, 0x0

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    .line 296
    const/4 v5, 0x0

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    .line 297
    const/4 v5, 0x1

    sput-boolean v5, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    .line 298
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "applist_background"

    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "defalut_applist_background"

    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 301
    :cond_1
    :goto_1
    throw v4

    .line 300
    :catch_1
    move-exception v5

    goto :goto_1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v3       #target:Landroid/net/Uri;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private setSeekbarListener()V
    .locals 2

    .prologue
    .line 132
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 133
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 134
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    :cond_0
    return-void
.end method

.method private startPhotoZoom(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 272
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "circleCrop"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, "aspectX"

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v3, "aspectY"

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v3, "image/jpeg"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method

.method private updateAlpha(I)V
    .locals 5
    .parameter "alpha"

    .prologue
    .line 168
    sput p1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    .line 169
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mAlphaText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mAlphaText:Landroid/widget/TextView;

    const v1, 0x7f0c0256

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applist_alpha"

    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 207
    packed-switch p1, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    return-void

    .line 209
    :pswitch_0
    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 214
    :pswitch_1
    if-eqz p3, :cond_0

    .line 215
    invoke-direct {p0, p3}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->setPicToView(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 190
    const v0, 0x7f04000c

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->overridePendingTransition(II)V

    .line 192
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->selectBgDialog()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x7f08001e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;

    .line 68
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 69
    .local v0, actionBar:Lcom/baidu/launcher/thememanager/view/ExActionBar;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setOperationBar(I)V

    .line 71
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setBackIcon(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0250

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextColor(I)V

    .line 74
    const v2, 0x7f0801c5

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 75
    .local v1, actionBarGroup:Landroid/widget/RelativeLayout;
    const v2, 0x7f0203d4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 76
    const v2, 0x7f08001e

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    .line 77
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->setBackgroundPreview()V

    .line 82
    const v2, 0x7f08001f

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mAlphaText:Landroid/widget/TextView;

    .line 83
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mAlphaText:Landroid/widget/TextView;

    const v3, 0x7f0c0256

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    int-to-float v3, v3

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->setSeekbarListener()V

    .line 88
    const v2, 0x7f080021

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 89
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$1;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$1;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    return-void
.end method
