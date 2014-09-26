.class Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;
.super Ljava/lang/Object;
.source "WidgetPreviewCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/WidgetPreviewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field private mInfo:Ljava/lang/Object;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/launcher/data/WidgetPreviewCache;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/data/WidgetPreviewCache;Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "v"
    .parameter "info"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->this$0:Lcom/baidu/launcher/data/WidgetPreviewCache;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p3, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mView:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v6, -0x1

    .line 109
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 111
    .local v12, v:Landroid/widget/ImageView;
    const/4 v11, 0x0

    .line 112
    .local v11, tag:Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 113
    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 117
    .end local v11           #tag:Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    if-ne v11, v0, :cond_2

    .line 118
    const/4 v7, 0x0

    .line 119
    .local v7, b:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v0, :cond_3

    .line 120
    iget-object v9, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    check-cast v9, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 121
    .local v9, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->this$0:Lcom/baidu/launcher/data/WidgetPreviewCache;

    iget v1, v9, Lcom/baidu/launcher/data/item/ListWidgetInfo;->previewImage:I

    iget v2, v9, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    iget v3, v9, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    #calls: Lcom/baidu/launcher/data/WidgetPreviewCache;->getWidgetPreview(IIII)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2, v3, v6}, Lcom/baidu/launcher/data/WidgetPreviewCache;->access$000(Lcom/baidu/launcher/data/WidgetPreviewCache;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 128
    .end local v9           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 130
    .local v13, v2:Landroid/widget/ImageView;
    if-eqz v13, :cond_2

    .line 131
    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 133
    .restart local v11       #tag:Ljava/lang/Object;
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    if-ne v11, v0, :cond_2

    .line 134
    move-object v8, v7

    .line 135
    .local v8, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;

    invoke-direct {v0, p0, v8, v13}, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;-><init>(Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 149
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #tag:Ljava/lang/Object;
    .end local v13           #v2:Landroid/widget/ImageView;
    :cond_2
    return-void

    .line 122
    .restart local v7       #b:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    instance-of v0, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_1

    .line 123
    iget-object v14, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;

    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    .line 124
    .local v14, widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->this$0:Lcom/baidu/launcher/data/WidgetPreviewCache;

    #getter for: Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->access$100(Lcom/baidu/launcher/data/WidgetPreviewCache;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v10

    .line 125
    .local v10, span:[I
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->this$0:Lcom/baidu/launcher/data/WidgetPreviewCache;

    iget-object v1, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v2, v14, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, v14, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    #calls: Lcom/baidu/launcher/data/WidgetPreviewCache;->getWidgetPreview(Landroid/content/ComponentName;IIIII)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v6}, Lcom/baidu/launcher/data/WidgetPreviewCache;->access$200(Lcom/baidu/launcher/data/WidgetPreviewCache;Landroid/content/ComponentName;IIIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method
