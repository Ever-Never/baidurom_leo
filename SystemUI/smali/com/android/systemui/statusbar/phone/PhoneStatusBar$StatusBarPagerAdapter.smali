.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$StatusBarPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusBarPagerAdapter"
.end annotation


# instance fields
.field private mPageCount:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 3383
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$StatusBarPagerAdapter;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 3384
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$StatusBarPagerAdapter;->mPageCount:I

    .line 3385
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 3405
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 3406
    .local v0, v:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3407
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 3411
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$StatusBarPagerAdapter;->mPageCount:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 3389
    const/4 v0, 0x0

    .line 3390
    .local v0, switchPageView:Landroid/view/View;
    if-nez p2, :cond_1

    .line 3391
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$StatusBarPagerAdapter;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040024

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3397
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$StatusBarPagerAdapter;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setupPagerViews(ILandroid/view/View;)V
    invoke-static {v1, p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/View;)V

    .line 3399
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3400
    return-object v0

    .line 3393
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 3394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$StatusBarPagerAdapter;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040029

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 3416
    check-cast p2, Landroid/view/View;

    .end local p2
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
