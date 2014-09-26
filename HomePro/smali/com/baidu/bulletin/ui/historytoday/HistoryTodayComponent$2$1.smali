.class Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;
.super Ljava/lang/Object;
.source "HistoryTodayComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;->this$1:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 486
    iget-object v3, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v3, :cond_0

    .line 487
    iget-object v3, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;->this$1:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;

    iget-object v3, v3, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    #getter for: Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->access$400(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 488
    .local v0, historyTodayView:Landroid/view/View;
    const v3, 0x7f0800c7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 489
    .local v2, opImage:Landroid/widget/ImageView;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;->this$1:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;

    iget-object v4, v4, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    #getter for: Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->access$500(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 492
    .end local v0           #historyTodayView:Landroid/view/View;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #opImage:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
