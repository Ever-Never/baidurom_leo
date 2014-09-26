.class public interface abstract Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/logic/UIController$IAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/logic/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDetialAction"
.end annotation


# static fields
.field public static final CHANNELID_BAIKE:I = 0x1

.field public static final CHANNELID_NEWS:I = 0x0

.field public static final CHANNELID_TIEBA:I = 0x2


# virtual methods
.method public abstract getDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method
