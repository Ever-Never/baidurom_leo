.class Lcom/baidu/launcher/ui/editview/EditAppsListView$2;
.super Ljava/lang/Object;
.source "EditAppsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditAppsListView;->updateCalendarIcon(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

.field final synthetic val$icon:Landroid/graphics/Bitmap;

.field final synthetic val$layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditAppsListView;Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;->val$layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    iput-object p3, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;->val$icon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1216
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;->val$layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1217
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;->val$layout:Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    invoke-virtual {v4, v1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1218
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1219
    .local v2, tag:Ljava/lang/Object;
    instance-of v4, v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 1220
    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1221
    .local v0, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 1222
    sget-object v4, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1224
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;->val$icon:Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1225
    instance-of v4, v3, Lcom/baidu/launcher/ui/common/BubbleTextView;

    if-eqz v4, :cond_0

    .line 1226
    check-cast v3, Lcom/baidu/launcher/ui/common/ActionTextView;

    .end local v3           #v:Landroid/view/View;
    new-instance v4, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$2;->val$icon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6, v4, v6, v6}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1216
    .end local v0           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1237
    .end local v2           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method
