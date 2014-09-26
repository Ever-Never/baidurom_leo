.class Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;
.super Ljava/lang/Object;
.source "EffectListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/effect/EffectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Lcom/baidu/launcher/ui/effect/EffectListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;

    .line 138
    .local v0, holder:Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;
    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    #getter for: Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mDefaultPreference:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->access$200(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "scroll_type"

    iget v4, v0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectId:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    iget v3, v0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectId:I

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->setCurrentEffectId(I)V

    .line 140
    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->notifyDataSetChanged()V

    .line 141
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    #getter for: Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->access$300(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/baidu/launcher/app/Launcher;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    #getter for: Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->access$300(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    #getter for: Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->access$300(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    #getter for: Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->access$300(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0208

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method
