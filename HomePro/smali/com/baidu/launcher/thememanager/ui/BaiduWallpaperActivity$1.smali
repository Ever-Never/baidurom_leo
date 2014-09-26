.class Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$1;
.super Ljava/lang/Object;
.source "BaiduWallpaperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, pickWallpaper:Landroid/content/Intent;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, chooser:Landroid/content/Intent;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
