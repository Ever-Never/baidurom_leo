.class public Lcom/inveno/flyshare/PauseOnScrollListener;
.super Ljava/lang/Object;
.source "PauseOnScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

.field private final externalListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final pauseOnFling:Z

.field private final pauseOnScroll:Z


# direct methods
.method public constructor <init>(Lcom/inveno/flyshare/BitmapUtils;ZZ)V
    .locals 1
    .parameter "bitmapUtils"
    .parameter "pauseOnScroll"
    .parameter "pauseOnFling"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inveno/flyshare/PauseOnScrollListener;-><init>(Lcom/inveno/flyshare/BitmapUtils;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/inveno/flyshare/BitmapUtils;ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "bitmapUtils"
    .parameter "pauseOnScroll"
    .parameter "pauseOnFling"
    .parameter "customListener"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    .line 37
    iput-boolean p2, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->pauseOnScroll:Z

    .line 38
    iput-boolean p3, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->pauseOnFling:Z

    .line 39
    iput-object p4, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 40
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 71
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 44
    packed-switch p2, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 62
    :cond_1
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    invoke-virtual {v0}, Lcom/inveno/flyshare/BitmapUtils;->resumeTasks()V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-boolean v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->pauseOnScroll:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    invoke-virtual {v0}, Lcom/inveno/flyshare/BitmapUtils;->pauseTasks()V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-boolean v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->pauseOnFling:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/inveno/flyshare/PauseOnScrollListener;->bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    invoke-virtual {v0}, Lcom/inveno/flyshare/BitmapUtils;->pauseTasks()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
