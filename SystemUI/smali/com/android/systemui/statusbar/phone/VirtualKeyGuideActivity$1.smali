.class Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity$1;
.super Ljava/lang/Object;
.source "VirtualKeyGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity$1;->this$0:Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity$1;->this$0:Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VirtualKeyGuideActivity;->finish()V

    .line 40
    return-void
.end method
