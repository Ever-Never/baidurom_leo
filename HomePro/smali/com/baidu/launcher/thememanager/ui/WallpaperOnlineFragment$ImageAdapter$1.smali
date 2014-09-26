.class Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$1;
.super Ljava/lang/Object;
.source "WallpaperOnlineFragment.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

.field final synthetic val$txt_tick:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$1;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$1;->val$txt_tick:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$1;->val$txt_tick:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    return-void
.end method
