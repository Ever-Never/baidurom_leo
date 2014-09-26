.class Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;
.super Ljava/lang/Object;
.source "EffectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/effect/EffectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectInfo"
.end annotation


# instance fields
.field mEffectId:I

.field mEffectName:Ljava/lang/String;

.field mEffectThumbNailId:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "resId"
    .parameter "effectId"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;->this$0:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p3, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;->mEffectThumbNailId:I

    .line 39
    iput-object p2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;->mEffectName:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;->mEffectId:I

    .line 41
    return-void
.end method
