.class Lcom/android/systemui/statusbar/phone/QuickSettings$32;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$32;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$32;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$32;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$32;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$32;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->removeAllBrightnessDialogCallbacks()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 799
    return-void
.end method
