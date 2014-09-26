.class public Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;
.super Landroid/app/Activity;
.source "VirtualKeyGuideActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x400

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 27
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040042

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 30
    .local v3, layout:Landroid/view/ViewGroup;
    const v4, 0x7f09010c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 31
    .local v1, image:Landroid/widget/ImageView;
    const v4, 0x7f0202d5

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 32
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 33
    .local v0, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 35
    new-instance v4, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity$1;-><init>(Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;->setContentView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;->finish()V

    .line 49
    return-void
.end method
