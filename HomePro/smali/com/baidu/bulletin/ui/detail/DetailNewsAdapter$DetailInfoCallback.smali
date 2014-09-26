.class Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;
.super Ljava/lang/Object;
.source "DetailNewsAdapter.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailInfoCallback"
.end annotation


# instance fields
.field private mPos:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->mView:Landroid/view/View;

    .line 246
    iput p3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->mPos:I

    .line 247
    return-void
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->mPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onNewsDetailCallback(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    if-nez p2, :cond_1

    .line 252
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContainerViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$500(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$1;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 278
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContainerViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$500(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$2;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$2;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContainerViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$500(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$3;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$3;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
