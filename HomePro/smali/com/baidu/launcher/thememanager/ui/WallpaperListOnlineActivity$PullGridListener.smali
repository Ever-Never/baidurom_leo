.class Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;
.super Ljava/lang/Object;
.source "WallpaperListOnlineActivity.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullGridListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(I)V
    .locals 3
    .parameter "tab_index"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->current_page:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    #calls: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->requestWallpaperList(II)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;II)V

    .line 229
    return-void
.end method
