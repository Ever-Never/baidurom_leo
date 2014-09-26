.class Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$1;
.super Ljava/lang/Object;
.source "WallpaperListOnlineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->finish()V

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    const v1, 0x7f04000c

    const v2, 0x7f04000d

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->overridePendingTransition(II)V

    .line 100
    return-void
.end method
