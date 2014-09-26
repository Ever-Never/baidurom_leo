.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$1;
.super Ljava/lang/Object;
.source "WallpaperDetailOnlineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->initLayout()V
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
    .line 117
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->finish()V

    .line 121
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    const v1, 0x7f04000c

    const v2, 0x7f04000d

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->overridePendingTransition(II)V

    .line 122
    return-void
.end method
