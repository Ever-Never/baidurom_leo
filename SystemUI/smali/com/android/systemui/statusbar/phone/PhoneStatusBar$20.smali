.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$stub:Landroid/view/ViewStub;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewStub;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->val$stub:Landroid/view/ViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2079
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->val$stub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 2081
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2087
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2094
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2095
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2096
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCling:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2098
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClingShown:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2099
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2100
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "shown_quick_settings_help"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 2105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 2107
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSuppressStatusBarDrags:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2108
    return-void
.end method
