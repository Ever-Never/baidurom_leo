.class Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;
.super Landroid/os/AsyncTask;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/animation/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TASK_GET_HOME:I = 0x1

.field public static final TASK_GET_WALLPAPER:I = 0x2

.field public static final TASK_OPEN_FOLDER:I

.field private static mHomeViewBM:Landroid/graphics/Bitmap;

.field private static mWallpaperBM:Landroid/graphics/Bitmap;


# instance fields
.field private mHomeViewTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

.field private mWallpaperTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/animation/Choreographer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 764
    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 780
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 766
    :pswitch_0
    new-instance v0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    .line 768
    new-instance v0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    goto :goto_0

    .line 772
    :pswitch_1
    aget-object v0, p1, v4

    check-cast v0, Lcom/baidu/launcher/ui/homeview/HomeView;

    #calls: Lcom/baidu/launcher/ui/animation/Choreographer;->getHomeViewBitmap(Lcom/baidu/launcher/ui/homeview/HomeView;)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewBM:Landroid/graphics/Bitmap;

    .line 773
    new-array v0, v4, [Ljava/lang/Object;

    aget-object v1, p1, v4

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 776
    :pswitch_2
    aget-object v0, p1, v4

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/baidu/launcher/ui/animation/Choreographer;->getWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$400(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperBM:Landroid/graphics/Bitmap;

    .line 777
    new-array v0, v4, [Ljava/lang/Object;

    aget-object v1, p1, v4

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 795
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 796
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->cancel(Z)Z

    .line 798
    iput-object v1, p0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->cancel(Z)Z

    .line 802
    iput-object v1, p0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    .line 804
    :cond_1
    sput-object v1, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewBM:Landroid/graphics/Bitmap;

    .line 805
    sput-object v1, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperBM:Landroid/graphics/Bitmap;

    .line 806
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 785
    sget-object v0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewBM:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperBM:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 786
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewBM:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperBM:Landroid/graphics/Bitmap;

    #calls: Lcom/baidu/launcher/ui/animation/Choreographer;->mergeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$500(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    #calls: Lcom/baidu/launcher/ui/animation/Choreographer;->showFolderBlurBg(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$600(Landroid/graphics/drawable/Drawable;)V

    .line 788
    sput-object v3, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mHomeViewBM:Landroid/graphics/Bitmap;

    .line 789
    sput-object v3, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->mWallpaperBM:Landroid/graphics/Bitmap;

    .line 791
    :cond_0
    return-void
.end method
