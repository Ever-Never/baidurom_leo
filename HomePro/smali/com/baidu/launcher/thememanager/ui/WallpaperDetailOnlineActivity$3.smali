.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$3;
.super Ljava/lang/Object;
.source "WallpaperDetailOnlineActivity.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->setWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$3;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyFinish()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$3;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    return-void
.end method
