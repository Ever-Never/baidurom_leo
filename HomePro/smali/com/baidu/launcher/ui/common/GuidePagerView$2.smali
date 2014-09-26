.class Lcom/baidu/launcher/ui/common/GuidePagerView$2;
.super Ljava/lang/Object;
.source "GuidePagerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/common/GuidePagerView;->prepareGuidePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/GuidePagerView;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$2;->this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$2;->this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/common/GuidePagerView;->getCurrentItem()I

    move-result v0

    .line 154
    .local v0, position:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$2;->this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;

    #getter for: Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/GuidePagerView;->access$100(Lcom/baidu/launcher/ui/common/GuidePagerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$2;->this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;

    #getter for: Lcom/baidu/launcher/ui/common/GuidePagerView;->mLauncher:Lcom/baidu/launcher/app/Launcher;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/GuidePagerView;->access$000(Lcom/baidu/launcher/ui/common/GuidePagerView;)Lcom/baidu/launcher/app/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/app/Launcher;->showGuidePager(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 164
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 169
    return-void
.end method
