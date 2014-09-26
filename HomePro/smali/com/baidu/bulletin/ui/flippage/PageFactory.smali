.class public Lcom/baidu/bulletin/ui/flippage/PageFactory;
.super Ljava/lang/Object;
.source "PageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/flippage/PageFactory$1;,
        Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;,
        Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;
    }
.end annotation


# static fields
.field private static final MAX_PAGE_COUNT:I = 0x6

.field private static final MIN_PAGE_COUNT:I = 0x3


# instance fields
.field private mActors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mParent:Landroid/view/ViewGroup;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addPage(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
    .locals 1
    .parameter "face"
    .parameter "back"
    .parameter "direction"

    .prologue
    .line 44
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;-><init>(Lcom/baidu/bulletin/ui/flippage/PageFactory;Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    return-object v0
.end method

.method public canFlipMore()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearPages()V
    .locals 2

    .prologue
    .line 48
    :goto_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->disappear()V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public fixPagesZIndex()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->bringToFront()V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    :goto_1
    if-lez v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->bringToFront()V

    .line 86
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 89
    :cond_1
    return-void
.end method

.method public getFlippingPage()Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 67
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->getPage(I)Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    move-result-object v1

    return-object v1
.end method

.method public getOpeningPage()Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 73
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->getPage(I)Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    move-result-object v1

    return-object v1
.end method

.method public getPage(I)Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
    .locals 1
    .parameter "index"

    .prologue
    .line 77
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiFlipping()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutPages(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->layout(IIII)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
