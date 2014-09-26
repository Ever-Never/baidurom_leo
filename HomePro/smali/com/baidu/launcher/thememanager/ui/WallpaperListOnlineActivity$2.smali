.class Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$2;
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
    .line 111
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$2;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$2;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    const/4 v1, 0x1

    const/16 v2, 0xa

    #calls: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->requestWallpaperList(II)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;II)V

    .line 115
    return-void
.end method
