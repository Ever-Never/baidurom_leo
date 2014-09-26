.class Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;
.super Ljava/lang/Object;
.source "WallpaperLocalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

.field final synthetic val$aItem_path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;->val$aItem_path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "currentItem"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;->val$aItem_path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    iget-object v1, v1, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    iget-object v1, v1, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f04000b

    const v3, 0x7f04000a

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 174
    return-void
.end method
