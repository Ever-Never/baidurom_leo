.class Lcom/baidu/launcher/ui/homeview/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;->updateCalendarIcon(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

.field final synthetic val$cell:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic val$icon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5255
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$8;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$8;->val$cell:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$8;->val$icon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5258
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$8;->val$cell:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 5259
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$8;->val$cell:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v6, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5260
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 5261
    .local v4, tag:Ljava/lang/Object;
    instance-of v6, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v6, :cond_1

    move-object v2, v4

    .line 5262
    check-cast v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 5263
    .local v2, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v6, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 5264
    sget-object v6, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    iget-object v7, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5265
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$8;->val$icon:Landroid/graphics/Bitmap;

    iput-object v6, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 5266
    instance-of v6, v5, Lcom/baidu/launcher/ui/common/BubbleTextView;

    if-eqz v6, :cond_0

    .line 5267
    check-cast v5, Lcom/baidu/launcher/ui/common/BubbleTextView;

    .end local v5           #v:Landroid/view/View;
    new-instance v6, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$8;->val$icon:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v8, v6, v8, v8}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5258
    .end local v2           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5271
    .restart local v5       #v:Landroid/view/View;
    :cond_1
    instance-of v6, v4, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-eqz v6, :cond_0

    move-object v0, v4

    .line 5272
    check-cast v0, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 5273
    .local v0, folder:Lcom/baidu/launcher/data/item/IFolderInfo;
    invoke-interface {v0}, Lcom/baidu/launcher/data/item/IFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 5274
    .local v2, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    instance-of v6, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v6, :cond_2

    move-object v6, v2

    .line 5275
    check-cast v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v6, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_2

    sget-object v7, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    move-object v6, v2

    check-cast v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v6, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5276
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$8;->val$icon:Landroid/graphics/Bitmap;

    iput-object v6, v2, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 5280
    .end local v2           #info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_3
    instance-of v6, v5, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-eqz v6, :cond_0

    .line 5281
    check-cast v5, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .end local v5           #v:Landroid/view/View;
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/folder/FolderIcon;->updateFolderIcon()V

    goto :goto_1

    .line 5285
    .end local v0           #folder:Lcom/baidu/launcher/data/item/IFolderInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #tag:Ljava/lang/Object;
    :cond_4
    return-void
.end method
