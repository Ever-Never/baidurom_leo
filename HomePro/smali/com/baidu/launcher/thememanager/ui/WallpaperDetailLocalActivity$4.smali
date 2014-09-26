.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$4;
.super Ljava/lang/Object;
.source "WallpaperDetailLocalActivity.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->applyWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$4;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyFinish()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$4;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mSetWallpaperBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    return-void
.end method
