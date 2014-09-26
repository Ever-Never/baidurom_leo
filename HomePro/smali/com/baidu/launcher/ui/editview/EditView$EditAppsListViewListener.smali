.class Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/editview/EditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditAppsListViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditView;

.field private toast_full:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;)V
    .locals 3
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->toast_full:Landroid/widget/Toast;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;Lcom/baidu/launcher/ui/editview/EditView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 11
    .parameter "view"
    .parameter "item"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$800(Lcom/baidu/launcher/ui/editview/EditView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 412
    :cond_0
    instance-of v0, p1, Lcom/baidu/launcher/ui/editview/PagedViewWidget;

    if-eqz v0, :cond_2

    const v0, 0x7f08011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 419
    .local v1, v:Landroid/view/View;
    :goto_1
    const/4 v0, 0x5

    new-array v7, v0, [I

    .line 420
    .local v7, desLoc:[I
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$900(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v9

    .line 421
    .local v9, thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getCurrentDropPage()I

    move-result v2

    #setter for: Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$1002(Lcom/baidu/launcher/ui/editview/EditView;I)I

    .line 422
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$900(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$1000(Lcom/baidu/launcher/ui/editview/EditView;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v7, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getDestopPosition(Landroid/view/View;Ljava/lang/Object;[II)F

    move-result v4

    .line 425
    .local v4, scale:F
    instance-of v0, p2, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_1

    move-object v8, p2

    .line 426
    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    .line 427
    .local v8, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget v5, v7, v5

    const/4 v6, 0x1

    aget v6, v7, v6

    const/4 v10, 0x2

    aget v10, v7, v10

    invoke-static {v0, v2, v5, v6, v10}, Lcom/baidu/launcher/ubc/UBCMetric;->addWidget(Landroid/content/Context;Landroid/content/ComponentName;III)V

    .line 429
    .end local v8           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1000(Lcom/baidu/launcher/ui/editview/EditView;)I

    move-result v0

    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-lt v0, v2, :cond_3

    .line 430
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->toast_full:Landroid/widget/Toast;

    const v2, 0x7f0c02b5

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 431
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->toast_full:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .end local v4           #scale:F
    .end local v7           #desLoc:[I
    .end local v9           #thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    :cond_2
    move-object v1, p1

    .line 412
    goto :goto_1

    .line 434
    .restart local v1       #v:Landroid/view/View;
    .restart local v4       #scale:F
    .restart local v7       #desLoc:[I
    .restart local v9       #thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->toast_full:Landroid/widget/Toast;

    const v2, 0x7f0c02b2

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 437
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->toast_full:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$802(Lcom/baidu/launcher/ui/editview/EditView;Z)Z

    .line 440
    new-instance v3, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;

    invoke-direct {v3, p0, v1, p2, v7}, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;-><init>(Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;Landroid/view/View;Ljava/lang/Object;[I)V

    .line 455
    .local v3, dropRunnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x3

    aget v6, v7, v6

    aput v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aget v6, v7, v6

    aput v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;[ILjava/lang/Runnable;FZZ)V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 8
    .parameter "view"
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 463
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    .line 467
    .local v0, dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    move-object v1, p1

    .line 468
    .local v1, v:Landroid/view/View;
    instance-of v2, p1, Lcom/baidu/launcher/ui/editview/PagedViewWidget;

    if-eqz v2, :cond_0

    .line 469
    const v2, 0x7f08011c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move v5, v4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    .line 476
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;
    invoke-static {v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$900(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateStatus(Ljava/lang/Object;Z)V

    .line 478
    return v6
.end method

.method public onPageTypeChanged(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 391
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$700(Lcom/baidu/launcher/ui/editview/EditView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 392
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$700(Lcom/baidu/launcher/ui/editview/EditView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 393
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    const/4 v3, 0x0

    #calls: Lcom/baidu/launcher/ui/editview/EditView;->setCurrentTab(Landroid/view/View;Z)V
    invoke-static {v2, v1, v3}, Lcom/baidu/launcher/ui/editview/EditView;->access$500(Lcom/baidu/launcher/ui/editview/EditView;Landroid/view/View;Z)V

    .line 397
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method
