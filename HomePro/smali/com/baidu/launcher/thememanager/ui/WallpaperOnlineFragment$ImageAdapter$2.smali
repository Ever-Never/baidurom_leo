.class Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;
.super Ljava/lang/Object;
.source "WallpaperOnlineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$selectedCategoryName:Ljava/lang/String;

.field final synthetic val$wallpaperCount:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;->val$selectedCategoryName:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;->val$wallpaperCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v0, i:Landroid/content/Intent;
    const-string v1, "currentCategory"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;->val$selectedCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "wallpaperCount"

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;->val$wallpaperCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    iget-object v1, v1, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->startActivity(Landroid/content/Intent;)V

    .line 219
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    iget-object v1, v1, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f04000b

    const v3, 0x7f04000a

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 220
    return-void
.end method
