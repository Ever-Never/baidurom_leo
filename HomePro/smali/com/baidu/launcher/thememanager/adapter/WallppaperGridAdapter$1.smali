.class Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;
.super Ljava/lang/Object;
.source "WallppaperGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

.field final synthetic val$aCurrentCategory:Ljava/lang/String;

.field final synthetic val$aCurrentIndex:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->this$0:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    iput p2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->val$aCurrentIndex:I

    iput-object p3, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->val$aCurrentCategory:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->this$0:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    #getter for: Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->access$000(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "currentIndex"

    iget v2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->val$aCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v1, "currentCategory"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->val$aCurrentCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "currentWallpaperList"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->this$0:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    #getter for: Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->all_data:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->access$100(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->this$0:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    #getter for: Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->access$000(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;->this$0:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    #getter for: Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->access$000(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f04000b

    const v3, 0x7f04000a

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 136
    return-void
.end method
