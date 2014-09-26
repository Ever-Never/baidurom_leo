.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 2695
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 2698
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mEditMode:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mEditMode:Z

    .line 2700
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mEditMode:Z

    if-ne v0, v1, :cond_2

    .line 2702
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    sget-boolean v1, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mEditMode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->enableEditMode(Z)V

    .line 2716
    :cond_0
    :goto_1
    return-void

    .line 2698
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2707
    :cond_2
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f0200ae

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->saveSwitchConfig()V

    .line 2709
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    sget-boolean v1, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mEditMode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->enableEditMode(Z)V

    .line 2710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->hideTip(I)V

    .line 2711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->hideTip(I)V

    .line 2712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTipDrag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTipDrag:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
