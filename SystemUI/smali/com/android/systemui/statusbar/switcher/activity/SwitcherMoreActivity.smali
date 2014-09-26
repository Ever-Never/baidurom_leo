.class public Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;
.super Landroid/app/Activity;
.source "SwitcherMoreActivity.java"


# instance fields
.field private mHolder:Lcom/android/systemui/statusbar/switcher/activity/Holder;

.field private mScorller:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v3, 0x7f040031

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->setContentView(I)V

    .line 23
    const v3, 0x7f0900c1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/switcher/activity/Holder;

    iput-object v3, p0, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->mHolder:Lcom/android/systemui/statusbar/switcher/activity/Holder;

    .line 24
    const v3, 0x7f0900c0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->mScorller:Landroid/widget/ScrollView;

    .line 25
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->mHolder:Lcom/android/systemui/statusbar/switcher/activity/Holder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->mScorller:Landroid/widget/ScrollView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->setScroller(Landroid/widget/ScrollView;)V

    .line 26
    const v3, 0x7f0900c2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 27
    .local v1, layout:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->mHolder:Lcom/android/systemui/statusbar/switcher/activity/Holder;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->setFakedDragViewHolder(Landroid/widget/LinearLayout;)V

    .line 29
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    int-to-float v2, v3

    .line 30
    .local v2, pagingTouchSlop:F
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->mHolder:Lcom/android/systemui/statusbar/switcher/activity/Holder;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->setPagingTouchSlop(F)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, bar:Landroid/app/ActionBar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 35
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;->finish()V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    return-void
.end method
