.class Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;
.super Ljava/lang/Object;
.source "EffectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/effect/EffectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectHolder"
.end annotation


# instance fields
.field mEffectId:I

.field mEffectNameTextView:Landroid/widget/TextView;

.field mEffectThumbNailView:Landroid/widget/ImageView;

.field mMarkView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Lcom/baidu/launcher/ui/effect/EffectListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)V

    return-void
.end method
