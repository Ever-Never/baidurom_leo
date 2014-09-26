.class public Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "UserFeedBackFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;
    }
.end annotation


# static fields
.field private static final NUM_ITEMS:I = 0x2

.field public static final POSITION_COMMON_PROBLEM:I = 0x1

.field public static final POSITION_FEEDBACK:I


# instance fields
.field private mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

.field private mFeedBackFragment:Lcom/baidu/launcher/feedback/FeedBackFragment;

.field private mPosition:I

.field private mTabsAdapter:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;

.field private mTvCommonProblem:Landroid/widget/TextView;

.field private mTvFeedback:Landroid/widget/TextView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mPosition:I

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvCommonProblem:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvFeedback:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Lcom/baidu/launcher/feedback/CommonQuestionFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Lcom/baidu/launcher/feedback/CommonQuestionFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Lcom/baidu/launcher/feedback/FeedBackFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mFeedBackFragment:Lcom/baidu/launcher/feedback/FeedBackFragment;

    return-object v0
.end method

.method static synthetic access$502(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;Lcom/baidu/launcher/feedback/FeedBackFragment;)Lcom/baidu/launcher/feedback/FeedBackFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mFeedBackFragment:Lcom/baidu/launcher/feedback/FeedBackFragment;

    return-object p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "aSavedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->requestWindowFeature(I)Z

    .line 42
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvFeedback:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvFeedback:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;-><init>(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvCommonProblem:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvCommonProblem:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;-><init>(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;-><init>(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    new-instance v0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;

    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;-><init>(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTabsAdapter:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;

    .line 107
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTabsAdapter:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 118
    return-void
.end method
