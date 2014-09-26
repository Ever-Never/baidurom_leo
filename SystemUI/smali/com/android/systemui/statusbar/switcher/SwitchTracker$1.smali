.class Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;
.super Landroid/os/AsyncTask;
.source "SwitchTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/SwitchTracker;->requestStateChange(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newState:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/SwitchTracker;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->val$newState:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->val$newState:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->setState(Landroid/content/Context;I)V

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->updateStatus(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
