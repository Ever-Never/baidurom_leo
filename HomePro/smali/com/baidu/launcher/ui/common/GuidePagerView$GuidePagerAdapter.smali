.class public Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GuidePagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GuidePagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidePagerAdapter"
.end annotation


# instance fields
.field public mListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/common/GuidePagerView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, aListViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;->this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;->mListViews:Ljava/util/List;

    .line 186
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "aView"
    .parameter "aIndex"
    .parameter "aObj"

    .prologue
    .line 190
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "aView"
    .parameter "aIndex"

    .prologue
    .line 200
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 201
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "aView"
    .parameter "aObj"

    .prologue
    .line 206
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
