.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$2;
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
    .line 127
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$2;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$2;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->setWallpaper()V

    .line 131
    return-void
.end method
