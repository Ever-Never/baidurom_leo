.class Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$1;
.super Ljava/lang/Object;
.source "WallpaperOnlineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #calls: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->requestWallpaperCategoryList()V
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)V

    .line 82
    return-void
.end method
