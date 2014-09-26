.class public Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;
.super Landroid/os/AsyncTask;
.source "ApplyWallpaperTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;

.field private mContext:Landroid/content/Context;

.field private mItemTyple:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;)V
    .locals 1
    .parameter "aContext"
    .parameter "aTyple"
    .parameter "aCallBack"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mItemTyple:I

    .line 34
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mItemTyple:I

    .line 36
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mCallBack:Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;)V
    .locals 1
    .parameter "aContext"
    .parameter "aCallBack"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mItemTyple:I

    .line 29
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mCallBack:Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 51
    .local v3, success:Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 52
    .local v0, bitmap:Landroid/graphics/Bitmap;
    aget-object v2, p1, v4

    .line 53
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, file:Ljava/io/File;
    :try_start_0
    iget v4, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mItemTyple:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 58
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->restoreDefaultWallpaper(Landroid/content/Context;)V

    .line 59
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 76
    :cond_0
    :goto_0
    return-object v3

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    :cond_2
    if-eqz v0, :cond_0

    .line 66
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/baidu/launcher/thememanager/util/Utils;->setWallpaperFromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 67
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 72
    :catch_0
    move-exception v4

    goto :goto_0

    .line 70
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0116

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 92
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mCallBack:Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;

    invoke-interface {v2}, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;->onApplyFinish()V

    .line 94
    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0118

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0117

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 42
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 43
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ubc/UBC;->reportWallpaperUse(Landroid/content/Context;)V

    .line 45
    return-void
.end method
