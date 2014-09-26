.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;
.super Landroid/database/ContentObserver;
.source "WallpaperDetailOnlineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThemeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    .line 294
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 295
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 300
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mProgress:[I
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)I

    move-result v4

    aget v3, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/launcher/thememanager/util/Utils;->changeWallpaperButtonState(Landroid/content/Context;Landroid/widget/Button;Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;I)V

    .line 301
    return-void
.end method
